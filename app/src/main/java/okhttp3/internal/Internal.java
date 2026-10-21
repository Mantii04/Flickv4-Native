package okhttp3.internal;

import javax.net.ssl.SSLSocket;
import kotlin.jvm.internal.j;
import okhttp3.Cache;
import okhttp3.ConnectionSpec;
import okhttp3.Cookie;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.Request;
import okhttp3.Response;

/* loaded from: classes2.dex */
public final class Internal {
    public static final Headers.Builder addHeaderLenient(Headers.Builder builder, String line) {
        j.checkNotNullParameter(builder, "builder");
        j.checkNotNullParameter(line, "line");
        return builder.addLenient$okhttp(line);
    }

    public static final void applyConnectionSpec(ConnectionSpec connectionSpec, SSLSocket sslSocket, boolean z6) {
        j.checkNotNullParameter(connectionSpec, "connectionSpec");
        j.checkNotNullParameter(sslSocket, "sslSocket");
        connectionSpec.apply$okhttp(sslSocket, z6);
    }

    public static final Response cacheGet(Cache cache, Request request) {
        j.checkNotNullParameter(cache, "cache");
        j.checkNotNullParameter(request, "request");
        return cache.get$okhttp(request);
    }

    public static final String cookieToString(Cookie cookie, boolean z6) {
        j.checkNotNullParameter(cookie, "cookie");
        return cookie.toString$okhttp(z6);
    }

    public static final Cookie parseCookie(long j7, HttpUrl url, String setCookie) {
        j.checkNotNullParameter(url, "url");
        j.checkNotNullParameter(setCookie, "setCookie");
        return Cookie.Companion.parse$okhttp(j7, url, setCookie);
    }

    public static final Headers.Builder addHeaderLenient(Headers.Builder builder, String name, String value) {
        j.checkNotNullParameter(builder, "builder");
        j.checkNotNullParameter(name, "name");
        j.checkNotNullParameter(value, "value");
        return builder.addLenient$okhttp(name, value);
    }
}
