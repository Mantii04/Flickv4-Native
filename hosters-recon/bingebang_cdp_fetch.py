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

# Execute a fetch inside the browser's context
# This uses Chrome's own cookies, headers, and network stack
js_code = """
(async () => {
    try {
        // 1. Fetch sources
        const srcResp = await fetch('/api/player/sources');
        if (!srcResp.ok) return { error: 'sources failed', status: srcResp.status, text: await srcResp.text() };
        const sources = await srcResp.json();
        
        // 2. Find nashira/markab
        let srcArray = Array.isArray(sources) ? sources : (sources.sources || []);
        let target = null;
        for (const s of srcArray) {
            const name = String(s.name || s.server || '').toLowerCase();
            if (name.includes('nashira') || name.includes('markab')) {
                target = s.src || s.id || s.url;
                break;
            }
        }
        
        if (!target) return { error: 'no nashira/markab', sources: sources };
        
        // 3. Resolve the stream
        const resolveResp = await fetch('/api/player/resolve?src=' + encodeURIComponent(target));
        const resolveData = await resolveResp.json();
        
        return { ok: true, sources: sources, target: target, resolve: resolveData };
    } catch (e) {
        return { error: e.toString() };
    }
})()
"""

print("[1] Asking Chrome to fetch sources and resolve...")
# CDP command to evaluate JS and await the promise
cmd_id = send("Runtime.evaluate", {
    "expression": js_code,
    "awaitPromise": True,
    "returnByValue": True
})

# Wait for the result
result = None
start = time.time()
while time.time() - start < 30:
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
    print(f"❌ Chrome script failed: {result['error']}")
    if "sources" in result:
        print("Available sources:", json.dumps(result["sources"], indent=2))
    exit(1)

print("\n🎯 Chrome successfully fetched the API!")
print("\n--- Sources Response ---")
print(json.dumps(result.get("sources"), indent=2)[:1000])

print(f"\n--- Resolving target: {result.get('target')[:30]}... ---")
resolve_data = result.get("resolve", {})
print(json.dumps(resolve_data, indent=2)[:1500])

# Extract m3u8
m3u8_url = None
for key in ["url", "stream", "m3u8", "playlist", "source"]:
    if key in resolve_data and isinstance(resolve_data[key], str) and ".m3u8" in resolve_data[key]:
        m3u8_url = resolve_data[key]
        break

if not m3u8_url and "sources" in resolve_data:
    for s in resolve_data["sources"]:
        if isinstance(s, dict) and "url" in s and ".m3u8" in s["url"]:
            m3u8_url = s["url"]
            break

if m3u8_url:
    print(f"\n✅ FOUND M3U8: {m3u8_url}")
    with open("bingebang_m3u8.txt", "w") as f:
        f.write(m3u8_url)

    print(f"\n[2] Running ffprobe on m3u8...")
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
    print("\n⚠️ No m3u8 found in resolve data. Full response:")
    print(json.dumps(resolve_data, indent=2))
