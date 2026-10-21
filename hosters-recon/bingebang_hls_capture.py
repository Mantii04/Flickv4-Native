import requests, json, websocket, time, subprocess

tabs = requests.get("http://localhost:9222/json").json()
tab = next((t for t in tabs if 'bingebang' in t.get('url','')), None)
if not tab:
    print("❌ Open bingebang in Chrome first")
    exit(1)

print(f"✅ Tab: {tab['url'][:80]}\n")

ws = websocket.create_connection(
    tab["webSocketDebuggerUrl"], suppress_origin=True, timeout=60
)

mid = 0
def send(method, params=None):
    global mid
    mid += 1
    ws.send(json.dumps({"id": mid, "method": method, "params": params or {}}))
    return mid

# Enable Network with large buffers so bodies aren't discarded
send("Network.enable", {
    "maxTotalBufferSize": 100_000_000,
    "maxResourceBufferSize": 50_000_000,
    "maxPostDataSize": 65536,
})
send("Page.enable")

# Track requests whose bodies we want
interesting_requests = {}  # requestId -> url
captured_bodies = {}       # requestId -> body string
pending_body_requests = {} # requestId -> body_id sent

print("[1] Reloading page. Play the video in Chrome NOW and switch to nashira.\n")
send("Page.reload", {"ignoreCache": False})

start = time.time()
reload_seen = False

while time.time() - start < 60:
    try:
        ws.settimeout(1)
        raw = ws.recv()
        msg = json.loads(raw)
        method = msg.get("method", "")
        params = msg.get("params", {})

        # Detect when requests start
        if method == "Network.requestWillBeSent":
            req = params.get("request", {})
            url = req.get("url", "")
            rid = params["requestId"]
            if '/api/player/' in url or '.m3u8' in url:
                interesting_requests[rid] = url
                print(f"  [REQ] {req.get('method')} {url[:120]}")
        
        # When response finishes loading, immediately fetch body
        elif method == "Network.loadingFinished":
            rid = params["requestId"]
            if rid in interesting_requests:
                bid = send("Network.getResponseBody", {"requestId": rid})
                pending_body_requests[bid] = rid
                print(f"  [FIN] {interesting_requests[rid][:120]}")
        
        # Handle getResponseBody responses
        elif msg.get("id") in pending_body_requests:
            rid = pending_body_requests.pop(msg["id"])
            body = msg.get("result", {}).get("body", "")
            url = interesting_requests.get(rid, "")
            captured_bodies[rid] = {"url": url, "body": body}
            print(f"  [BODY] {url[:80]} → {len(body)} bytes")
            if len(body) > 100:
                print(f"         Preview: {body[:300]}")
        
        # Handle responseReceived for logging
        elif method == "Network.responseReceived":
            resp = params.get("response", {})
            url = resp.get("url", "")
            rid = params["requestId"]
            if '/api/player/' in url or '.m3u8' in url:
                print(f"  [RESP] {resp.get('status')} {url[:120]}")
    
    except websocket.WebSocketTimeoutException:
        continue
    except Exception as e:
        print(f"err: {e}")
        break

ws.close()

print("\n" + "="*60)
print(f"Captured {len(captured_bodies)} bodies")
print("="*60)

m3u8_url = None
for rid, data in captured_bodies.items():
    url = data["url"]
    body = data["body"]
    
    if '/api/player/resolve' in url:
        print(f"\n--- Resolve response for: {url[:100]} ---")
        print(body[:2000])
        
        # Try to parse JSON
        try:
            j = json.loads(body)
            # Look for m3u8
            def find_m3u8(obj, path=""):
                if isinstance(obj, str) and '.m3u8' in obj:
                    return obj
                if isinstance(obj, dict):
                    for k, v in obj.items():
                        result = find_m3u8(v, f"{path}.{k}")
                        if result: return result
                if isinstance(obj, list):
                    for i, v in enumerate(obj):
                        result = find_m3u8(v, f"{path}[{i}]")
                        if result: return result
                return None
            
            found = find_m3u8(j)
            if found:
                m3u8_url = found
                print(f"\n🎯 FOUND M3U8 in resolve: {m3u8_url}")
                break
        except:
            # Maybe the body itself is the m3u8
            if '.m3u8' in body and '#EXTM3U' in body:
                m3u8_url = url
                print(f"\n🎯 Body IS the m3u8: {url}")
                break
    
    # Direct m3u8 requests
    if '.m3u8' in url and url.startswith('http'):
        m3u8_url = url
        print(f"\n🎯 FOUND DIRECT M3U8: {m3u8_url}")
        break

if m3u8_url:
    with open("bingebang_m3u8.txt", "w") as f:
        f.write(m3u8_url)
    
    print(f"\n[2] Running ffprobe on m3u8...")
    res = subprocess.run(
        ["ffprobe", "-v", "error", "-select_streams", "v:0",
         "-show_entries", "stream=width,height,codec_name",
         "-of", "json", m3u8_url],
        capture_output=True, text=True, timeout=30
    )
    print("\n" + "="*60)
    print("FINAL RESOLUTION DATA:")
    print("="*60)
    print(res.stdout)
    if '"height": 1080' in res.stdout:
        print("\n🎉🎉🎉 1080p CONFIRMED! 🎉🎉🎉")
    elif '"height": 720' in res.stdout:
        print("\n⚠️ 720p - label was misleading")
else:
    print("\n❌ No m3u8 found. Full captured bodies:")
    for rid, data in captured_bodies.items():
        print(f"\n{data['url']}:")
        print(data['body'][:500])
