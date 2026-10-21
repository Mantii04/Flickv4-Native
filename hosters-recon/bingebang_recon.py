#!/usr/bin/env python3
"""
Static analysis of bingebang.st to find the API for server 'nashira' and 'markab'.
"""
import requests, re, json, os, sys
from urllib.parse import urljoin

BASE = "https://bingebang.st"
TARGET = f"{BASE}/"
UA = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36"
HEADERS = {
    "User-Agent": UA,
    "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8",
    "Accept-Language": "en-US,en;q=0.9",
}

ses = requests.Session()
ses.headers.update(HEADERS)

print(f"=== Fetching {TARGET} ===")
try:
    r = ses.get(TARGET, timeout=20)
    print(f"Status: {r.status_code}, Length: {len(r.text)}")
    if r.status_code != 200:
        print("Response body (first 500 chars):")
        print(r.text[:500])
        sys.exit(1)
    html = r.text
except Exception as e:
    print(f"Failed to fetch: {e}")
    sys.exit(1)

# === Extract all script URLs ===
script_urls = set()
for m in re.finditer(r'<script[^>]+src=["\']([^"\']+)["\']', html, re.I):
    script_urls.add(m.group(1))
for m in re.finditer(r'<link[^>]+href=["\']([^"\']+\.js[^"\']*)["\']', html, re.I):
    script_urls.add(m.group(1))

print(f"\nFound {len(script_urls)} script URL(s):")
for u in sorted(script_urls):
    print(f"  {u[:120]}")

# === Download and search each script ===
os.makedirs("bingebang_bundles", exist_ok=True)
downloaded = []

print("\n=== Downloading and analyzing scripts ===")
for i, ref in enumerate(sorted(script_urls)):
    full_url = ref if ref.startswith("http") else urljoin(BASE, ref)
    if full_url.startswith("//"): full_url = "https:" + full_url
    try:
        rr = ses.get(full_url, timeout=30)
        if rr.status_code != 200:
            print(f"  [{i}] ❌ {rr.status_code} {ref[:80]}")
            continue
        text = rr.text
        safe = re.sub(r'[^a-zA-Z0-9_.-]', '_', ref.split('?')[0].split('/')[-1])[:80]
        path = f"bingebang_bundles/{i:03d}_{safe}"
        with open(path, "w") as f:
            f.write(text)
        downloaded.append((i, ref, text))
        print(f"  [{i}] ✅ {len(text):>8} bytes {ref[-60:]}")
    except Exception as e:
        print(f"  [{i}] ❌ {str(e)[:60]}")

# === Grep for patterns ===
print("\n" + "="*60)
print("=== Searching for server names, API endpoints, and m3u8 ===")
print("="*60)

# Patterns to hunt for
patterns = {
    "nashira": r'nashira',
    "markab": r'markab',
    "m3u8": r'\.m3u8',
    "api/": r'/api/',
    "graphql": r'graphql',
    "trpc": r'trpc',
    "fetch(": r'fetch\s*\(',
    "axios": r'axios\.(?:get|post)',
    "$.ajax": r'\$\.ajax',
    "sources": r'sources',
    "playlist": r'playlist',
    "embed": r'embed',
    "stream": r'stream',
}

# Also look for hoster names
hosters = ['filemoon','doodstream','streamtape','mixdrop','upcloud','vidcloud',
           'voe','vidmoly','luluvdo','streamwish','streamhg','streamsb','vidoza',
           'upstream','netu','waaw','2embed','multiembed','embed.su','vidsrc',
           'nashira','markab']

for i, ref, text in downloaded:
    findings = []
    
    # Pattern matches
    for name, pat in patterns.items():
        for m in re.finditer(pat, text, re.I):
            start = max(0, m.start() - 60)
            end = min(len(text), m.start() + 200)
            snippet = text[start:end].replace("\n", " ")
            findings.append((name, snippet))
    
    # Hoster mentions
    for h in hosters:
        if h in text.lower():
            idx = text.lower().find(h)
            start = max(0, idx - 80)
            end = min(len(text), idx + 200)
            findings.append((f"hoster:{h}", text[start:end].replace("\n", " ")))
    
    # Direct URLs containing m3u8
    for m in re.finditer(r'["\'][^"\']*\.m3u8[^"\']*["\']', text):
        findings.append(("m3u8-url", m.group(0)[:200]))
    
    # API-like URL patterns
    for m in re.finditer(r'["\'](https?://[^"\']{5,200}/(?:api|embed|player|watch|play|stream)[^"\']*)["\']', text):
        findings.append(("api-url", m.group(1)[:180]))
    
    if findings:
        print(f"\n--- script[{i}] {ref[-60:]} ({len(text)} chars) ---")
        seen = set()
        for name, snippet in findings[:20]:
            key = (name, snippet[:80])
            if key in seen: continue
            seen.add(key)
            print(f"  [{name}] {snippet[:250]}")

# === Also search the HTML itself ===
print("\n" + "="*60)
print("=== Searching the HTML for server names and API hints ===")
print("="*60)

for kw in ['nashira', 'markab', 'api', 'm3u8', 'server', 'player', 'source']:
    for m in list(re.finditer(kw, html, re.I))[:3]:
        start = max(0, m.start() - 100)
        end = min(len(html), m.start() + 200)
        snippet = html[start:end].replace("\n", " ")
        if 'script' in snippet or 'div' in snippet or 'href' in snippet:
            print(f"\n[{kw}] ...{snippet[:300]}...")

print("\n=== DONE ===")
