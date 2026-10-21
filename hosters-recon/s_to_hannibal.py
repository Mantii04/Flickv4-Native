#!/usr/bin/env python3
import requests, json, re, sys

UA = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/124"

BASES = [
    "http://186.2.175.5",
    "http://190.115.18.20",
    "https://serienstream.cx",
    "https://serienstream.to",
]

def try_base(base):
    ses = requests.Session()
    ses.headers.update({
        "User-Agent": UA,
        "Accept": "text/html,application/xhtml+xml,*/*;q=0.8",
        "Accept-Language": "de-DE,de;q=0.9,en;q=0.8",
    })
    try:
        r = ses.get(base, timeout=15, allow_redirects=True)
        print(f"[{base}] homepage: {r.status_code}, {len(r.text)}B")
        return ses if r.status_code == 200 else None
    except Exception as e:
        print(f"[{base}] {str(e)[:80]}")
        return None

def search_hannibal(ses, base):
    print(f"\nSearching Hannibal on {base}...")
    for path in [f"{base}/search?q=Hannibal", f"{base}/search?keyword=Hannibal"]:
        try:
            r = ses.get(path, timeout=15)
            if r.status_code != 200:
                continue
            print(f"  search {path}: {r.status_code}, {len(r.text)}B")
            # Look for series links
            links = re.findall(r'href="(/serie/stream/[^"]+)"', r.text)
            hannibal_links = [l for l in links if "hannibal" in l.lower()]
            if hannibal_links:
                print(f"  ✅ Found: {hannibal_links[0]}")
                return hannibal_links[0]
            # Also try to find any series link
            if links:
                print(f"  Found series links: {links[:3]}")
        except Exception as e:
            print(f"  search error: {str(e)[:60]}")
    return None

def get_episode_page(ses, base, series_path):
    print(f"\nFetching episode page...")
    episode_url = f"{base}{series_path}/staffel-1/episode-1"
    try:
        r = ses.get(episode_url, timeout=15)
        print(f"  {episode_url}: {r.status_code}, {len(r.text)}B")
        if r.status_code == 200:
            # Look for server/embed links
            # s.to typically has <a> tags with data-url or redirect links
            filemoon = re.findall(r'(https?://[^"\']*filemoon[^"\']*)', r.text, re.I)
            if filemoon:
                return filemoon
            # Look for redirect links
            redirects = re.findall(r'href="([^"]*redirect[^"]*)"', r.text)
            if redirects:
                print(f"  Found redirect links: {redirects[:3]}")
            # Look for data attributes
            data_urls = re.findall(r'data-url="([^"]+)"', r.text)
            if data_urls:
                print(f"  Found data-url: {data_urls[:3]}")
            # Look for iframe src
            iframes = re.findall(r'<iframe[^>]+src="([^"]+)"', r.text)
            if iframes:
                print(f"  Found iframes: {iframes[:3]}")
            # Look for hoster names
            hosters = re.findall(r'(filemoon|voe|doodstream|streamtape|vidmoly|luluvdo)', r.text, re.I)
            if hosters:
                print(f"  Hoster mentions: {set(h.lower() for h in hosters)}")
    except Exception as e:
        print(f"  error: {str(e)[:80]}")
    return []

def main():
    for base in BASES:
        ses = try_base(base)
        if not ses:
            continue
        series = search_hannibal(ses, base)
        if not series:
            print(f"  ❌ Hannibal not found on {base}")
            continue
        fm = get_episode_page(ses, base, series)
        if fm:
            print(f"\n🎯 FILEMOON LINKS:")
            for u in fm:
                print(f"   {u}")
            return
        else:
            print(f"\n⚠️ No Filemoon links directly visible. The server list may use JavaScript.")
            print(f"   The s.to episode page likely requires a redirect endpoint or AJAX call.")
            print(f"   Try the 'sdl' tool directly: pip install sdl && sdl -p filemoon '{base}{series}/staffel-1/episode-1'")

if __name__ == "__main__":
    main()
