import re, json
from turnstile_curl import PeakClient
from curl_cffi import requests as cf_requests

# --- Configuration ---
PLAY_URL = "https://bingebang.st/tv/play/hannibal-a54k9w"
SITEKEY = "0x4AAAAAAD085X4hFCI3NeEl"
PEAK_KEY = "pk_a97a9097d792082fb266195e89dd684c0c6cbcf5dea59876"

# --- Step 1: Solve Turnstile via Peak ---
print("[1] Requesting Turnstile solve from Peak...")
peak = PeakClient(api_key=PEAK_KEY)

# The solve_turnstile method returns the token string directly
token = peak.solve_turnstile(sitekey=SITEKEY, url=PLAY_URL)
print(f"✅ Token received: {token[:60]}...")

# --- Step 2: Use curl_cffi to match Peak's browser fingerprint ---
print("\n[2] Warming session and POSTing token to gate...")
# Using impersonate="chrome" ensures the TLS/JA3 fingerprint matches a real browser
ses = cf_requests.Session(impersonate="chrome")
ses.headers.update({
    "Referer": PLAY_URL,
    "Origin": "https://bingebang.st",
    "Accept-Language": "en-US,en;q=0.9",
})

# Warm the session by loading the play page first to set any required cookies
ses.get(PLAY_URL, timeout=20)

# POST the token to the gate endpoint
gate_resp = ses.post(
    "https://bingebang.st/api/player/gate",
    data={"token": token},
    headers={
        "X-BB-Player": "1",
        "Content-Type": "application/x-www-form-urlencoded",
    },
    timeout=20,
)

print(f"    Gate response: {gate_resp.status_code}")
print(f"    Body: {gate_resp.text[:300]}")
print(f"    Cookies set: {list(ses.cookies.keys())}")

# --- Step 3: Check if the gate opened ---
if gate_resp.status_code == 200:
    try:
        if gate_resp.json().get("ok"):
            print("\n✅ Gate accepted! Reloading play page...")
            play_page = ses.get(PLAY_URL, timeout=20)
            
            if len(play_page.text) > 20000:  # Player page is much larger than the 6.9KB Turnstile shell
                print(f"🎉 Player page loaded! ({len(play_page.text)} bytes)")
                
                # Extract everything useful
                m3u8s = re.findall(r'https?://[^\s"\'<>]+\.m3u8[^\s"\'<>]*', play_page.text)
                mp4s = re.findall(r'https?://[^\s"\'<>]+\.mp4[^\s"\'<>]*', play_page.text)
                iframes = re.findall(r'<iframe[^>]+src="([^"]+)"', play_page.text)
                hosters = sorted(set(re.findall(r'(nashira|markab|filemoon|dood|streamtape|mixdrop|vixsrc|vidcloud)', play_page.text, re.I)))
                
                print(f"\n    m3u8 URLs: {m3u8s[:3]}")
                print(f"    mp4 URLs: {mp4s[:3]}")
                print(f"    Hosters: {hosters}")
                print(f"    Iframes: {iframes[:3]}")
                
                with open("bingebang_player_unlocked.html", "w") as f:
                    f.write(play_page.text)
                print("\n💾 Saved to bingebang_player_unlocked.html")
                
            else:
                print(f"⚠️ Page is still small ({len(play_page.text)} bytes). Gate may not have fully opened.")
        else:
            print(f"❌ Gate returned error: {gate_resp.text}")
    except Exception as e:
        print(f"❌ Error parsing gate response: {e}")
else:
    print(f"❌ Gate HTTP error: {gate_resp.status_code}")

