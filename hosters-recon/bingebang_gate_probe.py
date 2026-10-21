#!/usr/bin/env python3
"""
Probe /api/player/gate and adjacent endpoints for weak validation.
This is the ONLY pure-HTTP crack path. If it works, we have no-browser bypass.
"""
import requests, re, json, time, base64, hashlib

BASE = "https://bingebang.st"
PLAY = f"{BASE}/tv/play/hannibal-a54k9w"
UA = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36"
H = {
    "User-Agent": UA,
    "Accept": "text/html,application/xhtml+xml,*/*;q=0.8",
    "Accept-Language": "en-US,en;q=0.9",
    "Referer": PLAY,
    "Origin": BASE,
}

ses = requests.Session()
ses.headers.update(H)

# Warm
ses.get(PLAY, timeout=15)

# ============================================================
# [1] Probe /api/player/gate with malformed/empty/forged tokens
# ============================================================
print("="*60)
print("[1] Gate bypass attempts")
print("="*60)

def try_gate(label, token, extra_headers=None):
    h = {
        "X-BB-Player": "1",
        "Content-Type": "application/x-www-form-urlencoded",
        "Referer": PLAY,
        "Origin": BASE,
    }
    if extra_headers:
        h.update(extra_headers)
    try:
        r = ses.post(f"{BASE}/api/player/gate",
                     data={"token": token}, headers=h, timeout=10)
        print(f"\n[{label}]")
        print(f"  Status: {r.status_code}")
        print(f"  Set-Cookie: {r.headers.get('set-cookie','(none)')[:200]}")
        print(f"  Body: {r.text[:300]}")
        return r
    except Exception as e:
        print(f"[{label}] error: {e}")
        return None

# 1a. Empty token
try_gate("empty-token", "")

# 1b. null
try_gate("null-token", "null")

# 1c. Random garbage
try_gate("random", "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")

# 1d. Looks-like-a-turnstile-token (CF tokens are long base64-ish)
fake_token = base64.b64encode(hashlib.sha256(b"fake").digest() * 20).decode()
try_gate("fake-long-token", fake_token)

# 1e. Empty body
try:
    r = ses.post(f"{BASE}/api/player/gate",
                 headers={"X-BB-Player": "1"}, timeout=10)
    print(f"\n[empty-body]\n  Status: {r.status_code}\n  Body: {r.text[:300]}")
except Exception as e:
    print(f"[empty-body] {e}")

# 1f. GET instead of POST (sometimes misconfigured)
try:
    r = ses.get(f"{BASE}/api/player/gate", timeout=10)
    print(f"\n[GET-gate]\n  Status: {r.status_code}\n  Body: {r.text[:300]}")
except: pass

# 1g. No X-BB-Player header
try:
    r = ses.post(f"{BASE}/api/player/gate", data={"token": "x"}, timeout=10)
    print(f"\n[no-X-BB-header]\n  Status: {r.status_code}\n  Body: {r.text[:300]}")
except: pass

# ============================================================
# [2] Probe for alternate player endpoints (maybe gate can be skipped)
# ============================================================
print("\n" + "="*60)
print("[2] Alternate player endpoints")
print("="*60)

paths = [
    "/api/player",
    "/api/player/sources",
    "/api/player/stream",
    "/api/player/servers",
    "/api/player/hannibal-a54k9w",
    "/api/player/play",
    "/api/player/play/hannibal-a54k9w",
    "/api/play",
    "/api/play/hannibal-a54k9w",
    "/api/sources",
    "/api/stream",
    "/api/tv/play/hannibal-a54k9w",
    "/api/tv/hannibal-a54k9w",
]
for p in paths:
    for method in ["GET", "POST"]:
        try:
            if method == "GET":
                r = ses.get(f"{BASE}{p}", timeout=8)
            else:
                r = ses.post(f"{BASE}{p}", json={"id": "hannibal-a54k9w", "slug": "hannibal-a54k9w"}, timeout=8)
            ct = r.headers.get("Content-Type", "")[:40]
            print(f"  [{method}] {p}: {r.status_code}, {len(r.text)}B, ct={ct}")
            if r.status_code == 200 and len(r.text) < 3000:
                print(f"    {r.text[:300]}")
        except Exception as e:
            pass

# ============================================================
# [3] Does the gate set a cookie? Can we forge it?
# ============================================================
print("\n" + "="*60)
print("[3] Cookie behavior — try to forge player cookie")
print("="*60)

# Some sites set bb_player=1 or similar after gate
forged_cookies = [
    {"bb_player": "1"},
    {"bb_player_verified": "1"},
    {"player_gate": "1"},
    {"pg_ok": "1"},
    {"bb_ts": "1"},
    {"__bb_player": "1"},
    {"bb_access": "1"},
    {"turnstile_ok": "1"},
]
for ck in forged_cookies:
    try:
        r = ses.get(PLAY, cookies=ck, timeout=10)
        # Check if it's the play page (behind gate) or the actual player
        is_player = ('<video' in r.text or 'm3u8' in r.text or '.mp4' in r.text
                     or 'nashira' in r.text.lower() or 'markab' in r.text.lower())
        if is_player or len(r.text) > 20000:
            print(f"  ✅ Cookie {ck} → {len(r.text)}B (bypass!)")
            print(f"     Preview: {r.text[:300]}")
        else:
            pass  # normal: still shows Turnstile
    except: pass
print(f"  (no forged cookie bypassed)")

# ============================================================
# [4] Check if /api/auth/csrf gives us anything
# ============================================================
print("\n" + "="*60)
print("[4] Auth state")
print("="*60)
r = ses.get(f"{BASE}/api/auth/csrf", timeout=10)
print(f"  csrf: {r.status_code}, {r.text[:200]}")

try:
    r2 = ses.get(f"{BASE}/api/auth/session", timeout=10)
    print(f"  session: {r2.status_code}, {r2.text[:300]}")
except: pass

# ============================================================
# [5] Mobile UA bypass attempt
# ============================================================
print("\n" + "="*60)
print("[5] Mobile UA — some sites skip Turnstile on mobile")
print("="*60)
mobile_uas = [
    "Mozilla/5.0 (iPhone; CPU iPhone OS 17_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0 Mobile/15E148 Safari/604.1",
    "Mozilla/5.0 (Linux; Android 14; SM-S918B) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36",
    "Mozilla/5.0 (iPad; CPU OS 17_0 like Mac OS X) AppleWebKit/605.1.15",
]
for ua in mobile_uas:
    try:
        m = requests.Session()
        m.headers.update({"User-Agent": ua, "Referer": PLAY})
        rr = m.get(PLAY, timeout=10)
        has_player = '<video' in rr.text or 'm3u8' in rr.text
        has_turnstile = 'turnstile' in rr.text.lower() or 'cf-challenge' in rr.text.lower()
        print(f"  UA[{ua[:30]}] → {rr.status_code}, {len(rr.text)}B, turnstile={has_turnstile}, player={has_player}")
    except: pass

# ============================================================
# [6] Any Turnstile-solver endpoints on this site itself?
# ============================================================
print("\n" + "="*60)
print("[6] Site-native bypass endpoints (rare but exists)")
print("="*60)
bypass_paths = [
    "/api/player/gate/bypass",
    "/api/player/gate/test",
    "/api/player/gate/dev",
    "/api/player/gate/debug",
    "/api/dev/gate",
    "/api/test/bypass",
    "/api/player/gate?debug=1",
    "/api/player/gate?bypass=1",
    "/api/player/gate?skip=1",
    "/api/player/gate?turnstile=0",
]
for p in bypass_paths:
    try:
        r = ses.post(f"{BASE}{p}", data={"token": ""},
                     headers={"X-BB-Player": "1"}, timeout=8)
        if r.status_code != 404:
            print(f"  {p}: {r.status_code}, {r.text[:200]}")
    except: pass

# ============================================================
# [7] Summary
# ============================================================
print("\n" + "="*60)
print("[7] Summary")
print("="*60)
print("""
If no bypass above worked:
- The gate validates the Turnstile token with Cloudflare (cryptographic)
- No header/cookie/UA/value forges a valid token
- Pure Termux "crack" is not possible — Turnstile's design goal

Remaining no-Termux-browser options:
1. Solver API (HTTP-only from Termux, ~$0.001/solve):
   - NopeCHA: free 100 solves, then $0.001/solve
   - 2Captcha: $2.99/1000 solves
   - CapSolver: $0.8/1000 solves
2. One-time phone-browser cookie:
   - Open play page in phone Chrome once
   - Export cf_clearance cookie
   - Use in Termux for 10-30 min
""")
