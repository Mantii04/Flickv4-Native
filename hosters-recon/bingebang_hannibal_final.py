#!/usr/bin/env python3
"""Hit /explore search + fetch Hannibal watch page, extract server names."""
import requests, re, json
from urllib.parse import quote

BASE = "https://bingebang.st"
UA = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36"
H = {"User-Agent": UA, "Accept": "text/html,*/*;q=0.8", "Accept-Language": "en-US,en;q=0.9"}

ses = requests.Session()
ses.headers.update(H)

# ============ [1] Real search: /explore?q=Hannibal ============
print("[1] Searching /explore?q=Hannibal")
r = ses.get(f"{BASE}/explore?q=Hannibal", timeout=20)
print(f"  {r.status_code}, {len(r.text)}B")
print(f"  'Hannibal' count: {r.text.lower().count('hannibal')}")

# Extract tv/watch links
watch_links = re.findall(r'href="(/tv/watch/[^"]+)"', r.text)
print(f"  tv/watch links: {len(watch_links)}")
for l in watch_links[:20]:
    print(f"    {l}")

# Also movies
movie_links = re.findall(r'href="(/movie/watch/[^"]+)"', r.text)
if movie_links:
    print(f"  movie/watch links: {len(movie_links)} (first 5):")
    for l in movie_links[:5]:
        print(f"    {l}")

# Hannibal-specific links
hannibal_links = [l for l in watch_links + movie_links if 'hannibal' in l.lower()]
print(f"\n  🎯 Hannibal links: {len(hannibal_links)}")
for l in hannibal_links:
    print(f"    {l}")

# Search with X-Soft-Nav header
print("\n[2] /explore with X-Soft-Nav")
r2 = ses.get(f"{BASE}/explore?q=Hannibal", headers={**H, "X-Soft-Nav": "1"}, timeout=20)
print(f"  {r2.status_code}, {len(r2.text)}B")
if 'hannibal' in r2.text.lower():
    print(f"  ✅ 'Hannibal' found {r2.text.lower().count('hannibal')} times")
    # Find links with X-Soft-Nav response
    links2 = re.findall(r'href="(/tv/watch/[^"]+)"', r2.text)
    for l in links2:
        if 'hannibal' in l.lower():
            print(f"    🎯 {l}")

# ============ [3] Try /tv/watch/hannibal-* slug patterns ============
print("\n[3] Trying /tv/watch/hannibal-* slug patterns")
# Slugs have format: name-{random 6 chars}
# Try common random suffixes... but we can't guess. Let's try fetching search HTML and extracting exact slug from JSON-LD or data attributes.
# First, let's search the explore HTML for JSON blobs that might contain Hannibal's slug
if 'hannibal' in r.text.lower():
    print("  Searching /explore HTML for Hannibal context...")
    for m in list(re.finditer('hannibal', r.text, re.I))[:10]:
        start = max(0, m.start() - 200)
        end = min(len(r.text), m.start() + 300)
        snippet = r.text[start:end].replace("\n", " ")
        print(f"\n  ...{snippet[:400]}...")

# ============ [4] Try to get the real search API ============
print("\n[4] Testing potential search APIs")
search_apis = [
    f"{BASE}/api/search?q=Hannibal",
    f"{BASE}/api/search?query=Hannibal",
    f"{BASE}/api/explore?q=Hannibal",
    f"{BASE}/api/titles?q=Hannibal",
    f"{BASE}/api/search/Hannibal",
]
for api in search_apis:
    try:
        rr = ses.get(api, timeout=10)
        ct = rr.headers.get("Content-Type", "")[:40]
        print(f"  {api}: {rr.status_code}, {len(rr.text)}B, ct={ct}")
        if rr.status_code == 200 and 'json' in ct.lower() and 'hannibal' in rr.text.lower():
            print(f"    🎯 Hannibal in response!")
            print(f"    {rr.text[:500]}")
    except Exception as e:
        print(f"  {api}: {str(e)[:50]}")

# ============ [5] Try direct slug guesses for the Hannibal watch page ============
print("\n[5] Testing slug patterns for Hannibal 2013")
# Slug format: {title-slug}-{6chars}
# We can't guess the 6chars, but if the site has canonical URLs we might find them
# Try some obvious things:
slugs = [
    "hannibal",
    "hannibal-2013",
    "hannibal-tt2243973",
    "hannibal-3978",
]
for slug in slugs:
    try:
        rr = ses.get(f"{BASE}/tv/watch/{slug}", timeout=10, allow_redirects=False)
        print(f"  /tv/watch/{slug}: {rr.status_code}")
        if rr.status_code == 301 or rr.status_code == 302:
            print(f"    → redirect to: {rr.headers.get('Location', '')}")
        elif rr.status_code == 200 and len(rr.text) > 50000:
            print(f"    ✅ REAL PAGE ({len(rr.text)}B)")
    except Exception as e:
        print(f"  /tv/watch/{slug}: {str(e)[:50]}")

# ============ [6] Check homepage for sitemap or JSON index ============
print("\n[6] Sitemap and JSON index hints")
for path in ['/sitemap.xml', '/sitemap_index.xml', '/tv', '/movies',
             '/api/tv', '/api/movies', '/api/titles']:
    try:
        rr = ses.get(BASE + path, timeout=10)
        ct = rr.headers.get("Content-Type", "")[:30]
        print(f"  {path}: {rr.status_code}, {len(rr.text)}B, ct={ct}")
        if rr.status_code == 200 and 'hannibal' in rr.text.lower():
            print(f"    🎯 Hannibal found!")
    except: pass

# ============ [7] Look at the full explore response for Hannibal (even if count is 0) ============
print("\n[7] /explore?q=Hannibal — full structure sample")
# Save for later
with open("explore_hannibal.html", "w") as f:
    f.write(r.text)
print("  💾 Saved to explore_hannibal.html")
# Check for data-page attribute
page_attr = re.search(r'data-page=["\']([^"\']+)["\']', r.text)
if page_attr:
    print(f"  data-page: {page_attr.group(1)}")
# Check for any script with title data
for m in re.finditer(r'<script type="application/json"[^>]*>(.*?)</script>', r.text, re.DOTALL):
    print(f"\n  JSON block ({len(m.group(1))} chars):")
    print(f"  {m.group(1)[:500]}")

print("\n=== DONE ===")
