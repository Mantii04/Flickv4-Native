#!/usr/bin/env python3
"""Dump ALL inline scripts from the /play/ page and grep for videojs source loading."""
import requests, re, json, base64

PLAY_URL = "https://fmoviesco.net/movie/hannibal-2001-29740x/play/"
UA = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/124"
H = {"User-Agent": UA, "Referer": "https://fmoviesco.net/movie/hannibal-2001-29740x/"}

r = requests.get(PLAY_URL, headers=H, timeout=20)
html = r.text
print(f"Play page: {r.status_code}, {len(html)} bytes\n")

# ============ Extract EVERY inline script ============
print("="*60)
print("[1] ALL inline scripts")
print("="*60)
inline = re.findall(r'<script(?![^>]*src)[^>]*>(.*?)</script>', html, re.DOTALL)
inline = [s.strip() for s in inline if len(s.strip()) > 20]
print(f"{len(inline)} inline script(s) with content >20 chars\n")

for i, s in enumerate(inline):
    print(f"\n{'='*60}")
    print(f"INLINE SCRIPT #{i} ({len(s)} chars)")
    print('='*60)
    print(s[:3000])
    if len(s) > 3000:
        print(f"\n... [truncated, {len(s)-3000} more chars]")

# ============ Grep each for videojs/sources ============
print("\n\n" + "="*60)
print("[2] videojs / source / m3u8 / ajax patterns in inline scripts")
print("="*60)

patterns = [
    r'videojs\s*\([^)]*\)',
    r'video-js',
    r'data-setup\s*=\s*["\'][^"\']+',
    r'sources\s*:\s*\[[^\]]{5,500}\]',
    r'src\s*:\s*["\'][^"\']{5,300}',
    r'type\s*:\s*["\'](?:application/x-mpegURL|video/mp4|application/dash\+xml)["\']',
    r'\.m3u8[^"\']*',
    r'\.mp4[^"\']*',
    r'/(?:ajax|api|player|embed|stream|watch|video)[/?"\'][^\s"\'<>]{2,150}',
    r'\$\.(?:ajax|get|post)\s*\([^)]{5,300}',
    r'fetch\s*\([^)]{5,300}\)',
    r'XMLHttpRequest',
    r'atob\s*\([^)]{5,500}\)',
    r'JSON\.parse\s*\([^)]{5,500}\)',
]

for i, s in enumerate(inline):
    hits = []
    for pat in patterns:
        for m in re.finditer(pat, s):
            start = max(0, m.start() - 80)
            end = min(len(s), m.end() + 200)
            hits.append((pat[:30], s[start:end].replace('\n', ' ')))
    if hits:
        print(f"\n--- inline #{i} ({len(s)} chars) — {len(hits)} hit(s) ---")
        seen = set()
        for name, snippet in hits[:10]:
            key = snippet[:80]
            if key in seen: continue
            seen.add(key)
            print(f"  [{name}] ...{snippet[:250]}...")

# ============ Look for <video> or <video-js> element ============
print("\n" + "="*60)
print("[3] <video> / <video-js> elements")
print("="*60)
for tag in ['video', 'video-js']:
    for m in re.finditer(rf'<{tag}[^>]*>', html, re.I):
        print(f"  {m.group(0)[:300]}")
        # Look for following <source> children
        end = html.find(f'</{tag}>', m.end())
        if end > 0 and end - m.end() < 3000:
            inner = html[m.end():end]
            sources = re.findall(r'<source[^>]*>', inner)
            for src in sources:
                print(f"    child: {src[:300]}")

# ============ Look for data-* attrs that might hold source ============
print("\n" + "="*60)
print("[4] All data-* attributes with potentially relevant values")
print("="*60)
for m in re.finditer(r'(data-[a-z\-]+=["\'][^"\']{10,500}["\'])', html):
    attr = m.group(1)
    if any(k in attr.lower() for k in ['src', 'url', 'stream', 'video', 'player', 'source', 'file', 'm3u8', 'player']):
        print(f"  {attr[:250]}")

# ============ Look for base64 encoded payloads ============
print("\n" + "="*60)
print("[5] Base64 blobs that decode to URLs/JSON")
print("="*60)
for m in re.finditer(r'["\']([A-Za-z0-9+/]{80,}={0,2})["\']', html):
    blob = m.group(1)
    try:
        dec = base64.b64decode(blob).decode('utf-8', errors='ignore')
        if 'http' in dec or 'm3u8' in dec or '"src"' in dec or 'sources' in dec:
            print(f"  Raw: {blob[:60]}...")
            print(f"  Decoded: {dec[:300]}")
    except: pass

# ============ Look at entire body around #video-player ============
print("\n" + "="*60)
print("[6] Full HTML around id='video-player'")
print("="*60)
idx = html.find('id="video-player"')
if idx < 0: idx = html.find("id='video-player'")
if idx >= 0:
    start = max(0, idx - 200)
    end = min(len(html), idx + 4000)
    print(html[start:end])

# ============ Grep for TPlayerNv and vidcop context ============
print("\n" + "="*60)
print("[7] TPlayerNv / vidcop / open_submenu full context")
print("="*60)
for kw in ['TPlayerNv', 'vidcop', 'open_submenu', 'downloadopt']:
    for m in list(re.finditer(kw, html))[:2]:
        start = max(0, m.start() - 300)
        end = min(len(html), m.start() + 1500)
        print(f"\n--- {kw} ---")
        print(html[start:end])
        print()

print("\n=== DONE ===")
