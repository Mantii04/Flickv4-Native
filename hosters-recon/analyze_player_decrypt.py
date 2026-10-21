import re, json, base64, hashlib
from Crypto.Cipher import AES

bundle = open("player.bundle.min.js").read()
print(f"Bundle: {len(bundle)} chars\n")

print("="*60)
print("[1] Searching for 'enc' keyword usages")
print("="*60)
for m in re.finditer(r'["\']enc["\']', bundle):
    start = max(0, m.start() - 200)
    end = min(len(bundle), m.start() + 400)
    print(f"\n...{bundle[start:end]}...")
    if m.start() > 5000:  # don't spam too much
        break

print("\n" + "="*60)
print("[2] Encryption-related function names and calls")
print("="*60)
patterns = [
    r'\bdecrypt\w*\b',
    r'\bencrypt\w*\b',
    r'\bCryptoJS\w*\b',
    r'\bcrypto\.subtle\w*\b',
    r'\bcreateDecipher\w*\b',
    r'\bAES\b',
    r'\bimportKey\b',
    r'\batob\s*\(',
    r'\bbtoa\s*\(',
    r'\bkey_parts\b',
    r'\bpbkdf2\w*\b',
    r'\bsha256\w*\b',
    r'\bsha-256\b',
]
found_keys = set()
for pat in patterns:
    for m in re.finditer(pat, bundle, re.I):
        name = m.group(0)
        if name in found_keys: continue
        found_keys.add(name)
        start = max(0, m.start() - 80)
        end = min(len(bundle), m.start() + 250)
        print(f"\n[{name}] ...{bundle[start:end]}...")

print("\n" + "="*60)
print("[3] All base64-like long strings (potential keys)")
print("="*60)
for m in re.finditer(r'["\']([A-Za-z0-9+/_-]{32,}={0,2})["\']', bundle):
    s = m.group(1)
    print(f"  len={len(s)}: {s[:80]}...")

print("\n" + "="*60)
print("[4] Key/token/salt/iv variable assignments")
print("="*60)
for kw in ['"key"', "'key'", '"secret"', '"token"', '"salt"', '"iv"', '"nonce"']:
    for m in re.finditer(re.escape(kw), bundle):
        start = max(0, m.start() - 50)
        end = min(len(bundle), m.start() + 300)
        snippet = bundle[start:end]
        if any(k in snippet for k in ['=', ':', '+']):
            print(f"\n[{kw}] ...{snippet[:350]}...")
            break

print("\n" + "="*60)
print("[5] Fetch patterns — endpoints and URLs in bundle")
print("="*60)
for m in re.finditer(r'fetch\s*\(\s*["\'`]([^"\'`]{3,200})', bundle):
    print(f"  fetch: {m.group(1)[:150]}")

print("\n" + "="*60)
print("[6] JSON.parse + enc references — decryption callers")
print("="*60)
for m in re.finditer(r'JSON\.parse', bundle):
    start = max(0, m.start() - 300)
    end = min(len(bundle), m.start() + 200)
    snippet = bundle[start:end]
    if any(k in snippet.lower() for k in ['enc', 'decrypt', 'aes', 'key']):
        print(f"\n...{snippet}...")

