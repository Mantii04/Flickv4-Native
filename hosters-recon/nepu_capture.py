import requests, json, websocket, time, re, subprocess

tabs = requests.get("http://localhost:9222/json").json()
tab = next((t for t in tabs if 'nepu.gd' in t.get('url','')), None)
if not tab:
    print("❌ Open https://nepu.gd/watch/hannibal-2013 in Chrome first")
    exit(1)

ws = websocket.create_connection(tab["webSocketDebuggerUrl"],
                                 suppress_origin=True, timeout=120)

mid = 0
def send(method, params=None):
    global mid
    mid += 1
    ws.send(json.dumps({"id": mid, "method": method, "params": params or {}}))
    return mid

# Hooks: JSON.parse, fetch, XHR, video.src
hook_js = r"""
(() => {
    window.__captured = [];
    const origParse = JSON.parse;
    JSON.parse = function(str, reviver) {
        const r = origParse.call(this, str, reviver);
        try { window.__captured.push({src:'JSON.parse', text: JSON.stringify(r)}); } catch(e){}
        return r;
    };
    const origFetch = window.fetch;
    window.fetch = async function(...args) {
        const resp = await origFetch.apply(this, args);
        try {
            const clone = resp.clone();
            clone.text().then(t => window.__captured.push({src:'fetch', url: resp.url, text: t}));
        } catch(e){}
        return resp;
    };
    const OrigXHR = window.XMLHttpRequest;
    window.XMLHttpRequest = function() {
        const x = new OrigXHR();
        const o = x.open, s = x.send;
        let u;
        x.open = function(m, url) { u = url; return o.apply(x, arguments); };
        x.send = function() {
            x.addEventListener('load', () => window.__captured.push({src:'xhr', url: u, text: x.responseText||''}));
            return s.apply(x, arguments);
        };
        return x;
    };
    setInterval(() => {
        document.querySelectorAll('video').forEach(v => {
            const s = v.currentSrc || v.src;
            if (s && !s.startsWith('blob:') && s.length > 20)
                window.__captured.push({src:'video.src', text: s});
        });
    }, 1000);
})();
"""

send("Page.enable")
send("Runtime.enable")
send("Page.addScriptToEvaluateOnNewDocument", {"source": hook_js})

# 1. Navigate to the watch page
print("[1] Navigating to nepu.gd/watch/hannibal-2013 …")
send("Page.navigate", {"url": "https://nepu.gd/watch/hannibal-2013"})

# 2. Wait for the “quick check” – then click Continue if it exists
time.sleep(8)   # give Turnstile time to solve

click_js = r"""
(() => {
    const btn = Array.from(document.querySelectorAll('button, a'))
        .find(el => /continue/i.test(el.textContent));
    if (btn) { btn.click(); return 'clicked'; }
    return 'no button';
})()
"""
send("Runtime.evaluate", {"expression": click_js, "returnByValue": True})

print("[2] Waiting 30 s for the player and m3u8 …")
time.sleep(30)

# 3. Dump everything captured
cmd = send("Runtime.evaluate", {
    "expression": "JSON.stringify(window.__captured || [])",
    "returnByValue": True
})

val = None
start = time.time()
while time.time() - start < 10:
    try:
        raw = ws.recv()
        msg = json.loads(raw)
        if msg.get("id") == cmd:
            val = msg.get("result", {}).get("result", {}).get("value")
            break
    except:
        break

ws.close()

if not val:
    print("❌ No data captured.")
    exit(1)

caps = json.loads(val)
print(f"\nCaptured {len(caps)} object(s)\n")

# 4. Extract every m3u8 URL
m3u8s = set()
for c in caps:
    for m in re.findall(r'https?://[^\s"\'\\<>]+\.m3u8[^\s"\'\\<>]*', c.get('text','')):
        m3u8s.add(m)

if not m3u8s:
    print("No m3u8 found. Dumping largest captures:")
    for c in sorted(caps, key=lambda x: len(x.get('text','')), reverse=True)[:3]:
        print(f"\n--- {c.get('src')} {c.get('url','')[:80]} ---")
        print(c.get('text','')[:1200])
    exit(0)

print(f"🎯 Found {len(m3u8s)} m3u8 URL(s). Probing resolutions …\n")

for i, url in enumerate(m3u8s):
    print(f"--- Stream #{i+1}: {url[:100]}… ---")
    res = subprocess.run([
        "ffprobe", "-v", "error", "-select_streams", "v:0",
        "-headers", "Referer: https://nepu.gd/\r\nOrigin: https://nepu.gd\r\nUser-Agent: Mozilla/5.0 (Linux; Android 10; K) Chrome/155.0.0.0 Mobile Safari/537.36\r\n",
        "-show_entries", "stream=width,height",
        "-of", "csv=p=0", url
    ], capture_output=True, text=True, timeout=20)
    if res.stdout.strip():
        print(f"    ✅ {res.stdout.strip()}")
    else:
        print(f"    ❌ ffprobe failed: {res.stderr[:80]}")
