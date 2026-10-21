#!/usr/bin/env python3
import json, subprocess, sys

# Node one-liner: use flixhq-api to get servers for Hannibal S1E1
NODE_SCRIPT = r'''
const FlixHQ = require('flixhq-api');
const flixhq = new FlixHQ();
(async () => {
    const results = await flixhq.search("Hannibal");
    const tv = results.find(r => r.type && r.type.toLowerCase().includes('tv')) || results[0];
    if (!tv) { console.log(JSON.stringify({error: "not found"})); return; }
    const details = await flixhq.getDetails(tv.id);
    const seasons = await flixhq.getSeasons(tv.id);
    if (!seasons || seasons.length === 0) { console.log(JSON.stringify({error: "no seasons"})); return; }
    const ep = seasons[0].episodes[0]; // S1E1
    const servers = await flixhq.getServers(tv.id, ep.id);
    console.log(JSON.stringify({title: tv.title, id: tv.id, episode: ep, servers}));
})();
'''

def get_servers():
    print("Calling FlixHQ API via flixhq-api...")
    result = subprocess.run(["node", "-e", NODE_SCRIPT], capture_output=True, text=True, timeout=60)
    if result.returncode != 0:
        print("❌ Node error:", result.stderr[:300])
        sys.exit(1)
    return json.loads(result.stdout)

def crack_filemoon(code):
    # import the cracker from the earlier working script
    import importlib.util
    spec = importlib.util.spec_from_file_location("fm", "filemoon.py")
    fm = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(fm)
    return fm.extract(code)

def main():
    data = get_servers()
    if "error" in data:
        print(f"❌ {data['error']}")
        sys.exit(1)
    print(f"✅ Found: {data['title']}  episode {data['episode']}")
    servers = data.get("servers", [])
    print(f"   {len(servers)} server(s) exposed")
    fm_codes = []
    for s in servers:
        name = s.get("name", "")
        url = s.get("url", "")
        print(f"   - {name}: {url[:80]}")
        if "filemoon" in (name + url).lower():
            code = url.rstrip("/").split("/e/")[-1].split("?")[0]
            fm_codes.append(code)
    if not fm_codes:
        print("\n❌ No Filemoon server exposed by FlixHQ for Hannibal S1E1.")
        print("   FlixHQ uses VidCloud/UpCloud/MixDrop for most Western TV.")
        sys.exit(0)
    print(f"\n🎯 {len(fm_codes)} Filemoon code(s): {fm_codes}")
    for code in fm_codes:
        print(f"\n--- Cracking {code} ---")
        res = crack_filemoon(code)
        if res.get("ok"):
            for src in res["payload"].get("sources", []):
                print(f"   ✅ {src.get('label')}  height={src.get('height')}  {src.get('url','')[:100]}")
        else:
            print(f"   ❌ {res.get('stage')}: {str(res.get('detail'))[:120]}")

if __name__ == "__main__":
    main()
