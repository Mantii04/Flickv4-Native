import requests, json, websocket, time

# Find the bingebang tab
tabs = requests.get("http://localhost:9222/json").json()
tab = next((t for t in tabs if 'bingebang' in t.get('url','')), None)
if not tab:
    print("❌ Open bingebang tab in Chrome first")
    for t in tabs: print(f"   {t['url'][:100]}")
    exit(1)

print(f"✅ Tab: {tab['url'][:80]}\n")

ws = websocket.create_connection(
    tab["webSocketDebuggerUrl"],
    suppress_origin=True,
    timeout=30,
)

# Message IDs
mid = 0
def send(method, params=None):
    global mid
    mid += 1
    ws.send(json.dumps({"id": mid, "method": method, "params": params or {}}))
    return mid

# Enable Network domain — capture every request
send("Network.enable")
send("Page.enable")

# Reload to make sure we see every request from the start
print("[1] Reloading page and capturing every request for 25s...\n")
send("Page.reload", {"ignoreCache": False})

# Read messages for 25 seconds
captured = []
api_responses = []
start = time.time()

while time.time() - start < 25:
    try:
        ws.settimeout(1)
        raw = ws.recv()
        msg = json.loads(raw)
        method = msg.get("method", "")
        
        if method == "Network.requestWillBeSent":
            req = msg["params"]["request"]
            url = req.get("url", "")
            # Only track interesting requests
            if any(k in url.lower() for k in ['/api/', 'm3u8', '.mp4', 'nashira', 'markab', 'play', 'source', 'stream']):
                captured.append({
                    "url": url,
                    "method": req.get("method"),
                    "requestId": msg["params"]["requestId"],
                    "type": msg["params"].get("type", ""),
                })
                print(f"  [REQ] {req.get('method')} {url[:140]}")
        
        elif method == "Network.responseReceived":
            resp = msg["params"]["response"]
            url = resp.get("url", "")
            if any(k in url.lower() for k in ['/api/', 'm3u8', '.mp4']):
                api_responses.append({
                    "url": url,
                    "status": resp.get("status"),
                    "requestId": msg["params"]["requestId"],
                })
                print(f"  [RESP] {resp.get('status')} {url[:140]}")
    except websocket.WebSocketTimeoutException:
        continue
    except Exception as e:
        print(f"  err: {e}")
        break

print(f"\n\n{'='*60}")
print(f"Captured {len(captured)} interesting requests, {len(api_responses)} responses")
print('='*60)

# Now fetch bodies of API responses
print("\n[2] Fetching response bodies for API calls...\n")
for resp in api_responses[:10]:  # limit to 10
    if '/api/' not in resp["url"]:
        continue
    body_id = send("Network.getResponseBody", {"requestId": resp["requestId"]})
    
    # Read the response for this body_id
    timeout = time.time() + 5
    while time.time() < timeout:
        try:
            ws.settimeout(0.5)
            raw = ws.recv()
            msg = json.loads(raw)
            if msg.get("id") == body_id:
                body = msg.get("result", {}).get("body", "")
                print(f"\n--- {resp['url'][:100]} ---")
                print(f"  Status: {resp['status']}")
                print(f"  Body: {body[:1500]}")
                
                # Look for m3u8 or server info in the body
                if 'm3u8' in body or 'nashira' in body or 'markab' in body or 'source' in body:
                    print(f"\n  🎯 FOUND STREAM DATA!")
                    open("bingebang_player_config.json", "w").write(body)
                    print(f"  💾 Saved to bingebang_player_config.json")
                break
        except websocket.WebSocketTimeoutException:
            continue
        except: break

ws.close()
