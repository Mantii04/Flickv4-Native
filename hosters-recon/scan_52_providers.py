import requests, re, json
import concurrent.futures

UA = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/124"
H = {"User-Agent": UA, "Accept": "text/html,application/xhtml+xml,*/*;q=0.8"}
IMDB = "tt2243973" # Hannibal

# The full list from the Nepu.gd screenshot
PROVIDERS = [
    ("VidFast", "https://vidfast.pro/embed/tv/{imdb}/1/1"),
    ("VidUp", "https://vidup.me/embed/tv/{imdb}/1/1"),
    ("VidRock", "https://vidrock.net/embed/tv/{imdb}/1/1"),
    ("Vidnest", "https://vidnest.com/embed/tv/{imdb}/1/1"),
    ("VidLink", "https://vidlink.pro/embed/tv/{imdb}/1/1"),
    ("VidSrc.fyi", "https://vidsrc.fyi/embed/tv/{imdb}/1/1"),
    ("VidSrc.sh", "https://vidsrc.sh/embed/tv/{imdb}/1/1"),
    ("VidSrc.su", "https://vidsrc.su/embed/tv/{imdb}/1/1"),
    ("VidSrc.sbs", "https://vidsrc.sbs/embed/tv/{imdb}/1/1"),
    ("VidSrc.mov", "https://vidsrc.mov/embed/tv/{imdb}/1/1"),
    ("VidSrc.buzz", "https://vidsrc.buzz/embed/tv/{imdb}/1/1"),
    ("VidAPI.xyz", "https://vidapi.xyz/embed/tv/{imdb}/1/1"),
    ("VidAPI.ru", "https://vidapi.ru/embed/tv/{imdb}/1/1"),
    ("VidCore.org", "https://vidcore.org/embed/tv/{imdb}/1/1"),
    ("VidCore.io", "https://vidcore.io/embed/tv/{imdb}/1/1"),
    ("VixSrc", "https://vixsrc.to/tv/{imdb}/1/1"),
    ("CineSrc", "https://cinesrc.to/embed/tv/{imdb}/1/1"),
    ("EmbedBandit", "https://embedbandit.com/embed/tv/{imdb}/1/1"),
    ("VidLux", "https://vidlux.com/embed/tv/{imdb}/1/1"),
    ("VidSpark", "https://vidspark.com/embed/tv/{imdb}/1/1"),
    ("WavEmbed", "https://wavembed.com/embed/tv/{imdb}/1/1"),
    ("Embed-API", "https://embed-api.com/embed/tv/{imdb}/1/1"),
    ("VidZen", "https://vidzen.com/embed/tv/{imdb}/1/1"),
    ("Cinextream", "https://cinextream.com/embed/tv/{imdb}/1/1"),
    ("StreamVault", "https://streamvault.cc/embed/tv/{imdb}/1/1"),
    ("YapGrid", "https://yapgrid.com/embed/tv/{imdb}/1/1"),
    ("VidBolt", "https://vidbolt.com/embed/tv/{imdb}/1/1"),
    ("Net79", "https://net79.com/embed/tv/{imdb}/1/1"),
    ("EmbedMaster", "https://embedmaster.com/embed/tv/{imdb}/1/1"),
    ("Screencape", "https://screencape.com/embed/tv/{imdb}/1/1"),
    ("RiveStream", "https://rivestream.com/embed/tv/{imdb}/1/1"),
    ("Videasy", "https://videasy.xyz/embed/tv/{imdb}/1/1"),
    ("VidPhantom", "https://vidphantom.com/embed/tv/{imdb}/1/1"),
    ("2Embed", "https://www.2embed.cc/embedtv/{imdb}&s=1&e=1"),
    ("AutoEmbed", "https://autoembed.co/tv/{imdb}-1-1"),
    ("MegaEmbed", "https://megaembed.com/embed/tv/{imdb}/1/1"),
    ("111Movies", "https://111movies.net/embed/tv/{imdb}/1/1"),
    ("MultiEmbed", "https://multiembed.mov/?video_id={imdb}&tmdb=0&s=1&e=1"),
    ("MappleTV", "https://mappletv.com/embed/tv/{imdb}/1/1"),
    ("MoviesAPI", "https://moviesapi.club/tv/{imdb}-1-1"),
    ("VidZee", "https://vidzee.com/embed/tv/{imdb}/1/1"),
    ("VidRift", "https://vidrift.com/embed/tv/{imdb}/1/1"),
    ("Videm", "https://videm.xyz/embed/tv/{imdb}/1/1"),
    ("NontonGo", "https://nontongo.win/embed/tv/{imdb}/1/1"),
]

def scan(provider):
    name, url_tpl = provider
    url = url_tpl.format(imdb=IMDB)
    
    try:
        r = requests.get(url, headers=H, timeout=10)
        status = r.status_code
        text = r.text
        length = len(text)
        
        if status != 200:
            return (name, status, "FAIL", f"HTTP {status}")
            
        # Look for extraction markers
        if "var Q = " in text:
            return (name, status, "PURE_JSON", "Found 'var Q' (like VidSrc.buzz)")
            
        if ".m3u8" in text:
            m = re.search(r'(https?://[^\s"\'<>]+\.m3u8[^\s"\'<>]*)', text)
            return (name, status, "DIRECT_M3U8", f"Found: {m.group(1)[:50]}..." if m else "m3u8 string")
            
        if "<iframe" in text.lower():
            m = re.search(r'<iframe[^>]+src="([^"]+)"', text)
            return (name, status, "IFRAME", f"iframe: {m.group(1)[:60]}" if m else "iframe found")
            
        if "/api/" in text:
            return (name, status, "API", "Found '/api/' calls in HTML")

        # Check if it's a Cloudflare / JS Shell
        if "cloudflare" in text.lower() or "turnstile" in text.lower() or "challenge" in text.lower():
            return (name, status, "BLOCKED", "Cloudflare/Turnstile detected")
            
        if length < 3000:
            return (name, status, "SHELL", f"Only {length}B (SPA/Empty)")

        return (name, status, "HTML", f"{length}B — no obvious markers")

    except Exception as e:
        return (name, "ERR", "DEAD", str(e)[:50])

print(f"Scanning {len(PROVIDERS)} providers for Hannibal S1E1...\n")
print(f"{'Provider':<15} | {'Status':<6} | {'Type':<12} | {'Details'}")
print("-" * 80)

results = []
with concurrent.futures.ThreadPoolExecutor(max_workers=10) as executor:
    for res in executor.map(scan, PROVIDERS):
        results.append(res)
        name, status, typ, detail = res
        print(f"{name:<15} | {str(status):<6} | {typ:<12} | {detail}")

print("-" * 80)
pure_json = [r[0] for r in results if r[2] == "PURE_JSON"]
direct = [r[0] for r in results if r[2] == "DIRECT_M3U8"]
iframes = [r[0] for r in results if r[2] == "IFRAME"]

print(f"\n=== RESULTS ===")
print(f"✅ Pure Python (var Q):  {pure_json}")
print(f"✅ Direct m3u8 in HTML:  {direct}")
print(f"✅ Iframe (next target): {iframes}")
