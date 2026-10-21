import requests, json, websocket, time, re, subprocess

# 1. Connect to Chrome
tabs = requests.get("http://localhost:9222/json").json()
tab = next((t for t in tabs if 'bingebang' in t.get('url','')), None)
if not tab:
    print("❌ Open bingebang in Chrome first")
    exit(1)

ws = websocket.create_connection(tab["webSocketDebuggerUrl"], suppress_origin=True, timeout=60)
mid = 0
def send(method, params=None):
    global mid
    mid += 1
    ws.send(json.dumps({"id": mid, "method": method, "params": params or {}}))
    return mid

# 2. Hook JSON.parse
hook_js = """
(() => {
    window.__all_captures = [];
    const origParse = JSON.parse;
    JSON.parse = function(str, reviver) {
        const result = origParse.call(this, str, reviver);
        try {
            const s = JSON.stringify(result);
            if (s.length > 50) window.__all_captures.push(s);
        } catch(e) {}
        return result;
    };
})();
"""
send("Page.enable")
send("Runtime.enable")
send("Page.addScriptToEvaluateOnNewDocument", {"source": hook_js})
send("Page.reload", {"ignoreCache": False})

print("[1] Reloading page. In Chrome: Play video -> Click NASHIRA -> Let it load (10s).\n")
time.sleep(15)

# 3. Extract the decrypted URL from the captures
cmd = send("Runtime.evaluate", {"expression": "JSON.stringify(window.__all_captures)", "returnByValue": True})
result_value = None
start = time.time()
while time.time() - start < 5:
    try:
        ws.settimeout(1)
        raw = ws.recv()
        msg = json.loads(raw)
        if msg.get("id") == cmd:
            result_value = msg.get("result", {}).get("result", {}).get("value")
            break
    except: pass

captures = json.loads(result_value or "[]")
m3u8_urls = set()
for cap in captures:
    urls = re.findall(r'https?://[^\s"\\]+\.m3u8[^\s"\\]*', cap)
    for u in urls: m3u8_urls.add(u)

ws.close()

if not m3u8_urls:
    print("❌ No m3u8 found. Did you click Play and Nashira?")
    exit(1)

print(f"✅ Captured {len(m3u8_urls)} m3u8 stream(s). Testing each...\n")

# 4. Test each m3u8 with ffprobe
for i, url in enumerate(m3u8_urls):
    print(f"--- Stream #{i+1} ---")
    res = subprocess.run([
        "ffprobe", "-v", "error", "-select_streams", "v:0",
        "-headers", "Referer: https://bingebang.st/\r\nOrigin: https://bingebang.st\r\nUser-Agent: Mozilla/5.0 (Linux; Android 10; K) Chrome/155.0.0.0 Mobile Safari/537.36\r\n",
        "-show_entries", "stream=width,height",
        "-of", "json", url
    ], capture_output=True, text=True, timeout=20)
    
    try:
        data = json.loads(res.stdout)
        stream = data.get("streams", [{}])[0]
        w, h = stream.get("width"), stream.get("height")
        print(f"    Resolution: {w}x{h}")
        if h == 1080:
            print(f"    🎉 1080p CONFIRMED")
        elif h == 720:
            print(f"    ⚠️ 720p")
    except:
        print(f"    ❌ Failed to probe. Output: {res.stderr[:100]}")
    print()
