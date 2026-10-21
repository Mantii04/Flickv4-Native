#!/usr/bin/env python3
"""Deep recon of fmoviesco.net/movie/hannibal-2001-29740x/"""
import requests, re, json, sys

URL = "https://fmoviesco.net/movie/hannibal-2001-29740x/"
UA = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36"

ses = requests.Session()
ses.headers.update({
    "User-Agent": UA,
    "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
    "Accept-Language": "en-US,en;q=0.9",
    "Referer": "https://fmoviesco.net/",
})

print(f"=== Targeting: {URL} ===")
r = ses.get(URL, timeout=20, allow_redirects=True)
print(f"Status: {r.status_code}, Len: {len(r.text)}, final URL: {r.url}\n")
html = r.text

# ============ [1] Player / iframe / embed markers ============
print("="*60)
print("[1] Player / iframe / embed markers")
print("="*60)

# All iframes
iframes = re.findall(r'<iframe[^>]+src=["\']([^"\']+)["\']', html, re.I)
print(f"Iframes: {len(iframes)}")
for f in iframes[:10]:
    print(f"  {f[:150]}")

# Direct hoster mentions
hosters = ['filemoon','filemoon.sx','filemoon.to','dood','doodstream','streamtape',
           'mixdrop','upcloud','vidcloud','vidsrc','2embed','embed.su','multiembed',
           'voe','vidmoly','luluvdo','upstream','vidoza','streamwish','streamhg']
for h in hosters:
    if h in html.lower():
        idx = html.lower().find(h)
        print(f"\n[{h}] found at {idx}:")
        print(f"  {html[max(0,idx-100):idx+200]}")

# ============ [2] dooplay / WordPress patterns ============
print("\n" + "="*60)
print("[2] dooplay / WordPress structural markers")
print("="*60)

# Dooplay is a WordPress movie theme — key markers:
# - class="dooplay" or "doo-*" classes
# - data-post, data-id on player divs
# - /wp-json/ endpoints
# - admin-ajax.php with doo_player_ajax action
markers = {
    "dooplay theme": "dooplay" in html.lower() or "doo-" in html.lower(),
    "wp-content path": "/wp-content/" in html,
    "wp-json": "wp-json" in html,
    "admin-ajax": "admin-ajax" in html,
    "doo_player_ajax": "doo_player_ajax" in html,
    "player div": '<div class="player"' in html or 'class="player ' in html,
    "data-post attr": "data-post=" in html,
    "data-id attr": "data-id=" in html,
    "postid pattern": re.search(r'postid["\']?\s*[:=]\s*["\']?(\d+)', html) is not None,
    "IMDb rating": "imdb" in html.lower(),
}
for k, v in markers.items():
    print(f"  {'✅' if v else '❌'} {k}")

# Extract data-post / data-id
data_posts = re.findall(r'data-post=["\']([^"\']+)["\']', html)
data_ids = re.findall(r'data-id=["\']([^"\']+)["\']', html)
print(f"\n  data-post values: {data_posts[:5]}")
print(f"  data-id values: {data_ids[:5]}")

# Extract postid / TMDB / IMDB
postid = re.search(r'"postid"\s*:\s*"?(\d+)', html) or re.search(r'post_id["\']?\s*[:=]\s*["\']?(\d+)', html)
tmdb = re.search(r'"tmdb_id"\s*:\s*"?(\d+)', html)
imdb = re.search(r'"imdb_id"\s*:\s*"(tt\d+)"', html)
print(f"  postid: {postid.group(1) if postid else 'none'}")
print(f"  tmdb_id: {tmdb.group(1) if tmdb else 'none'}")
print(f"  imdb_id: {imdb.group(1) if imdb else 'none'}")

# ============ [3] All <script> blocks with stream-relevant content ============
print("\n" + "="*60)
print("[3] Inline scripts with player/stream logic")
print("="*60)
scripts = re.findall(r'<script[^>]*>(.*?)</script>', html, re.DOTALL)
for i, s in enumerate(scripts):
    s = s.strip()
    if len(s) < 30: continue
    kws = []
    for kw in ['player','embed','source','m3u8','filemoon','dood','stream','ajax','doo_']:
        if kw in s.lower(): kws.append(kw)
    if kws:
        print(f"\n--- Script #{i} ({len(s)} chars) markers: {kws} ---")
        print(f"  {s[:600]}")
        print(f"  ...")

# ============ [4] JSON-LD / structured data ============
print("\n" + "="*60)
print("[4] JSON-LD / structured data (VideoObject)")
print("="*60)
lds = re.findall(r'<script[^>]+type=["\']application/ld\+json["\'][^>]*>(.*?)</script>', html, re.DOTALL)
for i, ld in enumerate(lds):
    try:
        j = json.loads(ld.strip())
        print(f"  [{i}] {json.dumps(j)[:300]}")
    except:
        print(f"  [{i}] invalid JSON: {ld[:100]}")

# ============ [5] Try AJAX endpoints ============
print("\n" + "="*60)
print("[5] Testing dooplay AJAX endpoints")
print("="*60)

ajax_headers = {**ses.headers, "X-Requested-With": "XMLHttpRequest",
                "Referer": URL, "Content-Type": "application/x-www-form-urlencoded"}

# doo_player_ajax patterns — dooplay uses GET or POST with post/nume params
if postid:
    pid = postid.group(1)
    ajax_tests = [
        # (method, url, data)
        ("POST", "https://fmoviesco.net/wp-admin/admin-ajax.php",
         {"action": "doo_player_ajax", "post": pid, "nume": "1", "type": "movie"}),
        ("POST", "https://fmoviesco.net/wp-admin/admin-ajax.php",
         {"action": "doo_player_ajax", "post": pid, "nume": "2", "type": "movie"}),
        ("POST", "https://fmoviesco.net/wp-admin/admin-ajax.php",
         {"action": "doo_player_ajax", "post": pid, "nume": "1", "type": "tv"}),
        ("GET", f"https://fmoviesco.net/wp-admin/admin-ajax.php?action=doo_player_ajax&post={pid}&nume=1&type=movie", None),
    ]
    for method, url, data in ajax_tests:
        try:
            if method == "POST":
                rr = ses.post(url, data=data, headers=ajax_headers, timeout=15)
            else:
                rr = ses.get(url, headers=ajax_headers, timeout=15)
            ct = rr.headers.get("Content-Type","")[:40]
            preview = rr.text[:300].replace("\n"," ")
            print(f"\n  [{method}] nume={data.get('nume') if data else '1'}")
            print(f"    {rr.status_code}, {ct}")
            print(f"    {preview}")
            if "filemoon" in rr.text.lower() or "iframe" in rr.text.lower() or rr.text.strip().startswith("{"):
                print(f"    ✅ HIT — full response:")
                print(f"    {rr.text[:1000]}")
        except Exception as e:
            print(f"    err: {str(e)[:80]}")

# ============ [6] WordPress REST API ============
print("\n" + "="*60)
print("[6] WP REST API probes")
print("="*60)
for path in ["/wp-json/", "/wp-json/wp/v2/movies", "/wp-json/wp/v2/posts?search=hannibal", "/?rest_route=/"]:
    try:
        rr = ses.get(f"https://fmoviesco.net{path}", timeout=10)
        print(f"  {path}: {rr.status_code}, {len(rr.text)}B, ct={rr.headers.get('Content-Type','')[:30]}")
        if rr.status_code == 200 and "json" in rr.headers.get("Content-Type",""):
            print(f"    {rr.text[:200]}")
    except Exception as e:
        print(f"  {path}: {str(e)[:60]}")

# ============ [7] Look for .m3u8 / .mp4 anywhere ============
print("\n" + "="*60)
print("[7] Direct stream URLs in HTML")
print("="*60)
m3u8s = re.findall(r'(https?://[^\s"\'<>]+\.m3u8[^\s"\'<>]*)', html)
mp4s = re.findall(r'(https?://[^\s"\'<>]+\.mp4[^\s"\'<>]*)', html)
print(f"  m3u8: {m3u8s[:3] if m3u8s else 'none'}")
print(f"  mp4: {mp4s[:3] if mp4s else 'none'}")

# ============ [8] Look for player data in body data attributes ============
print("\n" + "="*60)
print("[8] All data-* attributes (any value >5 chars)")
print("="*60)
data_attrs = re.findall(r'(data-[a-z\-]+="[^"]{5,300}")', html)
seen = set()
for d in data_attrs:
    key = d.split('=')[0]
    if key in seen: continue
    seen.add(key)
    print(f"  {d[:200]}")

print("\n" + "="*60)
print("=== RECON COMPLETE ===")
print("="*60)
print("\nNext step depends on findings:")
print("  - iframes found → extract iframe URL directly")
print("  - doo_player_ajax 200+embed → follow to Filemoon")
print("  - no player in HTML → requires JS execution (browser/server)")
