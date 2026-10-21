import requests, re, json

UA = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/124"
H = {"User-Agent": UA}

def test_domain(domain):
    print(f"\n--- Testing {domain} ---")
    url = f"https://{domain}/embed/tv/tt2243973/1/1"
    try:
        r = requests.get(url, headers=H, timeout=15)
        print(f"Status: {r.status_code}, Length: {len(r.text)}B")
        
        if r.status_code != 200:
            print(f"❌ Failed")
            return
            
        # Look for 'var Q =' pattern
        q_start = r.text.find("var Q = ")
        if q_start != -1:
            print(f"✅ FOUND 'var Q' pattern! This domain works with our pure Python script.")
            return True
        else:
            print(f"❌ No 'var Q' found. Preview: {r.text[:100]}")
            return False
            
    except Exception as e:
        print(f"❌ Connection error: {str(e)[:80]}")
        return False

domains = [
    "vidsrc.fyi",
    "vidsrc.buzz",
    "vidsrc.sh",
    "vidsrc.su",
    "vidsrc.sbs",
    "vidsrc.mov",
    "vidsrc.to",
    "vidsrc.net",
    "vidsrc.cc"
]

working = []
for d in domains:
    if test_domain(d):
        working.append(d)

print("\n" + "="*50)
print(f"Working domains (pure Python, no browser): {working}")
print("="*50)
