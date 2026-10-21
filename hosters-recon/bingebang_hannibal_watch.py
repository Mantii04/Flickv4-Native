#!/usr/bin/env python3
"""Fetch the Hannibal 2013 watch page and extract server list + stream URLs."""
import requests, re, json

BASE = "https://bingebang.st"
HAN = "https://bingebang.st/tv/watch/hannibal-a54k9w"
UA = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36"
H = {"User-Agent": UA, "Accept": "text/html,*/*;q=0.8", "Accept-Language": "en-US,en;q=0.9"}

ses = requests.Session()
ses.headers.update(H)

print(f"[1] Fetching {HAN}")
r = ses.get(HAN, timeout=20)
print(f"  {r.status_code}, {len(r.text)}B")
html = r.text

# Save for analysis
with open("hannibal_watch.html", "w") as f:
    f.write(html)
print("  💾 Saved to hannibal_watch.html")

# ============ [2] Search for server names ============
print("\n[2] Looking for nashira / markab / server names")
for kw in ['nashira', 'markab', 'server', 'quality', '1080', '4K', 'source', 'm3u8', 'filemoon', 'dood', 'streamtape', 'mixdrop', 'player', 'sources', 'stream']:
    matches = list(re.finditer(kw, html, re.I))
    if matches:
        print(f"\n  [{kw}] {len(matches)} hit(s):")
        for m in matches[:3]:
            start = max(0, m.start() - 80)
            end = min(len(html), m.start() + 250)
            snippet = html[start:end].replace("\n", " ")
            print(f"    ...{snippet[:300]}...")

# ============ [3] Extract all data-* attributes ============
print("\n[3] All data-* attributes on watch page")
data_attrs = re.findall(r'(data-[a-z\-]+=["\'][^"\']{2,300}["\'])', html)
seen = set()
for d in data_attrs:
    key = d.split('=')[0]
    if key in seen: continue
    seen.add(key)
    print(f"  {d[:220]}")

# ============ [4] Extract all inline scripts ============
print("\n[4] Inline scripts with player/source/stream keywords")
inline = re.findall(r'<script(?![^>]*src)[^>]*>(.*?)</script>', html, re.DOTALL)
for i, s in enumerate(inline):
    s = s.strip()
    if len(s) < 30: continue
    if any(k in s.lower() for k in ['nashira','markab','source','m3u8','quality','player','stream','server', 'hannibal-a54k9w', 'api/']):
        print(f"\n  --- Inline #{i} ({len(s)} chars) ---")
        print(f"  {s[:2000]}")

# ============ [5] Look for JSON blocks with title data ============
print("\n[5] JSON script blocks")
for m in re.finditer(r'<script[^>]+type=["\']application/(?:ld\+json|json)["\'][^>]*>(.*?)</script>', html, re.DOTALL):
    content = m.group(1).strip()
    if len(content) > 20:
        print(f"\n  --- JSON block ({len(content)} chars) ---")
        print(f"  {content[:1500]}")

# ============ [6] Look for meta tags with config ============
print("\n[6] Meta tags with bb- or config")
for m in re.finditer(r'<meta[^>]+name=["\'][^"\']*bb[^"\']*["\'][^>]*>', html):
    print(f"  {m.group(0)[:300]}")

# ============ [7] Check for episode list (the show page should have seasons) ============
print("\n[7] Looking for episodes / seasons data")
for kw in ['episode', 'season', 'data-season', 'data-episode', 'e1', 's1']:
    matches = list(re.finditer(kw, html, re.I))
    if matches:
        print(f"\n  [{kw}] {len(matches)} hit(s):")
        for m in matches[:2]:
            start = max(0, m.start() - 100)
            end = min(len(html), m.start() + 200)
            snippet = html[start:end].replace("\n", " ")
            print(f"    ...{snippet[:300]}...")

# ============ [8] Look for API endpoints in the page ============
print("\n[8] Any /api/ or .m3u8 references in HTML")
for m in set(re.findall(r'(/api/[a-zA-Z0-9/_\-{}:.]+)', html)):
    print(f"  /api/: {m[:120]}")
for m in set(re.findall(r'(https?://[^\s"\'<>]+\.m3u8[^\s"\'<>]*)', html)):
    print(f"  m3u8: {m[:200]}")

# ============ [9] Search for the exact slug pattern to confirm ============
print("\n[9] Confirm Hannibal title ID / slug")
for m in re.finditer(r'hannibal-a54k9w', html, re.I):
    start = max(0, m.start() - 100)
    end = min(len(html), m.start() + 200)
    snippet = html[start:end].replace("\n", " ")
    print(f"  ...{snippet[:300]}...")

print("\n=== DONE ===")
