package cz.msebera.android.httpclient.impl.cookie;

import A.i;
import com.google.firebase.sessions.settings.RemoteSettings;
import cz.msebera.android.httpclient.annotation.Contract;
import cz.msebera.android.httpclient.annotation.ThreadingBehavior;
import cz.msebera.android.httpclient.cookie.ClientCookie;
import cz.msebera.android.httpclient.cookie.CommonCookieAttributeHandler;
import cz.msebera.android.httpclient.cookie.Cookie;
import cz.msebera.android.httpclient.cookie.CookieOrigin;
import cz.msebera.android.httpclient.cookie.MalformedCookieException;
import cz.msebera.android.httpclient.cookie.SM;
import cz.msebera.android.httpclient.cookie.SetCookie;
import cz.msebera.android.httpclient.util.Args;
import cz.msebera.android.httpclient.util.TextUtils;

@Contract(threading = ThreadingBehavior.IMMUTABLE)
/* loaded from: classes2.dex */
public class BasicPathHandler implements CommonCookieAttributeHandler {
    public static boolean pathMatch(String str, String str2) {
        if (str2 == null) {
            str2 = RemoteSettings.FORWARD_SLASH_STRING;
        }
        if (str2.length() > 1 && str2.endsWith(RemoteSettings.FORWARD_SLASH_STRING)) {
            str2 = i.d(1, 0, str2);
        }
        return str.startsWith(str2) && (str2.equals(RemoteSettings.FORWARD_SLASH_STRING) || str.length() == str2.length() || str.charAt(str2.length()) == '/');
    }

    @Override // cz.msebera.android.httpclient.cookie.CommonCookieAttributeHandler
    public String getAttributeName() {
        return ClientCookie.PATH_ATTR;
    }

    @Override // cz.msebera.android.httpclient.cookie.CookieAttributeHandler
    public boolean match(Cookie cookie, CookieOrigin cookieOrigin) {
        Args.notNull(cookie, SM.COOKIE);
        Args.notNull(cookieOrigin, "Cookie origin");
        return pathMatch(cookieOrigin.getPath(), cookie.getPath());
    }

    @Override // cz.msebera.android.httpclient.cookie.CookieAttributeHandler
    public void parse(SetCookie setCookie, String str) throws MalformedCookieException {
        Args.notNull(setCookie, SM.COOKIE);
        if (TextUtils.isBlank(str)) {
            str = RemoteSettings.FORWARD_SLASH_STRING;
        }
        setCookie.setPath(str);
    }

    @Override // cz.msebera.android.httpclient.cookie.CookieAttributeHandler
    public void validate(Cookie cookie, CookieOrigin cookieOrigin) throws MalformedCookieException {
    }
}
