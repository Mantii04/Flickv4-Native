import requests, re, json, subprocess
from curl_cffi import requests as cf_requests

BASE = "https://bingebang.st"
PLAY = f"{BASE}/tv/play/hannibal-a54k9w/1/1"

# Load cookies Chrome captured
with open("bingebang_cookies.json") as f:
    ck = json.load(f)

ses = cf_requests.Session(impersonate="chrome")
ses.headers.update({
    "Referer": PLAY,
    "Origin": BASE,
    "Accept": "application/json, text/plain, */*"
})

for name, value in ck.items():
    ses.cookies.set(name, value, domain=".bingebang.st")

print("[1] Fetching /api/player/sources...")
src_resp = ses.get(f"{BASE}/api/player/sources", timeout=20)
print(f"    Status: {src_resp.status_code}")

if src_resp.status_code != 200:
    print(f"    ❌ Failed: {src_resp.text[:200]}")
    exit(1)

print("\n🎯 Response from /api/player/sources:")
print(json.dumps(src_resp.json(), indent=2)[:1500])

# Parse the response to find nashira or markab
try:
    sources = src_resp.json()
except:
    print("❌ Not valid JSON")
    exit(1)

# The response format might be a list or a dict with a list
if isinstance(sources, dict):
    sources = sources.get("sources", sources.get("data", []))

# Find nashira or markab
target_src = None
for s in sources:
    name = str(s.get("name", s.get("server", ""))).lower()
    if "nashira" in name or "markab" in name:
        target_src = s.get("src", s.get("id", s.get("url")))
        print(f"\n✅ Found server: {name} (src token: {str(target_src)[:50]}...)")
        break

if not target_src:
    print("\n❌ Could not find nashira/markab in sources. Available keys:")
    print(sources)
    exit(1)

print(f"\n[2] Fetching /api/player/resolve?src={target_src[:30]}...")
resolve_resp = ses.get(f"{BASE}/api/player/resolve?src={target_src}", timeout=20)
print(f"    Status: {resolve_resp.status_code}")

if resolve_resp.status_code != 200:
    print(f"    ❌ Failed: {resolve_resp.text[:200]}")
    exit(1)

print("\n🎯 Response from /api/player/resolve:")
print(json.dumps(resolve_resp.json(), indent=2)[:2000])

# Extract m3u8 from the resolve response
data = resolve_resp.json()
m3u8_url = None

# Look in common fields
for key in ["url", "stream", "m3u8", "playlist", "source"]:
    if key in data and isinstance(data[key], str) and ".m3u8" in data[key]:
        m3u8_url = data[key]
        break

# Look in nested 'sources' array
if not m3u8_url and "sources" in data:
    for s in data["sources"]:
        if isinstance(s, dict) and "url" in s and ".m3u8" in s["url"]:
            m3u8_url = s["url"]
            break

if m3u8_url:
    print(f"\n✅ FOUND M3U8: {m3u8_url}")
    with open("bingebang_m3u8.txt", "w") as f:
        f.write(m3u8_url)
    
    print(f"\n[3] Running ffprobe on m3u8...")
    res = subprocess.run(
        ["ffprobe", "-v", "error", "-select_streams", "v:0",
         "-show_entries", "stream=width,height,codec_name",
         "-of", "json", m3u8_url],
        capture_output=True, text=True, timeout=30
    )
    print(res.stdout)
else:
    print("\n⚠️ No m3u8 found in resolve response. Full output saved.")
