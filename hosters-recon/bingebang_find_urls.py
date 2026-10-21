#!/usr/bin/env python3
"""Extract URL patterns from bingebang.st homepage + search results."""
import requests, re, json
from urllib.parse import urljoin
from collections import Counter

BASE = "https://bingebang.st"
UA = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36"
H = {"User-Agent": UA, "Accept": "text/html,*/*;q=0.8", "Accept-Language": "en-US,en;q=0.9"}

ses = requests.Session()
ses.headers.update(H)

# ============ [1] Homepage link patterns ============
print("[1] Fetching homepage and extracting link patterns")
r = ses.get(BASE + "/", timeout=20)
html = r.text
print(f"  {r.status_code}, {len(html)}B\n")

hrefs = re.findall(r'href="([^"]+)"', html)
print(f"  Total hrefs: {len(hrefs)}")

# Categorize by path structure
patterns = Counter()
samples = {}
for h in hrefs:
    if h.startswith('http') or h.startswith('#') or h.startswith('javascript'):
        continue
    # Extract path pattern: replace IDs/slugs with placeholders
    parts = h.strip('/').split('/')
    if not parts or not parts[0]:
        continue
    if len(parts) == 1:
        pat = "/" + parts[0]
    else:
        # Replace second segment (likely ID/slug) with placeholder
        pat = "/" + parts[0] + "/{...}"
        if len(parts) > 2:
            pat += "/" + "/".join(["{...}"] * (len(parts)-1))
    patterns[pat] += 1
    if pat not in samples:
        samples[pat] = h

print("\n  URL patterns (path structures):")
for pat, cnt in patterns.most_common(30):
    sample = samples.get(pat, "")
    print(f"    {cnt:>4}x  {pat:<40}  e.g. {sample[:80]}")

# ============ [2] Any href containing "tv" or "show" or "series" ============
print("\n[2] All hrefs with tv/show/series/movie/watch in them")
seen = set()
for h in hrefs:
    if any(k in h.lower() for k in ['/tv/', '/show/', '/series/', '/movie/', '/watch/', '/play/']):
        if h not in seen:
            seen.add(h)
            print(f"  {h[:140]}")

# ============ [3] Search results page analysis ============
print("\n\n[3] Search page: /?s=Hannibal")
sr = ses.get(BASE + "/?s=Hannibal", timeout=20)
print(f"  {sr.status_code}, {len(sr.text)}B")

# Does the returned HTML contain "Hannibal"?
if 'hannibal' in sr.text.lower():
    print(f"  ✅ 'Hannibal' appears {sr.text.lower().count('hannibal')} times")
    # Find where
    for m in list(re.finditer('hannibal', sr.text, re.I))[:5]:
        start = max(0, m.start() - 150)
        end = min(len(sr.text), m.start() + 250)
        snippet = sr.text[start:end].replace("\n", " ")
        print(f"\n    ...{snippet[:350]}...")
else:
    print(f"  ❌ 'Hannibal' NOT found in search results page")
    # Show a chunk of the page to see structure
    print(f"\n  Body sample (first 2000 chars):")
    print(sr.text[2000:4000])

# ============ [4] Try search with the soft-nav header ============
print("\n\n[4] Search with X-Soft-Nav header (SPA SSR mode)")
sr2 = ses.get(BASE + "/?s=Hannibal", headers={**H, "X-Soft-Nav": "1"}, timeout=20)
print(f"  {sr2.status_code}, {len(sr2.text)}B")
if 'hannibal' in sr2.text.lower():
    print(f"  ✅ Hannibal found {sr2.text.lower().count('hannibal')} times")

# ============ [5] Look for data attributes on homepage ============
print("\n\n[5] data-* attributes on homepage")
data_attrs = re.findall(r'(data-[a-z\-]+=["\'][^"\']{1,200}["\'])', html)
seen = set()
for d in data_attrs:
    key = d.split('=')[0]
    if key in seen: continue
    seen.add(key)
    print(f"  {d[:200]}")

# ============ [6] Look at hero-slide data ============
print("\n[6] hero-slide element context")
idx = html.find('hero-slide')
if idx >= 0:
    start = max(0, idx - 200)
    end = min(len(html), idx + 1500)
    print(html[start:end])

# ============ [7] Look at the search results page structure ============
print("\n\n[7] /?s=Hannibal page — first 3000 chars")
print(sr.text[1000:4000])

print("\n=== DONE ===")
