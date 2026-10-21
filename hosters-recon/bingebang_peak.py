import requests, re
from turnstile_curl import PeakClient

PLAY = "https://bingebang.st/tv/play/hannibal-a54k9w"
SITEKEY = "0x4AAAAAAD085X4hFCI3NeEl"
PEAK_KEY = "pk_YOUR_KEY"   # get free at peak.fo — 1,000 solves, no card

peak = PeakClient(api_key=PEAK_KEY)
token = peak.solve_turnstile(sitekey=SITEKEY, url=PLAY)
print(f"✅ token: {token[:50]}...")

ses = requests.Session()
ses.headers.update({
    "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/131.0.0.0 Safari/537.36",
    "Referer": PLAY, "Origin": "https://bingebang.st",
})
ses.get(PLAY)  # warm

gate = ses.post("https://bingebang.st/api/player/gate",
    data={"token": token},
    headers={"X-BB-Player": "1", "Content-Type": "application/x-www-form-urlencoded"},
    timeout=20)
print(f"Gate: {gate.status_code} {gate.text[:200]}")

if gate.status_code == 200 and gate.json().get("ok"):
    play = ses.get(PLAY, timeout=20)
    print(f"Player page: {play.status_code}, {len(play.text)}B")
    m3u8s = re.findall(r'https?://[^\s"\'<>]+\.m3u8[^\s"\'<>]*', play.text)
    print("m3u8:", m3u8s[:3])
    open("bingebang_unlocked.html", "w").write(play.text)
