import requests, re, json

UA = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/124"
H = {"User-Agent": UA}
IMDB = "tt2243973"

def debug_videm():
    print("=== DEBUG: Videm ===")
    url = f"https://videm.xyz/embed/tv/{IMDB}/1/1"
    r = requests.get(url, headers=H, timeout=15)
    print(f"Embed status: {r.status_code}, {len(r.text)}B")
    
    q_start = r.text.find("var Q = ")
    if q_start == -1:
        print("❌ No 'var Q'")
        return
    q_end = r.text.find("};", q_start)
    q = json.loads(r.text[q_start+8:q_end+1])
    
    t = q.get("t", "")
    servers = q.get("ssr", {}).get("servers", [])
    print(f"Found {len(servers)} server(s)")
    
    if not servers:
        return

    ref = servers[0].get("ref", "")
    
    # Try multiple API paths
    paths = [
        f"https://videm.xyz/pl/api.php?a=play&ref={requests.utils.quote(ref)}&t={requests.utils.quote(t)}",
        f"https://videm.xyz/api.php?a=play&ref={requests.utils.quote(ref)}&t={requests.utils.quote(t)}",
        f"https://videm.xyz/pl/api.php?a=sources&ref={requests.utils.quote(ref)}&t={requests.utils.quote(t)}",
    ]
    
    for api_url in paths:
        print(f"\nTrying: {api_url[:80]}...")
        ar = requests.get(api_url, headers={**H, "Referer": url, "X-Requested-With": "XMLHttpRequest"}, timeout=15)
        print(f"Status: {ar.status_code}, CT: {ar.headers.get('Content-Type')}")
        print(f"Body: {ar.text[:200]}")
        
        try:
            j = ar.json()
            print(f"✅ Valid JSON! {j}")
            if "url" in j:
                print(f"🎯 STREAM: https://videm.xyz{j['url']}")
                return
        except:
            print("❌ Not JSON")

def debug_mega():
    print("\n=== DEBUG: MegaEmbed ===")
    url = f"https://megaembed.com/embed/tv/{IMDB}/1/1"
    r = requests.get(url, headers=H, timeout=15)
    print(f"Status: {r.status_code}, {len(r.text)}B")
    
    m3u8s = re.findall(r'(https?://[^\s"\'<>]+\.m3u8[^\s"\'<>]*)', r.text)
    if m3u8s:
        print(f"🎯 Found {len(m3u8s)} m3u8 URL(s):")
        for m in m3u8s[:3]:
            print(f"   {m[:100]}")
    else:
        print("❌ No m3u8 found")
        print(f"Preview: {r.text[:300]}")

debug_videm()
debug_mega()
