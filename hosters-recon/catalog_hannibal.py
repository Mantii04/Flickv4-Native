#!/usr/bin/env python3
"""
Catalog → Filemoon → m3u8 → resolution pipeline.
Searches FlixHQ for Hannibal, extracts Filemoon server URLs, cracks each.
"""
import sys, json, time, base64, hashlib, re
import requests
import ecdsa
from Crypto.Cipher import AES

UA = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/124"
FLIXHQ = "https://flixhq.to"
NGANIME = "https://api.nganime.my.id/movies/flixhq"

# ---------- Filemoon cracker (same as the working script) ----------
M32 = 0xFFFFFFFF
def _rotl(x,n): return ((x<<n)|(x>>(32-n))) & M32
def _imul(a,b): return (a*b) & M32
def _qr(e):
    e[0]=(e[0]+e[1])&M32; e[3]=_rotl(e[3]^e[0],16)
    e[2]=(e[2]+e[3])&M32; e[1]=_rotl(e[1]^e[2],12)
    e[0]=(e[0]+e[1])&M32; e[3]=_rotl(e[3]^e[0],8)
    e[2]=(e[2]+e[3])&M32; e[1]=_rotl(e[1]^e[2],7)
def gr(data):
    BE,LT,DR=512,511,2; LR,HR=2654435761,2246822519
    e=[1779033703,3144134277,1013904242,2773480762]
    for b in data:
        e[0]=(e[0]+b)&M32; e[0]=_rotl(e[0],7); _qr(e)
    for _ in range(8): _qr(e)
    r=[0]*BE
    for i in range(BE): _qr(e); r[i]=(e[0]^e[2])&M32
    for _ in range(DR):
        for s in range(BE):
            a=r[s]&LT; c=(r[s]+r[a])&M32; c=_rotl(c,13)
            c=(c^_imul(r[(s+1)&LT],LR))&M32; r[s]=c; e[0]=(e[0]^c)&M32; _qr(e)
    n=[0]*8; o=BE//8
    for i in range(8):
        _qr(e); s=e[0]
        for c in range(o):
            d=r[i*o+c]; s=(s+d)&M32; s=_rotl(s,5); s=(s^_imul(d,HR))&M32
        n[i]=(s^e[2])&M32
    return n
def lzb(w):
    t=0
    for x in w:
        if x==0: t+=32; continue
        return t+(32-x.bit_length())
    return t
def solve_pow(nonce,diff,max_att=2_000_000):
    p=(nonce+":").encode()
    for n in range(max_att):
        if lzb(gr(p+str(n).encode()))>=diff: return str(n)
    return None
def b64u_enc(b): return base64.urlsafe_b64encode(b).rstrip(b'=').decode()
def b64u_dec(s):
    if not s: return b""
    s=s.replace('-','+').replace('_','/')
    return base64.b64decode(s+'='*((4-len(s)%4)%4))
def qa(): return {str(n):[n,31-n] for n in range(1,21)}
def sel(kp,v):
    p=qa().get(str(v))
    if not p: return list(kp)
    a,i=p
    if a<1 or i<1 or a>len(kp) or i>len(kp): return list(kp)
    return [kp[a-1],kp[i-1]]
def dkey(parts):
    o=bytearray()
    for p in parts:
        if isinstance(p,str) and p: o.extend(b64u_dec(p))
    return bytes(o)
def dec(enc):
    kp=enc.get("key_parts",[]); iv=b64u_dec(enc["iv"]); ct=b64u_dec(enc["payload"]); ver=enc.get("version")
    cands=[]
    if ver: cands.append((f"v={ver}",dkey(sel(kp,ver))))
    for v in range(1,21): cands.append((f"v={v}",dkey(sel(kp,v))))
    cands.append(("all",dkey(kp)))
    for name,key in cands:
        if len(key) not in (16,24,32): continue
        try:
            c=AES.new(key,AES.MODE_GCM,nonce=iv)
            pt=c.decrypt_and_verify(ct[:-16],ct[-16:])
            return name,key,json.loads(pt.decode())
        except: pass
    return None,None,None

def crack_filemoon(code):
    BASE="https://filemoon.sx"
    ses=requests.Session()
    ses.headers.update({"User-Agent":UA,"Origin":BASE,"Referer":f"{BASE}/e/{code}"})
    ses.get(f"{BASE}/e/{code}",timeout=15)
    ch=ses.post(f"{BASE}/api/videos/access/challenge",json={},timeout=15).json()
    sk=ecdsa.SigningKey.generate(curve=ecdsa.NIST256p)
    vk=sk.verifying_key.to_string()
    jwk={"kty":"EC","crv":"P-256","x":b64u_enc(vk[:32]),"y":b64u_enc(vk[32:])}
    der=sk.sign(ch["nonce"].encode(),hashfunc=hashlib.sha256,sigencode=ecdsa.util.sigencode_der)
    r,s=ecdsa.util.sigdecode_der(der,sk.curve.order)
    sig=base64.b64encode(r.to_bytes(32,'big')+s.to_bytes(32,'big')).decode()
    fp={"canvas":"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAADUlEQVR42mNk+M9QDwADhgGAWjR9awAAAABJRU5ErkJggg==",
        "ua":UA,"platform":"Win32","webgl_vendor":"Google Inc.",
        "webgl_renderer":"ANGLE (NVIDIA, NVIDIA GeForce RTX 3060, OpenGL 4.5)",
        "screen":"1920x1080","timezone":"America/New_York"}
    at=ses.post(f"{BASE}/api/videos/access/attest",json={
        "viewer_id":"","device_id":"","challenge_id":ch["challenge_id"],"nonce":ch["nonce"],
        "signature":sig,"public_key":jwk,"client":fp,
        "storage":{"available":True,"quota":300000},
        "attributes":{"entropy":hashlib.sha256(b"x").hexdigest()}
    },timeout=15).json()
    if not at.get("token"): return {"ok":False,"stage":"attest","detail":at}
    fpm={"token":at["token"],"viewer_id":at.get("viewer_id",""),"device_id":at.get("device_id","")}
    cap=ses.post(f"{BASE}/api/videos/{code}/captcha",json={"fingerprint":fpm},timeout=15).json()
    if "pow_nonce" not in cap: return {"ok":False,"stage":"captcha","detail":cap}
    sol=solve_pow(cap["pow_nonce"],cap["pow_difficulty"])
    if not sol: return {"ok":False,"stage":"pow","detail":"unsolved"}
    vr=ses.post(f"{BASE}/api/videos/{code}/captcha/verify",
        json={"pow_token":cap["pow_token"],"solution":sol,"fingerprint":fpm},timeout=15).json()
    if vr.get("status")!="ok": return {"ok":False,"stage":"captcha_verify","detail":vr}
    pb=ses.post(f"{BASE}/api/videos/{code}/playback",json={"fingerprint":fpm},
        headers={"X-Captcha-Token":vr["token"]},timeout=15).json()
    if "playback" not in pb: return {"ok":False,"stage":"playback","detail":pb}
    name,key,payload=dec(pb["playback"])
    if payload is None: return {"ok":False,"stage":"decrypt","detail":pb["playback"]}
    return {"ok":True,"key_source":name,"payload":payload}

# ---------- FlixHQ discovery ----------
def search_flixhq(q):
    """Try direct AJAX, then Nganime API."""
    ses=requests.Session()
    ses.headers.update({"User-Agent":UA,"Accept":"application/json, text/javascript, */*; q=0.01",
                        "X-Requested-With":"XMLHttpRequest","Referer":FLIXHQ+"/"})
    # Method 1: direct FlixHQ ajax search
    for path in [f"{FLIXHQ}/ajax/search", f"{FLIXHQ}/ajax/v2/search"]:
        try:
            r=ses.get(path,params={"keyword":q},timeout=15)
            if r.status_code==200 and r.text.strip().startswith(("{","[")):
                return r.json()
        except: pass
    # Method 2: Nganime API search (if exists)
    for path in [f"{NGANIME}/search", f"{NGANIME}/search/{q}"]:
        try:
            r=ses.get(path,params={"query":q},timeout=15)
            if r.status_code==200 and r.text.strip().startswith(("{","[")):
                return r.json()
        except: pass
    return None

def get_media_id(search_json):
    """Extract the first TV result's slug."""
    if not search_json: return None
    # Try various shapes
    items = search_json if isinstance(search_json,list) else search_json.get("results",[]) or search_json.get("data",[])
    for item in items:
        title = (item.get("title") or item.get("name") or "").lower()
        link = item.get("url") or item.get("link") or item.get("href") or ""
        mid = item.get("id") or item.get("mediaId") or item.get("slug") or ""
        if "hannibal" in title or "hannibal" in link.lower():
            # Prefer TV
            if "tv" in (item.get("type","")+link+mid).lower() or "watch-tv" in link:
                return mid or link.split("/")[-1]
    # Fallback: first TV-ish item
    for item in items:
        link = item.get("url") or item.get("link") or ""
        if "/tv/" in link or "tv/watch" in link:
            return item.get("id") or item.get("mediaId") or link.split("/")[-1]
    return None

def get_episode_id(media_id):
    """Get S1E1 episode ID."""
    ses=requests.Session()
    ses.headers.update({"User-Agent":UA,"Referer":FLIXHQ+"/","X-Requested-With":"XMLHttpRequest"})
    for path in [f"{FLIXHQ}/ajax/v2/episode/list/{media_id}",
                 f"{FLIXHQ}/ajax/episode/list/{media_id}"]:
        try:
            r=ses.get(path,timeout=15)
            if r.status_code==200:
                txt=r.text
                # Extract episode IDs and numbers
                ids=re.findall(r'data-id="(\d+)"',txt)
                nums=re.findall(r'data-number="(\d+)"',txt)
                if ids:
                    # Assume first is S1E1
                    return ids[0]
        except: pass
    return None

def get_servers(episode_id, media_id):
    """Get server list via direct FlixHQ or Nganime API."""
    ses=requests.Session()
    ses.headers.update({"User-Agent":UA,"Referer":FLIXHQ+"/","X-Requested-With":"XMLHttpRequest"})
    # Direct
    for path in [f"{FLIXHQ}/ajax/v2/episode/servers/{episode_id}",
                 f"{FLIXHQ}/ajax/episode/servers?id={episode_id}"]:
        try:
            r=ses.get(path,timeout=15)
            if r.status_code==200:
                # Extract links
                links=re.findall(r'href="([^"]+)"',r.text)
                fm=[l for l in links if "filemoon" in l.lower()]
                if fm: return fm
                # Maybe embedded in JSON
                if "filemoon" in r.text.lower():
                    fm=re.findall(r'(https?://[^"\']*filemoon[^"\']*)',r.text)
                    if fm: return fm
        except: pass
    # Nganime API
    try:
        r=ses.get(f"{NGANIME}/servers",params={"episodeId":episode_id,"mediaId":media_id},timeout=15)
        if r.status_code==200:
            j=r.json()
            # Response shape: [{"name":"...","url":"..."}]
            fm=[x["url"] for x in j if "filemoon" in (x.get("name","")+x.get("url","")).lower()]
            if fm: return fm
    except: pass
    return []

# ---------- Main ----------
def main():
    print("Searching FlixHQ for Hannibal...")
    search=search_flixhq("Hannibal")
    if not search:
        print("❌ Search failed. FlixHQ may be down or blocked.")
        sys.exit(1)
    media_id=get_media_id(search)
    if not media_id:
        print("❌ Could not find Hannibal in search results.")
        print(json.dumps(search,indent=2)[:1000])
        sys.exit(1)
    print(f"✅ media_id = {media_id}")

    print("Getting S1E1 episode ID...")
    ep_id=get_episode_id(media_id)
    if not ep_id:
        print("❌ Could not get episode list.")
        sys.exit(1)
    print(f"✅ episode_id = {ep_id}")

    print("Getting server list...")
    fm_urls=get_servers(ep_id, media_id)
    if not fm_urls:
        print("❌ No Filemoon URLs in server list.")
        sys.exit(1)
    print(f"✅ Found {len(fm_urls)} Filemoon URL(s):")
    for u in fm_urls: print(f"   {u}")

    print("\nCracking each Filemoon URL...")
    for url in fm_urls:
        code=url.rstrip("/").split("/e/")[-1].split("?")[0]
        print(f"\n--- {code} ---")
        try:
            res=crack_filemoon(code)
            if res["ok"]:
                for src in res["payload"].get("sources",[]):
                    print(f"   ✅ {src.get('label','?')}  height={src.get('height','?')}  {src.get('url','')[:100]}")
            else:
                print(f"   ❌ {res['stage']}: {str(res['detail'])[:120]}")
        except Exception as e:
            print(f"   💥 {str(e)[:120]}")

if __name__=="__main__":
    main()
