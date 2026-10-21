#!/usr/bin/env python3
"""
Hannibal via FlixHQ — VidCloud, UpCloud, MixDrop, StreamTape.
No browser. No npm. Pure HTTP via Consumet API + direct hoster extraction.
"""
import requests, re, json, string, sys

UA = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/124"

# Consumet public API mirrors (try in order)
APIS = [
    "https://api.consumet.org",
    "https://consumet-api-psi.vercel.app",
    "https://api.nganime.my.id",
]

ses = requests.Session()
ses.headers.update({"User-Agent": UA, "Accept": "application/json"})

def find_api():
    for api in APIS:
        try:
            r = ses.get(f"{api}/movies/flixhq/hannibal", timeout=15)
            if r.status_code == 200:
                print(f"✅ API up: {api}")
                return api
        except: pass
    print("❌ No Consumet API mirror responded")
    return None

# ---------- MixDrop extractor (from mediaflow-proxy) ----------
def mixdrop_extract(url):
    r = ses.get(url, headers={"Referer": "https://mixdrop.co/"}, timeout=15)
    m = re.search(r"\}\('(.+)',.+,'(.+)'\.split", r.text)
    if not m: return None
    schema = m.group(1).split(";")[2][5:-1]
    terms = m.group(2).split("|")
    charset = string.digits + string.ascii_letters
    d = {charset[i]: terms[i] or charset[i] for i in range(len(terms))}
    out = "https:"
    for c in schema:
        out += d.get(c, c)
    return out

# ---------- StreamTape extractor ----------
def streamtape_extract(url):
    r = ses.get(url, headers={"Referer": "https://streamtape.com/"}, timeout=15)
    # robotlink pattern: /get_video?{params}
    m = re.search(r"robotlink'\)\.innerHTML\s*=\s*'([^']+)'", r.text)
    if not m:
        m = re.search(r"(/get_video\?[^'\"]+)", r.text)
    if not m: return None
    link = m.group(1)
    if link.startswith("//"): link = "https:" + link
    elif link.startswith("/"): link = "https://streamtape.com" + link
    return link

# ---------- VidCloud / UpCloud via Consumet ----------
def consumet_sources(api, episode_id, media_id, server):
    r = ses.get(f"{api}/movies/flixhq/watch",
                params={"episodeId": episode_id, "mediaId": media_id, "server": server},
                timeout=30)
    if r.status_code != 200: return None
    j = r.json()
    return j.get("sources", []), j.get("subtitles", [])

def main():
    api = find_api()
    if not api: sys.exit(1)

    # Search
    print("\nSearching FlixHQ for Hannibal...")
    r = ses.get(f"{api}/movies/flixhq/hannibal", timeout=30)
    results = r.json().get("results", [])
    if not results:
        print("❌ Hannibal not found on FlixHQ")
        sys.exit(1)
    # Prefer TV
    tv = next((x for x in results if x.get("type","").lower() == "tv"), None)
    if not tv:
        print(f"❌ No TV result. Found: {[x.get('type') for x in results[:5]]}")
        sys.exit(1)
    print(f"✅ {tv['title']}  id={tv['id']}")

    # Info + episodes
    info = ses.get(f"{api}/movies/flixhq/info", params={"id": tv["id"]}, timeout=30).json()
    eps = info.get("episodes", [])
    if not eps:
        print("❌ No episodes")
        sys.exit(1)
    ep = eps[0]  # S1E1
    print(f"✅ S1E1: {ep.get('title','')}  id={ep['id']}")

    # Servers
    servers_resp = ses.get(f"{api}/movies/flixhq/servers",
                           params={"episodeId": ep["id"], "mediaId": tv["id"]}, timeout=30)
    servers = servers_resp.json() if servers_resp.status_code == 200 else []
    print(f"\nServers exposed: {[s.get('name') for s in servers]}")

    # Try each
    for server in servers:
        name = (server.get("name") or "").lower()
        print(f"\n{'='*60}\n{server.get('name')}\n{'='*60}")

        # MixDrop — direct regex unpack
        if "mixdrop" in name:
            try:
                url = mixdrop_extract(server["url"])
                print(f"  MixDrop direct: {url[:120] if url else 'FAILED'}")
            except Exception as e:
                print(f"  MixDrop: {str(e)[:80]}")

        # StreamTape — robotlink
        elif "streamtape" in name:
            try:
                url = streamtape_extract(server["url"])
                print(f"  StreamTape direct: {url[:120] if url else 'FAILED'}")
            except Exception as e:
                print(f"  StreamTape: {str(e)[:80]}")

        # VidCloud / UpCloud — Consumet resolves
        elif "vidcloud" in name or "upcloud" in name:
            server_key = "VidCloud" if "vidcloud" in name else "UpCloud"
            try:
                res = consumet_sources(api, ep["id"], tv["id"], server_key)
                if res:
                    sources, subs = res
                    for src in sources:
                        q = src.get("quality") or src.get("label") or "?"
                        u = src.get("url","")
                        print(f"  ✅ {q}: {u[:100]}")
                    if subs:
                        print(f"  Subtitles: {len(subs)} track(s)")
                else:
                    print(f"  ❌ Consumet returned no sources for {server_key}")
            except Exception as e:
                print(f"  {server_key}: {str(e)[:80]}")

        # Unknown server — show what it is
        else:
            print(f"  Unknown server type: {server.get('url','')[:100]}")

if __name__ == "__main__":
    main()
