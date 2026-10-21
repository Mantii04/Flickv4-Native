import requests, re, json, subprocess
from curl_cffi import requests as cf_requests

BASE = "https://bingebang.st"
PLAY = f"{BASE}/tv/play/hannibal-a54k9w/1/1"  # Exact URL from Chrome

# Load ALL cookies Chrome found
with open("bingebang_cookies.json") as f:
    ck = json.load(f)

print(f"[1] Loaded {len(ck)} cookies: {list(ck.keys())}")

ses = cf_requests.Session(impersonate="chrome")
ses.headers.update({
    "Referer": PLAY,
    "Origin": BASE,
    "Accept-Language": "en-US,en;q=0.9",
})

# Set all cookies
for name, value in ck.items():
    ses.cookies.set(name, value, domain=".bingebang.st")

print(f"\n[2] Fetching play page: {PLAY}")
play = ses.get(PLAY, timeout=20)
print(f"    Status: {play.status_code}, Size: {len(play.text)} bytes")

# Did we bypass the gate?
if 'turnstile.render' in play.text:
    print("❌ Still hitting Turnstile. The bb_pg cookie didn't work.")
    exit(1)

print("✅ Player HTML loaded! (Gate bypassed)")

# Look for m3u8
m3u8s = re.findall(r'https?://[^\s"\'<>]+\.m3u8[^\s"\'<>]*', play.text)
mp4s = re.findall(r'https?://[^\s"\'<>]+\.mp4[^\s"\'<>]*', play.text)
hosters = sorted(set(re.findall(r'(nashira|markab|filemoon|dood|streamtape|mixdrop|vixsrc|vidcloud)', play.text, re.I)))
iframes = re.findall(r'<iframe[^>]+src="([^"]+)"', play.text)

print(f"\n🎯 Results:")
print(f"    m3u8: {m3u8s}")
print(f"    mp4: {mp4s}")
print(f"    Hosters: {hosters}")
print(f"    Iframes: {iframes}")

# If no m3u8 found in HTML, look for JSON config
if not m3u8s and not mp4s:
    print("\n🔍 Looking for embedded player config...")
    # Look for script blocks with 'nashira' or 'markab'
    for m in re.finditer(r'<script[^>]*>(.*?)</script>', play.text, re.DOTALL):
        content = m.group(1)
        if any(k in content.lower() for k in ['nashira', 'markab', 'sources', 'file:']):
            print(f"  Found config in script: {content[:500]}")

# Save for analysis
open("bingebang_unlocked.html", "w").write(play.text)

# Test resolution if we found an m3u8
if m3u8s:
    print(f"\n[3] Testing resolution of: {m3u8s[0]}")
    res = subprocess.run(
        ["ffprobe", "-v", "error", "-select_streams", "v:0",
         "-show_entries", "stream=width,height,codec_name",
         "-of", "json", m3u8s[0]],
        capture_output=True, text=True, timeout=30
    )
    print(res.stdout)
