#!/usr/bin/env python3
"""Extract exact API paths from bundle + try sitemap + CSRF flow."""
import requests, re, json, os

BASE = "https://bingebang.st"
UA = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36"
H = {"User-Agent": UA, "Accept": "text/html,*/*;q=0.8", "Accept-Language": "en-US,en;q=0.9"}

ses = requests.Session()
ses.headers.update(H)

# ============ [1] Sitemap ============
print("[1] Sitemap.xml")
r = ses.get(f"{BASE}/sitemap.xml", timeout=15)
print(f"  {r.status_code}, {len(r.text)}B")
print(r.text[:1500])

# Extract sitemap URLs
sitemap_urls = re.findall(r'<loc>([^<]+)</loc>', r.text)
print(f"\n  Found {len(sitemap_urls)} loc entries")
for u in sitemap_urls[:10]:
    print(f"    {u}")

# If sitemap index, fetch each child
if any('sitemap' in u.lower() for u in sitemap_urls):
    print("\n  Sitemap index detected, fetching children...")
    for u in sitemap_urls[:5]:
        try:
            cr = ses.get(u, timeout=15)
            print(f"    {u}: {cr.status_code}, {len(cr.text)}B")
            if 'hannibal' in cr.text.lower():
                print(f"      🎯 Hannibal found!")
                for m in list(re.finditer(r'<loc>([^<]*hannibal[^<]*)</loc>', cr.text, re.I))[:3]:
                    print(f"        {m.group(1)}")
        except: pass

# ============ [2] Extract API paths from bundle ============
print("\n\n[2] Extracting API paths from app bundle")
bundle = None
for fn in os.listdir("bingebang_bundles"):
    if "app.bundle" in fn:
        bundle = open(f"bingebang_bundles/{fn}").read()
        break

if bundle:
    # Find all ne("path" or ne(`path`) calls
    ne_paths = set()
    for m in re.finditer(r'\bne\s*\(\s*["\'`]([^"\'`]{2,80})["\'`]', bundle):
        ne_paths.add(("POST", m.group(1)))
    # Find all T("path") GET calls
    t_paths = set()
    for m in re.finditer(r'\bT\s*\(\s*["\'`]([^"\'`]{2,80})["\'`]', bundle):
        t_paths.add(("GET", m.group(1)))
    
    print(f"  POST paths via ne(): {len(ne_paths)}")
    for method, p in sorted(ne_paths)[:40]:
        print(f"    [{method}] {p}")
    
    print(f"\n  GET paths via T(): {len(t_paths)}")
    for method, p in sorted(t_paths)[:40]:
        print(f"    [{method}] {p}")
    
    # Also search for template literals with /api/
    print("\n  Template literal /api/ calls:")
    for m in re.finditer(r'`/api/[^`]{2,80}`', bundle):
        print(f"    {m.group(0)[:100]}")
    
    # Look for "search" endpoint references
    print("\n  References to 'search' in bundle:")
    for m in list(re.finditer(r'["\'`]([^"\'`]*search[^"\'`]*)["\'`]', bundle, re.I))[:20]:
        print(f"    {m.group(1)[:120]}")

# ============ [3] Get CSRF and try likely search endpoints ============
print("\n\n[3] CSRF + search endpoint probes")
csrf = ""
try:
    cr = ses.get(f"{BASE}/api/auth/csrf", timeout=10)
    print(f"  /api/auth/csrf: {cr.status_code}, {cr.text[:200]}")
    try:
        csrf = cr.json().get("token", "")
    except: pass
except Exception as e:
    print(f"  csrf error: {e}")

if csrf:
    print(f"  ✅ CSRF token: {csrf[:30]}...")
    
    # Try POST to likely endpoints
    for path in ["search", "explore", "titles/search", "catalog/search"]:
        try:
            rr = ses.post(f"{BASE}/api/{path}",
                json={"q": "Hannibal", "query": "Hannibal"},
                headers={**H, "X-CSRF-Token": csrf, "Content-Type": "application/json",
                         "Referer": f"{BASE}/explore?q=Hannibal"},
                timeout=15)
            ct = rr.headers.get("Content-Type", "")[:40]
            print(f"\n  POST /api/{path}: {rr.status_code}, {len(rr.text)}B, ct={ct}")
            print(f"    {rr.text[:400]}")
        except Exception as e:
            print(f"  POST /api/{path}: {str(e)[:60]}")
else:
    print("  ⚠️  No CSRF — trying GET endpoints without auth")
    for path in ["search", "explore", "search?q=Hannibal"]:
        try:
            rr = ses.get(f"{BASE}/api/{path}", timeout=10)
            print(f"  GET /api/{path}: {rr.status_code}, {rr.text[:200]}")
        except: pass

# ============ [4] Look at JS-embedded data-page and explore page structure ============
print("\n\n[4] Explore page data attributes")
if os.path.exists("explore_hannibal.html"):
    with open("explore_hannibal.html") as f:
        eh = f.read()
    # Find all data-* on the results section
    for m in re.finditer(r'(data-[a-z\-]+=["\'][^"\']{0,200}["\'])', eh):
        attr = m.group(1)
        if 'search' in attr.lower() or 'query' in attr.lower() or 'q=' in attr.lower():
            print(f"  {attr[:200]}")
    
    # Look for meta tag with the query or an api config
    for m in re.finditer(r'<meta[^>]+>', eh):
        tag = m.group(0)
        if any(k in tag.lower() for k in ['bb-', 'csrf', 'search', 'api']):
            print(f"  {tag[:200]}")

# ============ [5] Check the /tv page for Hannibal ============
print("\n\n[5] /tv page search for Hannibal")
tv = ses.get(f"{BASE}/tv", timeout=15)
print(f"  /tv: {tv.status_code}, {len(tv.text)}B")
if 'hannibal' in tv.text.lower():
    print(f"  🎯 Hannibal found in /tv page!")
    for m in list(re.finditer(r'href="(/tv/watch/[^"]*hannibal[^"]*)"', tv.text, re.I))[:3]:
        print(f"    {m.group(1)}")

# Also search paginated TV listings
for page in range(1, 6):
    tvp = ses.get(f"{BASE}/tv?page={page}", timeout=15)
    if 'hannibal' in tvp.text.lower():
        print(f"  🎯 Hannibal found on /tv?page={page}")
        for m in re.finditer(r'href="(/tv/watch/[^"]*hannibal[^"]*)"', tvp.text, re.I):
            print(f"    {m.group(1)}")
        break

print("\n=== DONE ===")
