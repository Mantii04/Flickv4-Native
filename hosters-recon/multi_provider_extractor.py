import requests, re, json, subprocess

UA = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/124"
H = {"User-Agent": UA}
IMDB = "tt2243973"  # Hannibal

def extract_videm():
    """Videm uses the exact same 'var Q' logic as VidSrc.buzz"""
    print("\n--- Extracting Videm (var Q) ---")
    url = f"https://videm.xyz/embed/tv/{IMDB}/1/1"
    r = requests.get(url, headers=H, timeout=15)
    
    q_start = r.text.find("var Q = ")
    if q_start == -1: return None
    q_end = r.text.find("};", q_start)
    q = json.loads(r.text[q_start+8:q_end+1])
    
    t = q.get("t", "")
    servers = q.get("ssr", {}).get("servers", [])
    
    for srv in servers:
        ref = srv.get("ref", "")
        api = f"https://videm.xyz/pl/api.php?a=play&ref={requests.utils.quote(ref)}&t={requests.utils.quote(t)}"
        ar = requests.get(api, headers={**H, "Referer": url}, timeout=15)
        j = ar.json()
        if "url" in j:
            return f"https://videm.xyz{j['url']}"
    return None

def extract_megaembed():
    """MegaEmbed leaks the direct m3u8 in the HTML"""
    print("\n--- Extracting MegaEmbed (Direct m3u8) ---")
    url = f"https://megaembed.com/embed/tv/{IMDB}/1/1"
    r = requests.get(url, headers=H, timeout=15)
    
    # Regex to find the m3u8 in the HTML
    m = re.search(r'(https?://[^\s"\'<>]+\.m3u8[^\s"\'<>]*)', r.text)
    if m:
        return m.group(1)
    return None

def extract_vidsrc_fyi():
    """VidSrc.fyi returns an iframe to vsembed.ru. We follow the chain."""
    print("\n--- Extracting VidSrc.fyi (Iframe -> vsembed) ---")
    url = f"https://vidsrc.fyi/embed/tv/{IMDB}/1/1"
    r = requests.get(url, headers=H, timeout=15)
    
    # 1. Get the iframe src
    iframe_match = re.search(r'<iframe[^>]+src="([^"]+)"', r.text)
    if not iframe_match: return None
    embed_url = iframe_match.group(1)
    if embed_url.startswith("//"): embed_url = "https:" + embed_url
    
    # 2. Fetch the vsembed page to get playerUrl
    r2 = requests.get(embed_url, headers={**H, "Referer": "https://vidsrc.fyi/"}, timeout=15)
    player_match = re.search(r'"playerUrl":"([^"]+)"', r2.text)
    if not player_match: return None
    player_path = player_match.group(1)
    
    # 3. Fetch player page to get apiToken
    r3 = requests.get("https://stellarconductornexus.com" + player_path, headers={**H, "Referer": "https://stellarconductornexus.com/"}, timeout=15)
    token_match = re.search(r'"apiToken":"([^"]+)"', r3.text)
    if not token_match: return None
    api_token = token_match.group(1)
    
    # 4. Hit the data API
    type_str = "tv"
    api_url = f"https://data.vidsrc.sh/api.php?type={type_str}&tmdb=40008&season=1&episode=1&stream_urls&api_token={api_token}"
    r4 = requests.get(api_url, headers={**H, "Referer": "https://stellarconductornexus.com/"}, timeout=15)
    data = r4.json()
    
    if "data" in data:
        print("   ✅ Found encrypted data. Needs WASM decryption to resolve final m3u8.")
        return "WASM_ENCRYPTED"
    return None

def main():
    print(f"=== Hannibal S1E1 Multi-Provider Extraction ===")
    
    # 1. Videm
    videm_url = extract_videm()
    if videm_url:
        print(f"✅ Videm: {videm_url}")
    else:
        print("❌ Videm failed")

    # 2. MegaEmbed
    mega_url = extract_megaembed()
    if mega_url:
        print(f"✅ MegaEmbed: {mega_url}")
    else:
        print("❌ MegaEmbed failed")

    # 3. VidSrc.fyi
    fyi_url = extract_vidsrc_fyi()
    if fyi_url == "WASM_ENCRYPTED":
        print(f"⚠️  VidSrc.fyi: Chain works, but needs WASM decryption (like Filemoon)")
    elif fyi_url:
        print(f"✅ VidSrc.fyi: {fyi_url}")
    else:
        print("❌ VidSrc.fyi failed")

    # Test resolutions of what we found
    print("\n=== Testing Resolutions ===")
    for name, url in [("Videm", videm_url), ("MegaEmbed", mega_url)]:
        if url and url != "WASM_ENCRYPTED":
            res = subprocess.run(["ffprobe", "-v", "error", "-select_streams", "v:0",
                                  "-show_entries", "stream=width,height", "-of", "csv=p=0", url],
                                 capture_output=True, text=True, timeout=20)
            print(f"  {name}: {res.stdout.strip() or 'Probe failed'}")

if __name__ == "__main__":
    main()
