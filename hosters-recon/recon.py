import requests, re, base64, sys

FILEMOON_URL = sys.argv[1] if len(sys.argv) > 1 else ""
if not FILEMOON_URL:
    print("Usage: python3 recon.py <embed_url>")
    print("Example: python3 recon.py https://filemoon.sx/e/abc123")
    sys.exit(1)

HEADERS = {
    "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/124",
    "Referer": FILEMOON_URL.rsplit("/", 1)[0] + "/",
    "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
    "Accept-Language": "en-US,en;q=0.5",
}

print(f"=== Recon: {FILEMOON_URL[:80]} ===")
ses = requests.Session()
r = ses.get(FILEMOON_URL, headers=HEADERS, timeout=20)
print(f"Status: {r.status_code}, Len: {len(r.text)}, CT: {r.headers.get('Content-Type','')[:40]}")

if r.status_code != 200:
    print(f"❌ Failed. Body: {r.text[:300]}")
    sys.exit(1)

html = r.text

# 1. Direct m3u8?
print("\n[1] Direct m3u8 in HTML?")
m3u8s = re.findall(r'(https?://[^\s"\'<>]+\.m3u8[^\s"\'<>]*)', html)
if m3u8s:
    print(f"  ✅ FOUND {len(m3u8s)}:")
    for u in m3u8s[:3]:
        print(f"    {u[:150]}")
    print("  🎉 Pure HTTP works — write Kotlin now")
    sys.exit(0)
print("  ❌ None in HTML")

# 2. Packer signature
print("\n[2] Dean Edwards packer?")
packer = "eval(function(p,a,c,k,e," in html
print(f"  {'✅ YES — needs unpacking' if packer else '❌ No'}")

# 3. Script blocks with markers
print("\n[3] Script blocks with markers:")
scripts = re.findall(r'<script[^>]*>(.*?)</script>', html, re.DOTALL)
for i, s in enumerate(scripts):
    s = s.strip()
    if len(s) < 30:
        continue
    markers = [m for m in ["eval(", "m3u8", "sources", "file:", "atob", "player", ".mp4", "hls"] if m in s]
    if markers:
        print(f"\n  --- Script #{i} ({len(s)} chars) markers: {markers} ---")
        print(f"  {s[:500]}")
        print(f"  ...")

# 4. Base64 blobs decoding to URLs
print("\n[4] Base64 blobs that decode to URLs:")
blobs = re.findall(r'["\']([A-Za-z0-9+/]{100,}={0,2})["\']', html)
for blob in blobs[:5]:
    try:
        dec = base64.b64decode(blob).decode('utf-8', errors='ignore')
        if "m3u8" in dec or "http" in dec:
            print(f"  ✅ {dec[:200]}")
    except:
        pass

# 5. All URLs with filemoon/cdn/stream/embed
print("\n[5] Interesting URLs in HTML:")
for m in set(re.findall(r'(https?://[^\s"\'<>]*(?:filemoon|cdn|stream|m3u8|embed|hls)[^\s"\'<>]*)', html)):
    if len(m) < 300:
        print(f"  {m[:150]}")

print("\n=== Recon complete ===")
