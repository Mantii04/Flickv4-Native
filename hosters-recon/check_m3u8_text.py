import requests, re, json

UA = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/124"
H = {"User-Agent": UA}
IMDB = "tt2243973"

def get_stream_url(domain, api_path):
    url = f"https://{domain}/embed/tv/{IMDB}/1/1"
    r = requests.get(url, headers=H, timeout=15)
    q_start = r.text.find("var Q = ")
    if q_start == -1: return None
    q = json.loads(r.text[q_start+8:r.text.find("};", q_start)+1])
    ref = q.get("ssr", {}).get("servers", [{}])[0].get("ref", "")
    api = f"https://{domain}{api_path}?a=play&ref={requests.utils.quote(ref)}&t={requests.utils.quote(q.get('t',''))}"
    ar = requests.get(api, headers={**H, "Referer": url}, timeout=15)
    try:
        j = ar.json()
        if "url" in j:
            return f"https://{domain}{j['url']}"
    except: pass
    return None

def check_m3u8(name, m3u8_url, referer):
    print(f"\n--- {name} ---")
    if not m3u8_url:
        print("  ❌ Failed to get stream URL")
        return
        
    r = requests.get(m3u8_url, headers={**H, "Referer": referer}, timeout=15)
    print(f"  Playlist Status: {r.status_code}, Length: {len(r.text)}B")
    
    if "#EXTM3U" not in r.text:
        print(f"  ❌ Not a playlist. Preview: {r.text[:100]}")
        return

    # 1. Check for master playlist RESOLUTION tags
    resolutions = re.findall(r'RESOLUTION=(\d+x\d+)', r.text)
    if resolutions:
        print(f"  ✅ Resolutions found: {resolutions}")
        return

    # 2. Check if it's a single stream and look at the segment URL path
    print("  Single stream playlist.")
    segments = re.findall(r'(https?://[^\s"\'<>]+)', r.text)
    if segments:
        print(f"  First segment: {segments[0][:100]}...")
        if "/1080/" in segments[0]:
            print("  🎉 1080p CONFIRMED (found '/1080/' in segment path)")
        elif "/720/" in segments[0]:
            print("  ⚠️ 720p CONFIRMED (found '/720/' in segment path)")
        else:
            print("  ⚠️ Unknown resolution (no resolution tag or path indicator)")

print("=== Checking Hannibal S1E1 Playlists ===")
url_videm = get_stream_url("videm.xyz", "/api.php")
url_buzz = get_stream_url("vidsrc.buzz", "/pl/api.php")

check_m3u8("Videm", url_videm, "https://videm.xyz/")
check_m3u8("VidSrc.buzz", url_buzz, "https://vidsrc.buzz/")
