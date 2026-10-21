import requests, json, websocket, time, subprocess

tabs = requests.get("http://localhost:9222/json").json()
tab = next((t for t in tabs if 'bingebang' in t.get('url','')), None)
if not tab:
    print("❌ Open bingebang in Chrome first")
    exit(1)

print(f"✅ Tab: {tab['url'][:80]}\n")

ws = websocket.create_connection(
    tab["webSocketDebuggerUrl"], suppress_origin=True, timeout=30
)

mid = 0
def send(method, params=None):
    global mid
    mid += 1
    ws.send(json.dumps({"id": mid, "method": method, "params": params or {}}))
    return mid

# Ask the video element directly for the current source
js_code = """
(() => {
    const vid = document.querySelector('video');
    if (!vid) return { error: 'no video element found' };
    
    const currentSrc = vid.currentSrc || vid.src || '';
    const videojsPlayer = (typeof videojs !== 'undefined') ? videojs.getPlayer('my-video') : null;
    const vjsSrc = videojsPlayer ? videojsPlayer.currentSrc() : '';

    return {
        currentSrc: currentSrc,
        vjsSrc: vjsSrc,
        videoTagSrc: vid.src
    };
})()
"""

print("[1] Asking Chrome for the current video source...")
cmd_id = send("Runtime.evaluate", {
    "expression": js_code,
    "awaitPromise": True,
    "returnByValue": True
})

result = None
start = time.time()
while time.time() - start < 15:
    try:
        ws.settimeout(1)
        raw = ws.recv()
        msg = json.loads(raw)
        if msg.get("id") == cmd_id:
            result = msg.get("result", {}).get("result", {}).get("value")
            break
    except websocket.WebSocketTimeoutException:
        continue
    except Exception as e:
        print(f"err: {e}")
        break

ws.close()

if not result:
    print("❌ No response from Chrome script.")
    exit(1)

if "error" in result:
    print(f"❌ Error: {result['error']}")
    exit(1)

print("\n🎯 Result from Chrome:")
print(json.dumps(result, indent=2))

# Pick the best URL
m3u8_url = None
for key in ["currentSrc", "vjsSrc", "videoTagSrc"]:
    url = result.get(key, "")
    if url and ".m3u8" in url:
        m3u8_url = url
        break

if not m3u8_url:
    # Maybe it's an mp4, or blob URL
    for key in ["currentSrc", "vjsSrc", "videoTagSrc"]:
        url = result.get(key, "")
        if url and url.startswith('http'):
            m3u8_url = url
            break

if m3u8_url:
    print(f"\n✅ FOUND STREAM URL: {m3u8_url}")
    with open("bingebang_m3u8.txt", "w") as f:
        f.write(m3u8_url)

    print(f"\n[2] Running ffprobe on stream URL...")
    res = subprocess.run(
        ["ffprobe", "-v", "error", "-select_streams", "v:0",
         "-show_entries", "stream=width,height,codec_name",
         "-of", "json", m3u8_url],
        capture_output=True, text=True, timeout=30
    )
    print("\n" + "="*50)
    print("FINAL RESOLUTION DATA:")
    print("="*50)
    print(res.stdout)
else:
    print("\n⚠️ No playable URL found. The video might be using a blob: URL (HLS.js), which means the actual m3u8 is hidden inside the JavaScript player.")
    print("Let's try the network capture again...")
