import requests, json, websocket, time, re

tabs = requests.get("http://localhost:9222/json").json()
tab = next((t for t in tabs if 'bingebang' in t.get('url','')), None)
if not tab:
    print("❌ Open bingebang in Chrome first")
    exit(1)

ws = websocket.create_connection(
    tab["webSocketDebuggerUrl"],
    suppress_origin=True,
    timeout=60
)

mid = 0
def send(method, params=None):
    global mid
    mid += 1
    ws.send(json.dumps({"id": mid, "method": method, "params": params or {}}))
    return mid

hook_js = r"""
(() => {
    window.__sources_capture = null;
    const origParse = JSON.parse;
    JSON.parse = function(str, reviver) {
        const result = origParse.call(this, str, reviver);
        try {
            if (result && typeof result === 'object' && Array.isArray(result.servers)) {
                window.__sources_capture = result;
            }
        } catch(e) {}
        return result;
    };
})();
"""

send("Page.enable")
send("Runtime.enable")
send("Page.addScriptToEvaluateOnNewDocument", {"source": hook_js})
send("Page.reload", {"ignoreCache": False})

print("[1] Reloading. In Chrome: Play video, then open server list once.\n")
time.sleep(12)

cmd = send("Runtime.evaluate", {
    "expression": "JSON.stringify(window.__sources_capture || null)",
    "returnByValue": True
})

result_value = None
start = time.time()
while time.time() - start < 10:
    try:
        ws.settimeout(1)
        raw = ws.recv()
        msg = json.loads(raw)
        if msg.get("id") == cmd:
            result_value = msg.get("result", {}).get("result", {}).get("value")
            break
    except websocket.WebSocketTimeoutException:
        continue
    except:
        break

ws.close()

if not result_value or result_value == "null":
    print("❌ No server list captured. Reload, play, open server menu, try again.")
    exit(1)

data = json.loads(result_value)
servers = data.get("servers", [])

print(f"\n✅ Found {len(servers)} server(s):\n")
for s in servers:
    print(f"  Label: {s.get('label')}")
    print(f"  ID:    {s.get('id')}")
    print(f"  Quality: {s.get('quality')}")
    print()
