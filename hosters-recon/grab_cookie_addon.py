import json, re
from mitmproxy import http

def response(flow: http.HTTPFlow):
    if "bingebang.st" in flow.request.pretty_url:
        cookies = {}
        # Look for Set-Cookie headers
        for header in flow.response.headers.get_all("set-cookie"):
            # Extract name and value
            match = re.match(r"^([^=]+)=([^;]+)", header)
            if match:
                name, value = match.groups()
                if name in ["cf_clearance", "bb_session"]:
                    cookies[name] = value
                    print(f"🍪 CAPTURED: {name}")

        # Once we have both, save and tell the user
        if "cf_clearance" in cookies and "bb_session" in cookies:
            with open("bingebang_cookies.json", "w") as f:
                json.dump(cookies, f, indent=2)
            print("\n✅ Saved cf_clearance and bb_session to bingebang_cookies.json")
            print("   You can now press Ctrl+C to stop the proxy.")
            # Clear the cookies dict so it doesn't spam the console on every request
            cookies.clear()
