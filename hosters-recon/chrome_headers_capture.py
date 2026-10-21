import requests, json, websocket, time

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

send("Network.enable")
send("Page.enable")
print("[1] Reloading page. Play the video in Chrome NOW, then switch to nashira.\n")
send("Page.reload", {"ignoreCache": False})

# Capture every request + response
captured_requests = {}
captured_responses = {}

start = time.time()
while time.time() - start < 30:
    try:
        ws.settimeout(1)
        raw = ws.recv()
        msg = json.loads(raw)
        method = msg.get("method", "")
        params = msg.get("params", {})
        
        if method == "Network.requestWillBeSent":
            req = params.get("request", {})
            url = req.get("url", "")
            if '/api/player/' in url or '.m3u8' in url:
                captured_requests[params["requestId"]] = {
                    "url": url,
                    "method": req.get("method"),
                    "headers": req.get("headers", {}),
                    "postData": req.get("postData"),
                }
                print(f"  [REQ] {req.get('method')} {url[:130]}")
        
        elif method == "Network.responseReceived":
            resp = params.get("response", {})
            url = resp.get("url", "")
            if '/api/player/' in url or '.m3u8' in url:
                captured_responses[params["requestId"]] = {
                    "url": url,
                    "status": resp.get("status"),
                }
                print(f"  [RESP] {resp.get('status')} {url[:130]}")
    except websocket.WebSocketTimeoutException:
        continue
    except Exception as e:
        print(f"err: {e}")
        break

print("\n" + "="*70)
print(f"Captured {len(captured_requests)} requests, {len(captured_responses)} responses")
print("="*70)

for rid, req in captured_requests.items():
    if '/api/player/' not in req["url"]:
        continue
    
    print(f"\n{'='*70}")
    print(f"URL: {req['url']}")
    print(f"METHOD: {req['method']}")
    print(f"{'='*70}")
    print("\nHEADERS:")
    for k, v in req["headers"].items():
        print(f"  {k}: {v[:150]}")
    
    if req.get("postData"):
        print(f"\nPOST BODY: {req['postData'][:500]}")
    
    # Get the response body
    body_id = mid + 1
    mid += 1
    ws.send(json.dumps({"id": body_id, "method": "Network.getResponseBody", "params": {"requestId": rid}}))
    
    # Wait for response
    t = time.time() + 3
    while time.time() < t:
        try:
            ws.settimeout(0.5)
            raw = ws.recv()
            msg = json.loads(raw)
            if msg.get("id") == body_id:
                body = msg.get("result", {}).get("body", "")
                print(f"\nRESPONSE BODY:")
                print(body[:2000])
                safe_name = req["url"].split("/api/player/")[-1].split("?")[0]
                open(f"bingebang_resp_{safe_name}.json", "w").write(body)
                break
        except:
            break

ws.close()
