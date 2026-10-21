#!/usr/bin/env python3
"""Analyze the /play/ page for fmoviesco.net — where the actual player lives."""
import requests, re, os
from urllib.parse import urljoin

PLAY_URL = "https://fmoviesco.net/movie/hannibal-2001-29740x/play/"
BASE = "https://fmoviesco.net"
UA = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/124"
H = {"User-Agent": UA, "Accept": "text/html,*/*;q=0.8", "Accept-Language": "en-US,en;q=0.9",
     "Referer": "https://fmoviesco.net/movie/hannibal-2001-29740x/"}

ses = requests.Session()
ses.headers.update(H)

print(f"[1] Fetching {PLAY_URL}")
r = ses.get(PLAY_URL, timeout=20)
html = r.text
print(f"    {r.status_code}, {len(html)} bytes\n")

# ============ Extract every script + iframe + data-id ============
print("[2] Script refs + iframes + data attrs")
ext_scripts = set(re.findall(r'<script[^>]+src=["\']([^"\']+)["\']', html, re.I))
iframes = re.findall(r'<iframe[^>]+src=["\']([^"\']+)["\']', html, re.I)
data_attrs = re.findall(r'(data-[a-z\-]+=["\'][^"\']{3,200}["\'])', html)

print(f"    {len(ext_scripts)} script(s), {len(iframes)} iframe(s)")
for u in sorted(ext_scripts):
    print(f"      script: {u[:120]}")
for f in iframes[:10]:
    print(f"      iframe: {f[:150]}")

print(f"\n    data-* attrs (unique keys):")
seen = set()
for d in data_attrs:
    key = d.split('=')[0]
    if key in seen: continue
    seen.add(key)
    print(f"      {d[:180]}")

# ============ Download all JS ============
print(f"\n[3] Downloading all JS")
os.makedirs("fmovies_play_bundles", exist_ok=True)
downloaded = []
for i, ref in enumerate(sorted(ext_scripts)):
    full = ref if ref.startswith("http") else (ref if ref.startswith("//") else urljoin(BASE, ref))
    if full.startswith("//"): full = "https:" + full
    try:
        rr = ses.get(full, timeout=30)
        if rr.status_code != 200: continue
        safe = re.sub(r'[^a-zA-Z0-9_.-]', '_', ref.split('?')[0].split('/')[-1])[:80]
        path = f"fmovies_play_bundles/{i:03d}_{safe}"
        with open(path, "w") as f: f.write(rr.text)
        downloaded.append((i, ref, path, rr.text))
        print(f"    [{i}] {len(rr.text):>8}B {ref[-60:]}")
    except Exception as e:
        print(f"    [{i}] err: {e}")

# ============ Grep for everything interesting ============
print(f"\n[4] Grepping bundles")
print("="*60)

hosters = ['filemoon','doodstream','dood.','streamtape','mixdrop','upcloud','vidcloud',
           'voe','vidmoly','luluvdo','streamwish','streamhg','streamsb','vidoza',
           'upstream','netu','waaw','2embed','multiembed','embed.su','vidsrc','filelions','vidhide']

for i, ref, path, text in downloaded:
    findings = []
    
    # Hosters
    for h in hosters:
        if h in text.lower():
            idx = text.lower().find(h)
            findings.append((f"hoster:{h}", text[max(0,idx-80):idx+200]))
    
    # m3u8 strings
    for m in re.finditer(r'["\'][^"\']*\.m3u8[^"\']*["\']', text):
        findings.append(("m3u8", m.group(0)[:200]))
    
    # Embed / player endpoints
    for m in re.finditer(r'["\'](https?://[^"\']{5,200}/(?:embed|e/|player|watch|play)[^"\']*)["\']', text):
        findings.append(("embed-url", m.group(1)[:180]))
    
    # AJAX URLs
    for m in re.finditer(r'["\'](/(?:wp-admin|ajax|api)[^"\']{3,100})["\']', text):
        findings.append(("ajax", m.group(1)[:120]))
    
    # get_player_data / doo_player_ajax
    for kw in ['doo_player_ajax','get_player_data','player_data','getSources','get_server']:
        if kw in text:
            findings.append((kw, f"found at {text.find(kw)}"))
    
    if findings:
        print(f"\n--- bundle#{i} ({ref[-50:]}, {len(text)} chars) ---")
        seen = set()
        for name, snippet in findings[:15]:
            key = (name, str(snippet)[:60])
            if key in seen: continue
            seen.add(key)
            print(f"  [{name}] {snippet[:200]}")

# ============ Look for player data in the HTML itself ============
print("\n" + "="*60)
print("[5] HTML inline player data")
print("="*60)
# Look for typical movie player data blocks
for kw in ['filemoon', 'm3u8', 'embed', '"sources"', 'player_data', 'videoUrl',
           'vidcop', 'TPlayerNv', 'streamUrl', 'hoster']:
    for m in list(re.finditer(kw, html, re.I))[:2]:
        start = max(0, m.start() - 150)
        end = min(len(html), m.start() + 300)
        print(f"\n[{kw}] ...{html[start:end]}...")

# ============ Check the vidcop link more carefully ============
print("\n" + "="*60)
print("[6] Full vidcop / play link context")
print("="*60)
for m in re.finditer(r'vidcop|/play/', html):
    start = max(0, m.start() - 200)
    end = min(len(html), m.start() + 500)
    print(f"\n...{html[start:end]}...\n")
    break

print("\n=== DONE ===")
