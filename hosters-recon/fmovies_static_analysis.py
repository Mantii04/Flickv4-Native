#!/usr/bin/env python3
"""Static analysis of fmoviesco.net — download all JS bundles, grep for player logic."""
import requests, re, json, os, sys
from urllib.parse import urljoin

URL = "https://fmoviesco.net/movie/hannibal-2001-29740x/"
BASE = "https://fmoviesco.net"
UA = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/124"
H = {"User-Agent": UA, "Accept": "text/html,*/*;q=0.8", "Accept-Language": "en-US,en;q=0.9"}

ses = requests.Session()
ses.headers.update(H)

# ============ 1. Fetch the page ============
print(f"[1] Fetching {URL}")
r = ses.get(URL, timeout=20)
html = r.text
print(f"    {r.status_code}, {len(html)} bytes")

# ============ 2. Extract every script reference ============
print(f"\n[2] Extracting script references")
# External <script src>
ext_scripts = re.findall(r'<script[^>]+src=["\']([^"\']+)["\']', html, re.I)
# <link rel="modulepreload"> and <link rel="preload" as="script">
module_links = re.findall(r'<link[^>]+href=["\']([^"\']+\.js[^"\']*)["\']', html, re.I)
# Any .js reference in the HTML
js_refs = set(ext_scripts + module_links)
# Also grab JS referenced inside inline scripts (dynamic imports)
for m in re.findall(r'import\(["\']([^"\']+\.js)["\']\)', html):
    js_refs.add(m)

print(f"    Found {len(js_refs)} unique JS URLs:")
for u in sorted(js_refs):
    print(f"      {u[:120]}")

# ============ 3. Download each bundle ============
print(f"\n[3] Downloading JS bundles")
os.makedirs("fmovies_bundles", exist_ok=True)
downloaded = []
for i, ref in enumerate(sorted(js_refs)):
    full_url = ref if ref.startswith("http") else urljoin(BASE, ref)
    try:
        rr = ses.get(full_url, timeout=30)
        if rr.status_code != 200:
            print(f"    [{i}] ❌ {rr.status_code} {ref[:80]}")
            continue
        # Save locally with safe name
        safe = re.sub(r'[^a-zA-Z0-9_.-]', '_', ref.split('?')[0].split('/')[-1])[:80]
        path = f"fmovies_bundles/{i:03d}_{safe}"
        with open(path, "w") as f:
            f.write(rr.text)
        downloaded.append((i, ref, path, rr.text))
        print(f"    [{i}] ✅ {len(rr.text):>8} bytes → {path}")
    except Exception as e:
        print(f"    [{i}] ❌ {str(e)[:60]}")

# ============ 4. Analyze inline scripts too ============
print(f"\n[4] Checking inline scripts")
inline_scripts = re.findall(r'<script(?![^>]*src)[^>]*>(.*?)</script>', html, re.DOTALL)
inline_scripts = [s.strip() for s in inline_scripts if len(s.strip()) > 50]
print(f"    {len(inline_scripts)} inline script(s) >50 chars")

# ============ 5. Grep everything ============
print(f"\n[5] Grepping for player/AJAX/hoster patterns")
print("="*60)

# Patterns to hunt for
patterns = {
    "admin-ajax.php": r'admin-ajax\.php',
    "doo_player_ajax": r'doo_player_ajax',
    "dooplay": r'dooplay',
    "wp-json": r'wp-json',
    "fetch(": r'fetch\s*\(\s*["\'][^"\']{2,150}',
    "$.ajax": r'\$\.ajax\s*\(',
    "$.get(": r'\$\.get\s*\(\s*["\'][^"\']{2,150}',
    "$.post(": r'\$\.post\s*\(\s*["\'][^"\']{2,150}',
    "XMLHttpRequest": r'XMLHttpRequest',
    "axios": r'axios\.(?:get|post)\s*\(\s*["\'][^"\']{2,150}',
}

hoster_names = ['filemoon','doodstream','streamtape','mixdrop','upcloud','vidcloud','voe','vidmoly','luluvdo','streamwish','streamhg','streamsb','streamlare','vidoza','upstream','netu','waaw','2embed','multiembed','embed.su','vidsrc']

# Where to look: inline + all downloaded bundles
sources = [("INLINE", s) for s in inline_scripts] + [(f"bundle#{i}", text) for i, ref, path, text in downloaded]

for label, text in sources:
    findings = []
    
    # API endpoints
    for name, pat in patterns.items():
        for m in re.finditer(pat, text):
            start = max(0, m.start() - 60)
            end = min(len(text), m.start() + 200)
            snippet = text[start:end].replace("\n", " ")
            findings.append((name, snippet))
    
    # Hoster mentions
    for h in hoster_names:
        if h in text.lower():
            idx = text.lower().find(h)
            start = max(0, idx - 100)
            end = min(len(text), idx + 200)
            findings.append((f"hoster:{h}", text[start:end].replace("\n", " ")))
    
    # m3u8 references
    for m in re.finditer(r'["\'][^"\']*\.m3u8[^"\']*["\']', text):
        findings.append(("m3u8", m.group(0)[:200]))
    
    # "player" endpoints
    for m in re.finditer(r'["\'](/[^"\']*(?:player|embed|stream|watch)[^"\']*)["\']', text):
        findings.append(("player-endpoint", m.group(1)[:150]))
    
    if findings:
        print(f"\n--- {label} ({len(text)} chars) ---")
        seen = set()
        for name, snippet in findings[:20]:
            key = (name, snippet[:80])
            if key in seen: continue
            seen.add(key)
            print(f"  [{name}] {snippet[:200]}")

# ============ 6. Also check the HTML directly for data-id hint ============
print("\n" + "="*60)
print("[6] HTML data-id context")
print("="*60)
for m in re.finditer(r'data-id=["\'](\d+)["\']', html):
    start = max(0, m.start() - 200)
    end = min(len(html), m.start() + 300)
    print(f"  ...{html[start:end]}...")
    print()

# ============ 7. Check for inline JS that builds the player ============
print("="*60)
print("[7] HTML around any 'player' / 'embed' / 'watch' term")
print("="*60)
for kw in ['player', 'embed', 'server', 'hoster', 'watch']:
    for m in list(re.finditer(kw, html.lower()))[:3]:
        start = max(0, m.start() - 100)
        end = min(len(html), m.start() + 200)
        snippet = html[start:end].replace("\n", " ")
        if '<div' in snippet or '<script' in snippet or 'ajax' in snippet.lower() or 'id=' in snippet:
            print(f"\n[{kw}] ...{snippet[:300]}...")

print("\n=== DONE ===")
