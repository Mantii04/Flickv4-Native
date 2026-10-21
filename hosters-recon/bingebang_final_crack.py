import requests, re, json, subprocess
from curl_cffi import requests as cf_requests

BASE = "https://bingebang.st"
PLAY = f"{BASE}/tv/play/hannibal-a54k9w/1/1"

# The exact ticket Chrome used
TICKET = "PzNQwbc_hZ_rnzu-prCrhesZ3UxOlBJVAdxfkt8jPzHitR8opp7fKT88sFXxr6VbthjDbAKiikdwrv5HxSEr2_VGt0edQwVljqjoX-omvOo783qcxGU0rmKJT2pchle_-WAArUwj0TpPRRGiaqUjTI"

# Load cookies
with open("bingebang_cookies.json") as f:
    ck = json.load(f)

ses = cf_requests.Session(impersonate="chrome")
# Use the exact headers Chrome sent
ses.headers.update({
    "Referer": PLAY,
    "Origin": BASE,
    "Accept": "application/json, text/plain, */*",
    "X-BB-Player": "1",
    "X-BB-Ticket": TICKET,
    "sec-ch-ua-platform": '"Android"',
    "sec-ch-ua": '"Google Chrome";v="155", "Chromium";v="155", "Not(A:Brand";v="24"',
    "sec-ch-ua-mobile": "?1",
    "User-Agent": "Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Mobile Safari/537.36"
})

for name, value in ck.items():
    ses.cookies.set(name, value, domain=".bingebang.st")

print("[1] Fetching /api/player/sources with X-BB-Ticket...")
src_resp = ses.get(f"{BASE}/api/player/sources", timeout=20)
print(f"    Status: {src_resp.status_code}")

if src_resp.status_code != 200:
    print(f"    ❌ Failed: {src_resp.text[:200]}")
    exit(1)

sources_data = src_resp.json()
print("\n🎯 Response from /api/player/sources:")
print(json.dumps(sources_data, indent=2)[:2000])

# Parse sources to find nashira or markab
sources = sources_data.get("sources", sources_data) if isinstance(sources_data, dict) else sources_data
target_src = None

for s in sources:
    name = str(s.get("name", s.get("server", ""))).lower()
    if "nashira" in name or "markab" in name:
        target_src = s.get("src", s.get("id", s.get("url")))
        print(f"\n✅ Found server: {name}")
        print(f"   src token: {target_src}")
        break

if not target_src:
    print("\n❌ Could not find nashira/markab in sources.")
    print("Available servers:", [s.get("name") for s in sources])
    exit(1)

print(f"\n[2] Fetching /api/player/resolve?src={target_src[:30]}...")
resolve_resp = ses.get(f"{BASE}/api/player/resolve?src={target_src}", timeout=20)
print(f"    Status: {resolve_resp.status_code}")

if resolve_resp.status_code != 200:
    print(f"    ❌ Failed: {resolve_resp.text[:200]}")
    exit(1)

data = resolve_resp.json()
print("\n🎯 Response from /api/player/resolve:")
print(json.dumps(data, indent=2)[:2000])

# Extract m3u8
m3u8_url = None
for key in ["url", "stream", "m3u8", "playlist", "source"]:
    if key in data and isinstance(data[key], str) and ".m3u8" in data[key]:
        m3u8_url = data[key]
        break

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
    print("\n" + "="*50)
    print("FINAL RESOLUTION DATA:")
    print("="*50)
    print(res.stdout)
else:
    print("\n⚠️ No m3u8 found in resolve response. Full data:")
    print(json.dumps(data, indent=2))
