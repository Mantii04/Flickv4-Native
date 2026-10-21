import requests, json, websocket

# 1. Find the Chrome tab that's on bingebang
tabs = requests.get("http://localhost:9222/json").json()
tab = next((t for t in tabs if 'bingebang' in t.get('url','')), None)

if not tab:
    print("❌ No bingebang tab open in Chrome. Open the play page first.")
    print("Available tabs:")
    for t in tabs:
        print(f"   {t['url'][:100]}")
    exit(1)

print(f"✅ Found tab: {tab['url'][:100]}")

# 2. Connect to that tab via WebSocket
ws = websocket.create_connection(tab["webSocketDebuggerUrl"], suppress_origin=True)

# 3. Ask Chrome for every cookie (including HttpOnly)
ws.send(json.dumps({"id": 1, "method": "Network.getAllCookies"}))

# 4. Read the response (may take 1-2 messages)
cookies = []
for _ in range(5):
    raw = ws.recv()
    msg = json.loads(raw)
    if "result" in msg and "cookies" in msg["result"]:
        cookies = msg["result"]["cookies"]
        break

ws.close()

# 5. Filter and print bingebang cookies
bingebang = [c for c in cookies if 'bingebang' in c.get('domain', '')]
print(f"\n🍪 {len(bingebang)} cookie(s) for bingebang.st:\n")

creds = {}
for c in bingebang:
    val = c['value']
    print(f"  {c['name']}={val[:60]}{'...' if len(val) > 60 else ''}")
    creds[c['name']] = val

# 6. Save to file for other scripts
with open("bingebang_cookies.json", "w") as f:
    json.dump(creds, f, indent=2)
print(f"\n💾 Saved to bingebang_cookies.json")

# 7. Which ones matter?
for needed in ["cf_clearance", "bb_session"]:
    if needed in creds:
        print(f"  ✅ {needed} present")
    else:
        print(f"  ⚠️  {needed} missing")
