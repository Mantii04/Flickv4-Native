import requests, re, json, subprocess

UA = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/124"
H = {"User-Agent": UA}
IMDB = "tt2243973"  # Hannibal S1E1

def get_videm():
    print("--- Videm ---")
    url = f"https://videm.xyz/embed/tv/{IMDB}/1/1"
    r = requests.get(url, headers=H, timeout=15)
    q_start = r.text.find("var Q = ")
    if q_start == -1: return None
    q = json.loads(r.text[q_start+8:r.text.find("};", q_start)+1])
    ref = q.get("ssr", {}).get("servers", [{}])[0].get("ref", "")
    api = f"https://videm.xyz/api.php?a=play&ref={requests.utils.quote(ref)}&t={requests.utils.quote(q.get('t',''))}"
    ar = requests.get(api, headers={**H, "Referer": url}, timeout=15)
    try:
        j = ar.json()
        if "url" in j:
            m3u8 = f"https://videm.xyz{j['url']}"
            print(f"  ✅ {m3u8}")
            return m3u8
    except:
        print(f"  API not JSON: {ar.text[:100]}")
    return None

def get_megaembed():
    print("--- MegaEmbed ---")
    url = f"https://megaembed.com/embed/tv/{IMDB}/1/1"
    r = requests.get(url, headers=H, timeout=15)
    # Look for m3u8 OR the playercdnx worker
    m = re.search(r'(https?://[^\s"\'<>]+\.m3u8[^\s"\'<>]*|https?://solitary-field-9699\.playercdnx\.workers\.dev[^\s"\'<>]*)', r.text)
    if m:
        print(f"  ✅ {m.group(1)[:100]}")
        return m.group(1)
    print("  no m3u8 or playercdnx found")
    return None

def get_vidsrc_buzz():
    print("--- VidSrc.buzz ---")
    url = f"https://vidsrc.buzz/embed/tv/{IMDB}/1/1"
    r = requests.get(url, headers=H, timeout=15)
    q_start = r.text.find("var Q = ")
    if q_start == -1: return None
    q = json.loads(r.text[q_start+8:r.text.find("};", q_start)+1])
    ref = q.get("ssr", {}).get("servers", [{}])[0].get("ref", "")
    api = f"https://vidsrc.buzz/pl/api.php?a=play&ref={requests.utils.quote(ref)}&t={requests.utils.quote(q.get('t',''))}"
    ar = requests.get(api, headers={**H, "Referer": url, "X-Requested-With": "XMLHttpRequest"}, timeout=15)
    try:
        j = ar.json()
        if "url" in j:
            m3u8 = f"https://vidsrc.buzz{j['url']}"
            print(f"  ✅ {m3u8}")
            return m3u8
    except:
        print(f"  API not JSON: {ar.text[:100]}")
    return None

def test_resolution(name, url, referer):
    if not url:
        print(f"  ❌ {name}: no URL")
        return
    # ffprobe requires the Referer to bypass hotlink protection
    res = subprocess.run([
        "ffprobe", "-v", "error", "-select_streams", "v:0",
        "-headers", f"Referer: {referer}\r\nOrigin: {referer}\r\nUser-Agent: {UA}\r\n",
        "-show_entries", "stream=width,height",
        "-of", "csv=p=0", url
    ], capture_output=True, text=True, timeout=20)
    
    out = res.stdout.strip()
    if out:
        print(f"  {name}: {out}")
        if "1080" in out:
            print(f"  🎉 1080p FOUND ON {name}")
        elif "720" in out:
            print(f"  ⚠️  {name} capped at 720p")
    else:
        print(f"  {name}: probe failed — {res.stderr[:80]}")

print("=== Hannibal S1E1 — 3 Pure-Python Providers ===\n")
urls = {
    "Videm": (get_videm(), "https://videm.xyz/"),
    "MegaEmbed": (get_megaembed(), "https://megaembed.com/"),
    "VidSrc.buzz": (get_vidsrc_buzz(), "https://vidsrc.buzz/"),
}

print("\n=== Resolutions ===")
for name, (url, ref) in urls.items():
    test_resolution(name, url, ref)
