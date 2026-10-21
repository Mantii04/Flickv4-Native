#!/usr/bin/env python3
"""Hunt app.bundle.min.js for search/title/stream API endpoints and route patterns."""
import re, json

bundle = open("bingebang_bundles/000_app.bundle.min.js").read() if False else None
# Load from saved file
import os
for fn in os.listdir("bingebang_bundles"):
    if "app.bundle" in fn:
        bundle = open(f"bingebang_bundles/{fn}").read()
        print(f"Loaded {fn}: {len(bundle)} chars\n")
        break

if not bundle:
    print("app.bundle not found")
    exit(1)

# ============ [1] All /api/ path literals ============
print("="*60)
print("[1] All /api/ path literals")
print("="*60)
api_paths = set()
for m in re.finditer(r'["\'`](/api/[a-zA-Z0-9/_\-{}:.]+)["\'`]', bundle):
    api_paths.add(m.group(1))
for m in re.finditer(r'["\'`](api/[a-zA-Z0-9/_\-{}:.]+)["\'`]', bundle):
    api_paths.add("/" + m.group(1))
for p in sorted(api_paths):
    print(f"  {p}")

# ============ [2] Search / find / title / tv / show patterns ============
print("\n" + "="*60)
print("[2] Search / find / title / tv / show API patterns")
print("="*60)
for kw in ['search', 'find', 'lookup', 'query', '/tv/', '/show/', '/series/',
           '/title/', '/movie/', '/watch/', '/play/', 'episode', 'season']:
    for m in list(re.finditer(re.escape(kw), bundle, re.I))[:3]:
        start = max(0, m.start() - 80)
        end = min(len(bundle), m.start() + 200)
        snippet = bundle[start:end].replace("\n"," ")
        # Only show if it looks like a path or URL
        if '/api/' in snippet or '"' in snippet and ('/' + kw in snippet or kw + '/' in snippet):
            print(f"\n  [{kw}] ...{snippet[:280]}...")
            break

# ============ [3] Route definitions (React Router / similar) ============
print("\n" + "="*60)
print("[3] Client-side route patterns")
print("="*60)
# React Router uses: {path: "/tv/:id", element: ...} or {path:"/show/:slug"}
route_patterns = [
    r'path\s*:\s*["\'](/[^"\']*:[a-z]+[^"\']*)["\']',
    r'["\'](/tv/:[a-z]+[a-z/]*)["\']',
    r'["\'](/show/:[a-z]+[a-z/]*)["\']',
    r'["\'](/movie/:[a-z]+[a-z/]*)["\']',
    r'["\'](/watch/:[a-z]+[a-z/]*)["\']',
    r'["\'](/series/:[a-z]+[a-z/]*)["\']',
    r'["\'](/title/:[a-z]+[a-z/]*)["\']',
]
routes = set()
for pat in route_patterns:
    for m in re.finditer(pat, bundle):
        routes.add(m.group(1))
for r in sorted(routes):
    print(f"  {r}")

# ============ [4] Look for the SPA base URL and router config ============
print("\n" + "="*60)
print("[4] Router configuration hints")
print("="*60)
for kw in ['createBrowserRouter', 'BrowserRouter', 'Routes', 'createRoutesFromElements',
           'Route', 'useNavigate', 'href=', 'history.pushState', 'router']:
    for m in list(re.finditer(re.escape(kw), bundle))[:2]:
        start = max(0, m.start() - 100)
        end = min(len(bundle), m.start() + 250)
        snippet = bundle[start:end].replace("\n"," ")
        print(f"\n  [{kw}] ...{snippet[:250]}...")

# ============ [5] Server / source / stream API patterns ============
print("\n" + "="*60)
print("[5] Server/source/stream API patterns")
print("="*60)
for kw in ['source', 'stream', 'playlist', 'm3u8', 'quality', 'server', 'hls',
           'player', 'video', 'resolution']:
    for m in list(re.finditer(re.escape(kw), bundle, re.I))[:3]:
        start = max(0, m.start() - 80)
        end = min(len(bundle), m.start() + 200)
        snippet = bundle[start:end].replace("\n"," ")
        if '/api/' in snippet or 'fetch' in snippet or 'src' in snippet.lower():
            print(f"\n  [{kw}] ...{snippet[:280]}...")
            break

# ============ [6] String table extraction — decompile the minified names ============
print("\n" + "="*60)
print("[6] Long string literals that might be API endpoints or keys")
print("="*60)
strings = set(re.findall(r'["\']([a-zA-Z0-9_\-:/.?=&]{15,200})["\']', bundle))
# Filter to likely API-ish
interesting = [s for s in strings if any(k in s.lower() for k in 
    ['/api/', 'search', 'source', 'stream', 'quality', 'server', 'nashira', 'markab',
     'tmdb', 'imdb', 'episode', 'season'])]
for s in sorted(set(interesting))[:40]:
    print(f"  {s}")

# ============ [7] Explicit check: are nashira/markab anywhere ============
print("\n" + "="*60)
print("[7] nashira / markab direct search in bundle")
print("="*60)
for kw in ['nashira', 'markab', 'Nashira', 'Markab']:
    idx = bundle.find(kw)
    if idx >= 0:
        print(f"  ✅ FOUND '{kw}' at offset {idx}")
        print(f"    ...{bundle[max(0,idx-150):idx+300]}...")
    else:
        print(f"  ❌ '{kw}' NOT in bundle")

# ============ [8] TMDB/IMDB usage — how titles are keyed ============
print("\n" + "="*60)
print("[8] TMDB / IMDB usage")
print("="*60)
for kw in ['tmdb', 'imdb', 'themoviedb', 'api_key', 'apikey']:
    for m in list(re.finditer(kw, bundle, re.I))[:2]:
        start = max(0, m.start() - 100)
        end = min(len(bundle), m.start() + 250)
        snippet = bundle[start:end].replace("\n"," ")
        print(f"\n  [{kw}] ...{snippet[:280]}...")

print("\n=== DONE ===")
