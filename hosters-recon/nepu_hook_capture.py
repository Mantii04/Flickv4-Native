import requests, json, websocket, time, re, subprocess

tabs = requests.get("http://localhost:9222/json").json()
tab = next((t for t in tabs if 'nepu' in t.get('url','')), None)
if not tab:
    print("❌ Open nepu.gd in Chrome first")
    for t in tabs: print(f"   {t['url'][:100]}")
    exit(1)

print(f"✅ Tab: {tab['url'][:100]}\n")

ws = websocket.create_connection(
    tab["webSocketDebuggerUrl"], suppress_origin=True, timeout=120
)

mid = 0
def send(method, params=None):
    global mid
    mid += 1
    ws.send(json.dumps({"id": mid, "method": method, "params": params or {}}))
    return mid

# Hooks: JSON.parse + fetch + XHR, capturing everything
hook_js = r"""
(() => {
    window.__captured = [];

    function record(source, url, text) {
        if (!text || text.length < 20) return;
        if (text.length > 200000) text = text.slice(0, 200000);
        window.__captured.push({ source, url: url || '', size: text.length, text });
    }

    const origParse = JSON.parse;
    JSON.parse = function(str, reviver) {
        const result = origParse.call(this, str, reviver);
        try { record('JSON.parse', '', JSON.stringify(result)); } catch(e) {}
        return result;
    };

    const origFetch = window.fetch;
    window.fetch = async function(...args) {
        const resp = await origFetch.apply(this, args);
        try {
            const clone = resp.clone();
            clone.text().then(t => record('fetch', resp.url, t)).catch(()=>{});
        } catch(e) {}
        return resp;
    };

    const OrigXHR = window.XMLHttpRequest;
    window.XMLHttpRequest = function() {
        const xhr = new OrigXHR();
        const origOpen = xhr.open;
        const origSend = xhr.send;
        let _url = '';
        xhr.open = function(m, u) { _url = u; return origOpen.apply(xhr, arguments); };
        xhr.send = function() {
            xhr.addEventListener('load', function() {
                try { record('xhr', _url, xhr.responseText || ''); } catch(e) {}
            });
            return origSend.apply(xhr, arguments);
        };
        return xhr;
    };

    // Also hook Hls.js / videojs source assignments
    setInterval(() => {
        document.querySelectorAll('video').forEach(v => {
            const s = v.currentSrc || v.src;
            if (s && !s.startsWith('blob:') && s.length > 20) {
                if (!window.__captured.find(c => c.text === s)) {
                    window.__captured.push({source: 'video.src', url: '', size: s.length, text: s});
                }
            }
        });
    }, 1000);
})();
"""

send("Page.enable")
send("Runtime.enable")
send("Page.addScriptToEvaluateOnNewDocument", {"source": hook_js})
send("Page.reload", {"ignoreCache": False})

print("[1] Reloaded. In Chrome: Play the video. Switch servers if needed. Waiting 45s...\n")
time.sleep(45)

cmd = send("Runtime.evaluate", {
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
        if msg.get("id") == cmd:
            result_value = msg.get("result", {}).get("result", {}).get("value")
            break
    except websocket.WebSocketTimeoutException:
        continue
    except:
        break

ws.close()

if not result_value:
    print("❌ No response")
    exit(1)

captures = json.loads(result_value)
print(f"=== Captured {len(captures)} objects ===\n")

# Collect every m3u8 URL from every capture
m3u8s = set()
api_endpoints = set()
for c in captures:
    text = c.get("text", "")
    url = c.get("url", "")
    
    for m in re.findall(r'https?://[^\s"\'\\<>]+\.m3u8[^\s"\'\\<>]*', text):
        m3u8s.add(m)
    for m in re.findall(r'https?://[^\s"\'\\<>]+\.m3u8[^\s"\'\\<>]*', url):
        m3u8s.add(m)
    if '/api/' in url:
        api_endpoints.add(url.split('?')[0])

print(f"Unique m3u8 URLs: {len(m3u8s)}")
print(f"API endpoints seen: {len(api_endpoints)}\n")

if api_endpoints:
    print("API endpoints:")
    for u in sorted(api_endpoints):
        print(f"  {u}")
    print()

if not m3u8s:
    print("❌ No m3u8 found in captures. Dumping largest captures for inspection:\n")
    sorted_caps = sorted(captures, key=lambda x: x.get("size", 0), reverse=True)
    for c in sorted_caps[:5]:
        print(f"--- {c['source']} {c.get('url','')[:80]} ({c.get('size')} bytes) ---")
        print(c.get("text", "")[:1500])
        print()
    exit(1)

print("="*60)
print(f"Testing {len(m3u8s)} m3u8(s) with ffprobe...")
print("="*60)

for i, url in enumerate(sorted(m3u8s)):
    print(f"\n--- Stream #{i+1}: {url[:100]}... ---")
    res = subprocess.run([
        "ffprobe", "-v", "error", "-select_streams", "v:0",
        "-headers", "Referer: https://nepu.gd/\r\nOrigin: https://nepu.gd\r\nUser-Agent: Mozilla/5.0 (Linux; Android 10; K) Chrome/155.0.0.0 Mobile Safari/537.36\r\n",
        "-show_entries", "stream=width,height,codec_name",
        "-of", "json", url
    ], capture_output=True, text=True, timeout=20)
    
    try:
        data = json.loads(res.stdout)
        streams = data.get("streams", [])
        if streams:
            s = streams[0]
            w, h = s.get("width"), s.get("height")
            print(f"    ✅ {w}x{h} ({s.get('codec_name')})")
            if h and h >= 1080:
                print(f"    🎉 1080p+ CONFIRMED")
        else:
            print(f"    ⚠️ No streams in response. ffprobe stderr: {res.stderr[:150]}")
    except:
        print(f"    ❌ Probe failed: {res.stderr[:150]}")

# Save all captures for offline inspection
with open("nepu_captures.json", "w") as f:
    json.dump(captures, f, indent=2)
print(f"\n💾 Full captures saved to nepu_captures.json")
