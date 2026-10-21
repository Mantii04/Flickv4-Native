import requests, re, json

UA = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/124"
H = {"User-Agent": UA}

def test_provider(name, url, is_tv=False, imdb="tt2243973"):
    print(f"\n--- Testing {name} ---")
    print(f"URL: {url}")
    
    ses = requests.Session()
    ses.headers.update(H)
    
    try:
        r = ses.get(url, timeout=15)
        print(f"Status: {r.status_code}, Length: {len(r.text)}B")
        
        if r.status_code != 200:
            print(f"❌ Failed with {r.status_code}")
            return
            
        # Look for m3u8 directly in HTML
        m3u8s = re.findall(r'(https?://[^\s"\'<>]+\.m3u8[^\s"\'<>]*)', r.text)
        if m3u8s:
            print(f"🎯 Found direct m3u8: {m3u8s[0][:100]}")
            return

        # Look for var Q (VidSrc pattern)
        q_start = r.text.find("var Q = ")
        if q_start != -1:
            print(f"✅ Found VidSrc 'var Q' pattern!")
            q_end = r.text.find("};", q_start)
            q = json.loads(r.text[q_start+8:q_end+1])
            servers = q.get("ssr", {}).get("servers", [])
            print(f"   Servers: {len(servers)}")
            if servers:
                print(f"   First server: {servers[0].get('name')}")
            return

        # Look for iframes
        iframes = re.findall(r'<iframe[^>]+src="([^"]+)"', r.text)
        if iframes:
            print(f"   Found iframe: {iframes[0][:100]}")
            return

        print("❌ No direct m3u8, var Q, or iframe found.")
        print(f"Preview: {r.text[:200]}")
        
    except Exception as e:
        print(f"❌ Error: {e}")

# Test the VidSrc family from your Nepu screenshot
test_provider("VidSrc.fyi", "https://vidsrc.fyi/embed/tv/tt2243973/1/1")
test_provider("VidSrc.buzz", "https://vidsrc.buzz/embed/tv/tt2243973/1/1")
test_provider("VidSrc.sh", "https://vidsrc.sh/embed/tv/tt2243973/1/1")

# Test another provider from the list (VidRock)
test_provider("VidRock", "https://vidrock.net/embed/tv/tt2243973/1/1")

