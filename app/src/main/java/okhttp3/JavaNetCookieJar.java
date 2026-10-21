package okhttp3;

import P5.p;
import cz.msebera.android.httpclient.cookie.SM;
import java.io.IOException;
import java.net.CookieHandler;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.collections.a;
import kotlin.jvm.internal.j;
import okhttp3.Cookie;
import okhttp3.internal.Internal;
import okhttp3.internal.Util;
import okhttp3.internal.platform.Platform;
import u5.AbstractC1709h;
import v5.z;

/* loaded from: classes2.dex */
public final class JavaNetCookieJar implements CookieJar {
    private final CookieHandler cookieHandler;

    public JavaNetCookieJar(CookieHandler cookieHandler) {
        j.checkNotNullParameter(cookieHandler, "cookieHandler");
        this.cookieHandler = cookieHandler;
    }

    private final List<Cookie> decodeHeaderAsJavaNetCookies(HttpUrl httpUrl, String str) {
        ArrayList arrayList = new ArrayList();
        int length = str.length();
        int i2 = 0;
        while (i2 < length) {
            int delimiterOffset = Util.delimiterOffset(str, ";,", i2, length);
            int delimiterOffset2 = Util.delimiterOffset(str, '=', i2, delimiterOffset);
            String trimSubstring = Util.trimSubstring(str, i2, delimiterOffset2);
            if (!p.startsWith$default(trimSubstring, "$", false, 2, null)) {
                String trimSubstring2 = delimiterOffset2 < delimiterOffset ? Util.trimSubstring(str, delimiterOffset2 + 1, delimiterOffset) : "";
                if (p.startsWith$default(trimSubstring2, "\"", false, 2, null) && p.endsWith$default(trimSubstring2, "\"", false, 2, null)) {
                    trimSubstring2 = trimSubstring2.substring(1, trimSubstring2.length() - 1);
                    j.checkNotNullExpressionValue(trimSubstring2, "this as java.lang.String…ing(startIndex, endIndex)");
                }
                arrayList.add(new Cookie.Builder().name(trimSubstring).value(trimSubstring2).domain(httpUrl.host()).build());
            }
            i2 = delimiterOffset + 1;
        }
        return arrayList;
    }

    @Override // okhttp3.CookieJar
    public List<Cookie> loadForRequest(HttpUrl url) {
        j.checkNotNullParameter(url, "url");
        try {
            Map<String, List<String>> cookieHeaders = this.cookieHandler.get(url.uri(), a.emptyMap());
            j.checkNotNullExpressionValue(cookieHeaders, "cookieHeaders");
            ArrayList arrayList = null;
            for (Map.Entry<String, List<String>> entry : cookieHeaders.entrySet()) {
                String key = entry.getKey();
                List<String> value = entry.getValue();
                if (p.equals(SM.COOKIE, key, true) || p.equals(SM.COOKIE2, key, true)) {
                    j.checkNotNullExpressionValue(value, "value");
                    if (!value.isEmpty()) {
                        for (String header : value) {
                            if (arrayList == null) {
                                arrayList = new ArrayList();
                            }
                            j.checkNotNullExpressionValue(header, "header");
                            arrayList.addAll(decodeHeaderAsJavaNetCookies(url, header));
                        }
                    }
                }
            }
            if (arrayList == null) {
                return v5.p.emptyList();
            }
            List<Cookie> unmodifiableList = Collections.unmodifiableList(arrayList);
            j.checkNotNullExpressionValue(unmodifiableList, "{\n      Collections.unmo…fiableList(cookies)\n    }");
            return unmodifiableList;
        } catch (IOException e3) {
            Platform platform = Platform.Companion.get();
            HttpUrl resolve = url.resolve("/...");
            j.checkNotNull(resolve);
            platform.log(j.stringPlus("Loading cookies failed for ", resolve), 5, e3);
            return v5.p.emptyList();
        }
    }

    @Override // okhttp3.CookieJar
    public void saveFromResponse(HttpUrl url, List<Cookie> cookies) {
        j.checkNotNullParameter(url, "url");
        j.checkNotNullParameter(cookies, "cookies");
        ArrayList arrayList = new ArrayList();
        Iterator<Cookie> it = cookies.iterator();
        while (it.hasNext()) {
            arrayList.add(Internal.cookieToString(it.next(), true));
        }
        try {
            this.cookieHandler.put(url.uri(), z.mapOf(AbstractC1709h.to(SM.SET_COOKIE, arrayList)));
        } catch (IOException e3) {
            Platform platform = Platform.Companion.get();
            HttpUrl resolve = url.resolve("/...");
            j.checkNotNull(resolve);
            platform.log(j.stringPlus("Saving cookies failed for ", resolve), 5, e3);
        }
    }
}
