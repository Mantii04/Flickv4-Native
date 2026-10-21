#!/usr/bin/env python3
"""Fetch the /tv/play/ page — where the servers nashira/markab live."""
import requests, re, json

BASE = "https://bingebang.st"
PLAY = "https://bingebang.st/tv/play/hannibal-a54k9w"
UA = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36"
H = {
    "User-Agent": UA,
    "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
    "Accept-Language": "en-US,en;q=0.9",
    "Referer": "https://bingebang.st/tv/watch/hannibal-a54k9w",
}

ses = requests.Session()
ses.headers.update(H)

# Warm up: visit the watch page first to set cookies
print("[0] Warming session with watch page")
warm = ses.get("https://bingebang.st/tv/watch/hannibal-a54k9w", timeout=15)
print(f"  {warm.status_code}, cookies: {dict(ses.cookies)}")

print(f"\n[1] Fetching {PLAY}")
r = ses.get(PLAY, timeout=20)
print(f"  {r.status_code}, {len(r.text)}B")
html = r.text

with open("hannibal_play.html", "w") as f:
    f.write(html)
print(f"  💾 Saved to hannibal_play.html")

# ============ [2] Search for nashira/markab and servers ============
print("\n[2] Server name search")
for kw in ['nashira', 'markab', 'server', 'source', 'stream', 'm3u8', '1080',
           '4k', 'quality', 'player', 'iframe', 'embed', 'sub', 'dub']:
    matches = list(re.finditer(kw, html, re.I))
    if matches:
        print(f"\n  [{kw}] {len(matches)} hit(s):")
        for m in matches[:3]:
            start = max(0, m.start() - 100)
            end = min(len(html), m.start() + 250)
            snippet = html[start:end].replace("\n", " ")
            print(f"    ...{snippet[:300]}...")

# ============ [3] All data-* attributes ============
print("\n[3] All data-* attributes")
data_attrs = re.findall(r'(data-[a-z\-]+=["\'][^"\']{2,300}["\'])', html)
seen = set()
for d in data_attrs:
    key = d.split('=')[0]
    if key in seen: continue
    seen.add(key)
    print(f"  {d[:250]}")

# ============ [4] Inline JSON config blocks ============
print("\n[4] Inline JSON config (script type=application/json)")
for m in re.finditer(r'<script[^>]+type=["\']application/(?:ld\+json|json)["\'][^>]*>(.*?)</script>', html, re.DOTALL):
    content = m.group(1).strip()
    if len(content) > 30 and ('server' in content.lower() or 'source' in content.lower()
                               or 'nashira' in content.lower() or 'markab' in content.lower()
                               or 'stream' in content.lower() or 'play' in content.lower()):
        print(f"\n  --- JSON block ({len(content)} chars) ---")
        print(f"  {content[:2500]}")

# ============ [5] All script srcs on play page ============
print("\n[5] Script bundles on play page")
for m in re.finditer(r'<script[^>]+src=["\']([^"\']+)["\']', html, re.I):
    print(f"  {m.group(1)[:150]}")

# ============ [6] Inline scripts with server/player logic ============
print("\n[6] Inline scripts with player/server/stream keywords")
inline = re.findall(r'<script(?![^>]*src)[^>]*>(.*?)</script>', html, re.DOTALL)
for i, s in enumerate(inline):
    s = s.strip()
    if len(s) < 50: continue
    if any(k in s.lower() for k in ['nashira','markab','server','source','m3u8',
                                     'stream','player','api/','fetch(','quality']):
        print(f"\n  --- Inline #{i} ({len(s)} chars) ---")
        print(f"  {s[:2500]}")

# ============ [7] Look for iframe / video element ============
print("\n[7] <iframe>, <video>, <source> elements")
for m in re.finditer(r'<(iframe|video|source)[^>]*>', html, re.I):
    print(f"  {m.group(0)[:300]}")

# ============ [8] API endpoints referenced ============
print("\n[8] API endpoints in play page")
for m in set(re.findall(r'(/api/[a-zA-Z0-9/_\-{}:.]+)', html)):
    print(f"  {m[:150]}")

# ============ [9] Any hoster names ============
print("\n[9] Hoster domain mentions")
for kw in ['filemoon','dood','streamtape','mixdrop','upcloud','vidcloud',
           'voe','vidmoly','streamwish','streamhg','streamsb','vidsrc','embed.su',
           'vixsrc','vidlink','vidfast']:
    if kw in html.lower():
        idx = html.lower().find(kw)
        print(f"  🎯 {kw}: ...{html[max(0,idx-100):idx+200]}...")

print("\n=== DONE ===")
