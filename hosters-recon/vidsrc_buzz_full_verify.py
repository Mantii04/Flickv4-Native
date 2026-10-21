import requests, re, json, subprocess

BASE = "https://vidsrc.buzz"
UA = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/124"
H = {"User-Agent": UA, "Origin": BASE, "Referer": f"{BASE}/"}

def probe(title, imdb_id, is_tv=False, season=1, episode=1):
    print(f"\n{'='*70}")
    print(f"{title} ({'TV' if is_tv else 'Movie'}) — imdb={imdb_id}")
    print('='*70)
    
    ses = requests.Session()
    ses.headers.update(H)
    
    # 1. Embed page
    if is_tv:
        url = f"{BASE}/embed/tv/{imdb_id}/{season}/{episode}"
    else:
        url = f"{BASE}/embed/movie/{imdb_id}"
    
    r = ses.get(url, timeout=20)
    print(f"[1] Embed: {r.status_code}, {len(r.text)}B")
    
    q_start = r.text.find("var Q = ")
    if q_start == -1:
        print("    ❌ No Q object")
        return
    q_end = r.text.find("};", q_start)
    q = json.loads(r.text[q_start+8:q_end+1])
    
    servers = q.get("ssr", {}).get("servers", [])
    t = q.get("t", "")
    print(f"[2] Servers exposed: {len(servers)}")
    
    # 2. Probe each server
    for i, srv in enumerate(servers):
        name = srv.get("name", "?")
        ref = srv.get("ref", "")
        print(f"\n    [{i}] {name}")
        
        api = f"{BASE}/pl/api.php?a=play&ref={requests.utils.quote(ref)}&t={requests.utils.quote(t)}"
        ar = ses.get(api, headers={**H, "Referer": url, "X-Requested-With": "XMLHttpRequest"}, timeout=15)
        
        if ar.status_code != 200:
            print(f"        API {ar.status_code}: {ar.text[:80]}")
            continue
        
        try:
            j = ar.json()
        except:
            print(f"        Not JSON: {ar.text[:80]}")
            continue
        
        if "url" not in j:
            print(f"        No URL in response: {j}")
            continue
        
        stream_path = j["url"]
        m3u8_url = f"{BASE}{stream_path}" if stream_path.startswith("/") else stream_path
        print(f"        _stream: {m3u8_url[-50:]}")
        
        # 3. Fetch m3u8 with proper headers
        mr = ses.get(m3u8_url, headers={**H, "Referer": url}, timeout=15)
        print(f"        M3U8 fetch: {mr.status_code}, {len(mr.text)}B, CT: {mr.headers.get('content-type','')[:30]}")
        
        if not mr.text.startswith('#EXTM3U'):
            print(f"        ⚠️ Not a playlist. Preview: {mr.text[:100]}")
            continue
        
        # 4. Check resolutions in master playlist
        resolutions = re.findall(r'RESOLUTION=(\d+x\d+)', mr.text)
        
        if resolutions:
            heights = [int(r.split('x')[1]) for r in resolutions]
            max_h = max(heights)
            print(f"        Resolutions: {', '.join(resolutions)}")
            print(f"        MAX: {max_h}p", end="")
            if max_h >= 1080:
                print(f"  🎉 1080p+")
            elif max_h >= 720:
                print(f"  (720p)")
            else:
                print()
        else:
            # Single stream — probe the first segment URL or run ffprobe on the m3u8
            print(f"        Single stream (no master tags)")
            # Run ffprobe to check actual resolution
            res = subprocess.run([
                "ffprobe", "-v", "error", "-select_streams", "v:0",
                "-show_entries", "stream=width,height",
                "-of", "csv=p=0",
                m3u8_url
            ], capture_output=True, text=True, timeout=20)
            if res.stdout.strip():
                print(f"        ffprobe: {res.stdout.strip()}")

print("="*70)
print("VidSrc.buzz — Full Multi-Title Verification")
print("="*70)

# Test titles — TV + movies at various ages
probe("Hannibal S1E1", "tt2243973", is_tv=True, season=1, episode=1)
probe("Breaking Bad S1E1", "tt0903747", is_tv=True, season=1, episode=1)
probe("The Last of Us S1E1", "tt3581920", is_tv=True, season=1, episode=1)
probe("Inception", "tt1375666")
probe("Dune Part Two", "tt15239678")
probe("The Batman", "tt1877830")

print("\n" + "="*70)
print("Done.")
print("="*70)
