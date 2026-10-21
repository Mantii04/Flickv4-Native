#!/usr/bin/env python3
"""Find Hannibal 2013 page on bingebang.st and extract server names + API endpoints."""
import requests, re, json, os, sys
from urllib.parse import urljoin, quote

BASE = "https://bingebang.st"
UA = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36"
H = {"User-Agent": UA, "Accept": "text/html,*/*;q=0.8", "Accept-Language": "en-US,en;q=0.9"}

ses = requests.Session()
ses.headers.update(H)

# ============ Step 1: Search for Hannibal ============
print("[1] Searching for Hannibal 2013")
search_urls = [
    f"{BASE}/search?q=Hannibal",
    f"{BASE}/search?query=Hannibal",
    f"{BASE}/?s=Hannibal",
    f"{BASE}/search/hannibal",
]
hannibal_links = set()
for su in search_urls:
    try:
        r = ses.get(su, timeout=15)
        print(f"  {su}: {r.status_code}, {len(r.text)}B")
        if r.status_code != 200: continue
        # Look for /tv/ or /show/ or /series/ or /watch/ links
        for m in re.finditer(r'href="(/(?:tv|show|series|watch|title|movie)[^"]*(?:hannibal|3978)[^"]*)"', r.text, re.I):
            hannibal_links.add(m.group(1))
        # Also look for TMDB ID 3978 or IMDB tt2243973
        for m in re.finditer(r'href="([^"]*)"', r.text):
            href = m.group(1)
            if 'hannibal' in href.lower() and not href.startswith('http'):
                hannibal_links.add(href)
    except Exception as e:
        print(f"  {su}: {str(e)[:60]}")

print(f"\n  Found {len(hannibal_links)} Hannibal link(s):")
for l in sorted(hannibal_links)[:20]:
    print(f"    {l}")

# ============ Step 2: Try known URL patterns ============
print("\n[2] Trying known URL patterns for Hannibal 2013")
patterns = [
    "/tv/3978",
    "/tv/hannibal",
    "/tv/hannibal-2013",
    "/show/3978",
    "/series/3978",
    "/watch/tv/3978",
    "/title/3978",
    "/tv/tt2243973",
    "/tv/3978-hannibal",
    "/tv/hannibal-3978",
]
extra_links = set()
for p in patterns:
    url = BASE + p
    try:
        r = ses.get(url, timeout=10, allow_redirects=True)
        marker = "✅" if r.status_code == 200 and len(r.text) > 1000 else "❌"
        print(f"  {marker} {p}: {r.status_code}, {len(r.text)}B, final: {r.url}")
        if r.status_code == 200 and len(r.text) > 10000:
            extra_links.add(r.url)
    except Exception as e:
        print(f"  ❌ {p}: {str(e)[:50]}")

# ============ Step 3: Analyze any successful Hannibal page ============
all_links = list(hannibal_links) + list(extra_links)
if not all_links:
    print("\n❌ Could not find Hannibal page. Trying TMDB API to get canonical slug:")
    # TMDB API
    try:
        tmdb = ses.get("https://api.themoviedb.org/3/tv/3978?api_key=49d5c25978104677e47887dce958c9c0", timeout=10).json()
        print(f"  TMDB: {tmdb.get('name')} ({tmdb.get('first_air_date')})")
        print(f"  Try: {BASE}/tv/3978-{tmdb.get('name','').lower().replace(' ','-')}")
    except: pass
    sys.exit(0)

# Fetch first working link
page_url = all_links[0]
if not page_url.startswith("http"):
    page_url = urljoin(BASE, page_url)

print(f"\n[3] Analyzing {page_url}")
r = ses.get(page_url, timeout=20)
html = r.text
print(f"  Status: {r.status_code}, {len(html)}B")

# Save for inspection
with open("bingebang_hannibal_page.html", "w") as f:
    f.write(html)
print(f"  💾 Saved to bingebang_hannibal_page.html")

# ============ Step 4: Look for server names + API endpoints ============
print("\n[4] Searching page for nashira, markab, and API hints")
for kw in ['nashira', 'markab', '/api/', 'data-server', 'server-name',
           'sources', 'm3u8', 'embed', 'quality', '1080', '720',
           'data-src', 'data-url', 'data-id', 'data-quality']:
    matches = list(re.finditer(kw, html, re.I))
    if matches:
        print(f"\n  [{kw}] {len(matches)} hit(s):")
        for m in matches[:3]:
            start = max(0, m.start() - 100)
            end = min(len(html), m.start() + 250)
            snippet = html[start:end].replace("\n", " ")
            print(f"    ...{snippet[:300]}...")

# ============ Step 5: Check all data-* attributes ============
print("\n[5] All data-* attributes on page")
data_attrs = re.findall(r'(data-[a-z\-]+=["\'][^"\']{3,300}["\'])', html)
seen = set()
for d in data_attrs:
    key = d.split('=')[0]
    if key in seen: continue
    seen.add(key)
    print(f"  {d[:200]}")

# ============ Step 6: Look for inline scripts with player config ============
print("\n[6] Inline scripts with stream/player config")
inline = re.findall(r'<script(?![^>]*src)[^>]*>(.*?)</script>', html, re.DOTALL)
for i, s in enumerate(inline):
    s = s.strip()
    if len(s) < 30: continue
    if any(k in s.lower() for k in ['nashira','markab','server','source','m3u8','quality','player','stream','api/']):
        print(f"\n  --- Inline script #{i} ({len(s)} chars) ---")
        print(f"  {s[:1500]}")

# ============ Step 7: Look at script srcs of this page ============
print("\n[7] Script bundles loaded by this page")
for m in re.finditer(r'<script[^>]+src=["\']([^"\']+)["\']', html, re.I):
    print(f"  {m.group(1)[:150]}")

print("\n=== DONE ===")
