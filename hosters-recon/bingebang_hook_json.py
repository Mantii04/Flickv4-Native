import requests, json, websocket, time

tabs = requests.get("http://localhost:9222/json").json()
tab = next((t for t in tabs if 'bingebang' in t.get('url','')), None)
if not tab:
    print("❌ Open bingebang in Chrome first")
    exit(1)

print(f"✅ Tab: {tab['url'][:80]}\n")

ws = websocket.create_connection(
    tab["webSocketDebuggerUrl"], suppress_origin=True, timeout=120
)

mid = 0
def send(method, params=None):
    global mid
    mid += 1
    ws.send(json.dumps({"id": mid, "method": method, "params": params or {}}))
    return mid

# Install hooks that run before any page script
hook_js = r"""
(() => {
    window.__captured = [];

    // Hook JSON.parse — catches all parsed objects including decrypted payloads
    const origParse = JSON.parse;
    JSON.parse = function(str, reviver) {
        const result = origParse.call(this, str, reviver);
        try {
            if (result && typeof result === 'object') {
                const s = JSON.stringify(result);
                if (s && s.length > 30) {
                    window.__captured.push({
                        source: 'JSON.parse',
                        size: s.length,
                        raw: s.slice(0, 5000)
                    });
                }
            }
        } catch(e) {}
        return result;
    };

    // Hook fetch().json() — catches fetch response bodies
    const origFetch = window.fetch;
    window.fetch = async function(...args) {
        const resp = await origFetch.apply(this, args);
        try {
            const origJson = resp.json.bind(resp);
            resp.json = async function() {
                const data = await origJson();
                try {
                    const s = JSON.stringify(data);
                    if (s && s.length > 30) {
                        window.__captured.push({
                            source: 'fetch.json',
                            url: resp.url,
                            size: s.length,
                            raw: s.slice(0, 5000)
                        });
                    }
                } catch(e) {}
                return data;
            };
        } catch(e) {}
        return resp;
    };

    // Hook XHR — some players use XHR for m3u8
    const OrigXHR = window.XMLHttpRequest;
    window.XMLHttpRequest = function() {
        const xhr = new OrigXHR();
        const origOpen = xhr.open;
        const origSend = xhr.send;
        let _url = '';
        xhr.open = function(method, url) {
            _url = url;
            return origOpen.apply(xhr, arguments);
        };
        xhr.send = function() {
            xhr.addEventListener('load', function() {
                try {
                    const txt = xhr.responseText || '';
                    if (txt.length > 30 && (txt.includes('m3u8') || txt.includes('EXTM3U') || txt.includes('"url"'))) {
                        window.__captured.push({
                            source: 'xhr',
                            url: _url,
                            size: txt.length,
                            raw: txt.slice(0, 5000)
                        });
                    }
                } catch(e) {}
            });
            return origSend.apply(xhr, arguments);
        };
        return xhr;
    };
})();
"""

send("Page.enable")
send("Runtime.enable")
send("Page.addScriptToEvaluateOnNewDocument", {"source": hook_js})

print("[1] Hooks installed. Reloading page.")
send("Page.reload", {"ignoreCache": False})

print("[2] Waiting 35s. PLAY the video in Chrome NOW and switch to nashira.\n")
time.sleep(35)

# Dump the captured objects
cmd_id = send("Runtime.evaluate", {
    "expression": "JSON.stringify(window.__captured || [])",
    "returnByValue": True
})

result_value = None
start = time.time()
while time.time() - start < 15:
    try:
        ws.settimeout(1)
        raw = ws.recv()
        msg = json.loads(raw)
        if msg.get("id") == cmd_id:
            result_value = msg.get("result", {}).get("result", {}).get("value", "[]")
            break
    except websocket.WebSocketTimeoutException:
        continue
    except: break

ws.close()

if not result_value:
    print("❌ No result")
    exit(1)

data = json.loads(result_value)
print(f"\n=== Captured {len(data)} JSON objects ===\n")

# Filter for ones that look like they contain stream data
import re
found_m3u8 = False
for i, item in enumerate(data):
    raw = item.get("raw", "")
    source = item.get("source", "?")
    url = item.get("url", "")
    
    # Look for m3u8 URLs
    m3u8s = re.findall(r'https?://[^\s"\'\\]+\.m3u8[^\s"\'\\]*', raw)
    if m3u8s:
        print(f"\n🎯 [{i}] {source} {url[:80]}")
        for u in m3u8s:
            print(f"    m3u8: {u}")
        found_m3u8 = True
    
    # Look for objects that mention stream/server/quality keys
    elif any(k in raw.lower() for k in ['"url"', '"stream"', '"source"', '"server"', 'nashira', 'markab', '"quality"', '"height"']):
        print(f"\n[{i}] {source} {url[:80]} (size={item['size']})")
        print(f"    {raw[:800]}")

if not found_m3u8:
    print("\n\n=== No m3u8 found. Dumping ALL captures for inspection ===\n")
    for i, item in enumerate(data):
        print(f"\n--- [{i}] {item.get('source')} {item.get('url', '')[:80]} (size={item['size']}) ---")
        print(item['raw'][:1500])

# Save everything for offline analysis
with open("bingebang_capture.json", "w") as f:
    json.dump(data, f, indent=2)
print(f"\n💾 Saved all captures to bingebang_capture.json")
