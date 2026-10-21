import requests, re, json, subprocess
from curl_cffi import requests as cf_requests

BASE = "https://bingebang.st"
PLAY = f"{BASE}/tv/play/hannibal-a54k9w/1/1"

with open("bingebang_cookies.json") as f:
    ck = json.load(f)

print(f"[1] Loaded {len(ck)} cookies")

# First, get a CSRF token (just in case it's needed)
ses = cf_requests.Session(impersonate="chrome")
for name, value in ck.items():
    ses.cookies.set(name, value, domain=".bingebang.st")

csrf_token = ""
try:
    cr = ses.get(f"{BASE}/api/auth/csrf", timeout=10)
    if cr.status_code == 200:
        csrf_token = cr.json().get("token", "")
        print(f"✅ CSRF token: {csrf_token[:20]}...")
except:
    pass

# Header combinations to try
headers_list = [
    ("Baseline (Referer+Origin)", {}),
    ("+ X-BB-Player", {"X-BB-Player": "1"}),
    ("+ X-Requested-With", {"X-Requested-With": "XMLHttpRequest"}),
    ("+ X-BB-Player + X-Requested-With", {"X-BB-Player": "1", "X-Requested-With": "XMLHttpRequest"}),
    ("+ CSRF", {"X-CSRF-Token": csrf_token}),
    ("All headers", {
        "X-BB-Player": "1",
        "X-Requested-With": "XMLHttpRequest",
        "X-CSRF-Token": csrf_token,
    }),
]

# URL variations to try
urls = [
    f"{BASE}/api/player/sources",
    f"{BASE}/api/player/sources?id=hannibal-a54k9w",
    f"{BASE}/api/player/sources?t=tv&id=21203",
    f"{BASE}/api/player/sources?media_id=21203&season=1&episode=1",
]

print("\n[2] Testing endpoints and headers...")
success_resp = None
success_url = None

for url in urls:
    for name, extra_headers in headers_list:
        h = {
            "Referer": PLAY,
            "Origin": BASE,
            "Accept": "application/json, text/plain, */*",
            **extra_headers,
        }
        try:
            r = ses.get(url, headers=h, timeout=10)
            if r.status_code == 200:
                print(f"\n🎉 SUCCESS! URL: {url}")
                print(f"   Headers: {name}")
                print(f"   Body: {r.text[:500]}")
                success_resp = r.json()
                success_url = url
                break
            elif r.status_code != 403: # If it's 404, we know the URL is wrong
                print(f"   [{r.status_code}] {url} | {name} -> {r.text[:100]}")
        except Exception as e:
            pass
    if success_resp:
        break

if not success_resp:
    print("\n❌ Could not find the right combination.")
    print("Let's try mimicking the exact browser request via Chrome's network log...")
    # Fallback: Use CDP to get the exact headers
    exit(1)

# If we got here, we have the sources
print("\n[3] Parsing sources...")
sources = success_resp.get("sources", success_resp.get("data", success_resp))
if isinstance(sources, dict):
    sources = [sources]

for s in sources:
    print(f"   {s}")
    
# Find nashira or markab
target_src = None
for s in sources:
    name = str(s.get("name", s.get("server", ""))).lower()
    if "nashira" in name or "markab" in name:
        target_src = s.get("src", s.get("id", s.get("url")))
        print(f"\n✅ Found {name} (src: {target_src[:40]}...)")
        break

if not target_src:
    print("❌ nashira/markab not in this response.")
    # Print all available
    exit(1)

print(f"\n[4] Resolving src...")
resolve_url = f"{BASE}/api/player/resolve?src={target_src}"
r = ses.get(resolve_url, headers={
    "Referer": PLAY,
    "Origin": BASE,
    "Accept": "application/json, text/plain, */*",
    "X-BB-Player": "1",
    "X-Requested-With": "XMLHttpRequest"
}, timeout=15)

print(f"   Status: {r.status_code}")
print(f"   Body: {r.text[:1000]}")

data = r.json()
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
    open("bingebang_m3u8.txt", "w").write(m3u8_url)
    print(f"\n[5] ffprobe on m3u8...")
    res = subprocess.run(
        ["ffprobe", "-v", "error", "-select_streams", "v:0",
         "-show_entries", "stream=width,height,codec_name",
         "-of", "json", m3u8_url],
        capture_output=True, text=True, timeout=30
    )
    print(res.stdout)
else:
    print("No m3u8 found in resolve response.")
