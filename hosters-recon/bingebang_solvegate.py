import requests, re, time, json
from solvegate import SolveGate

# --- Config ---
BASE = "https://bingebang.st"
PLAY = f"{BASE}/tv/play/hannibal-a54k9w"
SITEKEY = "0x4AAAAAAD085X4hFCI3NeEl"
UA = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/131.0.0.0 Safari/537.36"

# --- Free sandbox key (no card needed) ---
# Sign up at solvegate.io, use sk_test_... or sg_test_... key
SOLVEGATE_KEY = "sg_test_YOUR_KEY_HERE"

ses = requests.Session()
ses.headers.update({"User-Agent": UA, "Referer": PLAY, "Origin": BASE})

print("[1] Warming session with play page")
ses.get(PLAY, timeout=15)

print("[2] Solving Turnstile via SolveGate API (HTTP only, no browser)")
sg = SolveGate(SOLVEGATE_KEY)
res = sg.solve(gate="turnstile", sitekey=SITEKEY, url=PLAY)
token = res.token
print(f"✅ Token: {token[:50]}...  (solved in {res.solve_ms}ms)")

print("\n[3] Posting token to /api/player/gate")
gate = ses.post(
    f"{BASE}/api/player/gate",
    data={"token": token},
    headers={
        "X-BB-Player": "1",
        "Content-Type": "application/x-www-form-urlencoded",
    },
    timeout=20,
)
print(f"    Status: {gate.status_code}")
print(f"    Body: {gate.text[:300]}")
print(f"    Cookies: {dict(ses.cookies)}")

if not (gate.status_code == 200 and gate.json().get("ok")):
    print("❌ Gate rejected")
    exit(1)

print("\n[4] Reloading play page (now behind the gate)")
play = ses.get(PLAY, timeout=20)
print(f"    {play.status_code}, {len(play.text)}B")

# Look for m3u8, hosters, iframes, player config
m3u8s = re.findall(r'https?://[^\s"\'<>]+\.m3u8[^\s"\'<>]*', play.text)
mp4s = re.findall(r'https?://[^\s"\'<>]+\.mp4[^\s"\'<>]*', play.text)
hosters = set(re.findall(r'(nashira|markab|filemoon|dood|streamtape|mixdrop|vixsrc|vidcloud)', play.text, re.I))

print(f"\n    m3u8: {m3u8s[:3]}")
print(f"    mp4: {mp4s[:3]}")
print(f"    Hosters: {[h.lower() for h in hosters]}")

open("bingebang_player.html", "w").write(play.text)
print(f"\n💾 Saved to bingebang_player.html")
