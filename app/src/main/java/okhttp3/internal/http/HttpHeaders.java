package okhttp3.internal.http;

import P5.p;
import cz.msebera.android.httpclient.message.BasicHeaderValueFormatter;
import cz.msebera.android.httpclient.protocol.HTTP;
import e6.C0870l;
import e6.C0873o;
import java.io.EOFException;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.j;
import okhttp3.Challenge;
import okhttp3.Cookie;
import okhttp3.CookieJar;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.Response;
import okhttp3.internal.Util;
import okhttp3.internal.platform.Platform;
import okio.ByteString;

/* loaded from: classes2.dex */
public final class HttpHeaders {
    private static final ByteString QUOTED_STRING_DELIMITERS;
    private static final ByteString TOKEN_DELIMITERS;

    static {
        C0873o c0873o = ByteString.f19159j;
        QUOTED_STRING_DELIMITERS = c0873o.encodeUtf8(BasicHeaderValueFormatter.UNSAFE_CHARS);
        TOKEN_DELIMITERS = c0873o.encodeUtf8("\t ,=");
    }

    public static final boolean hasBody(Response response) {
        j.checkNotNullParameter(response, "response");
        return promisesBody(response);
    }

    public static final List<Challenge> parseChallenges(Headers headers, String headerName) {
        j.checkNotNullParameter(headers, "<this>");
        j.checkNotNullParameter(headerName, "headerName");
        ArrayList arrayList = new ArrayList();
        int size = headers.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (p.equals(headerName, headers.name(i2), true)) {
                try {
                    readChallengeHeader(new C0870l().writeUtf8(headers.value(i2)), arrayList);
                } catch (EOFException e3) {
                    Platform.Companion.get().log("Unable to parse challenge", 5, e3);
                }
            }
        }
        return arrayList;
    }

    public static final boolean promisesBody(Response response) {
        j.checkNotNullParameter(response, "<this>");
        if (j.areEqual(response.request().method(), "HEAD")) {
            return false;
        }
        int code = response.code();
        return (((code >= 100 && code < 200) || code == 204 || code == 304) && Util.headersContentLength(response) == -1 && !p.equals(HTTP.CHUNK_CODING, Response.header$default(response, "Transfer-Encoding", null, 2, null), true)) ? false : true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x00b9, code lost:
    
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00b9, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final void readChallengeHeader(e6.C0870l r7, java.util.List<okhttp3.Challenge> r8) throws java.io.EOFException {
        /*
            r0 = 0
        L1:
            r1 = r0
        L2:
            if (r1 != 0) goto Lf
            skipCommasAndWhitespace(r7)
            java.lang.String r1 = readToken(r7)
            if (r1 != 0) goto Lf
            goto Lb6
        Lf:
            boolean r2 = skipCommasAndWhitespace(r7)
            java.lang.String r3 = readToken(r7)
            if (r3 != 0) goto L2e
            boolean r7 = r7.exhausted()
            if (r7 != 0) goto L21
            goto Lb6
        L21:
            okhttp3.Challenge r7 = new okhttp3.Challenge
            java.util.Map r0 = kotlin.collections.a.emptyMap()
            r7.<init>(r1, r0)
            r8.add(r7)
            return
        L2e:
            r4 = 61
            int r5 = okhttp3.internal.Util.skipAll(r7, r4)
            boolean r6 = skipCommasAndWhitespace(r7)
            if (r2 != 0) goto L65
            if (r6 != 0) goto L42
            boolean r2 = r7.exhausted()
            if (r2 == 0) goto L65
        L42:
            okhttp3.Challenge r2 = new okhttp3.Challenge
            java.lang.StringBuilder r3 = b.c.o(r3)
            java.lang.String r4 = "="
            java.lang.String r4 = P5.p.repeat(r4, r5)
            r3.append(r4)
            java.lang.String r3 = r3.toString()
            java.util.Map r3 = java.util.Collections.singletonMap(r0, r3)
            java.lang.String r4 = "singletonMap<String, Str…ek + \"=\".repeat(eqCount))"
            kotlin.jvm.internal.j.checkNotNullExpressionValue(r3, r4)
            r2.<init>(r1, r3)
            r8.add(r2)
            goto L1
        L65:
            java.util.LinkedHashMap r2 = new java.util.LinkedHashMap
            r2.<init>()
            int r6 = okhttp3.internal.Util.skipAll(r7, r4)
            int r6 = r6 + r5
        L6f:
            if (r3 != 0) goto L80
            java.lang.String r3 = readToken(r7)
            boolean r5 = skipCommasAndWhitespace(r7)
            if (r5 != 0) goto Lb9
            int r5 = okhttp3.internal.Util.skipAll(r7, r4)
            r6 = r5
        L80:
            if (r6 == 0) goto Lb9
            r5 = 1
            if (r6 <= r5) goto L86
            goto Lb6
        L86:
            boolean r5 = skipCommasAndWhitespace(r7)
            if (r5 == 0) goto L8d
            goto Lb6
        L8d:
            r5 = 34
            boolean r5 = startsWith(r7, r5)
            if (r5 == 0) goto L9a
            java.lang.String r5 = readQuotedString(r7)
            goto L9e
        L9a:
            java.lang.String r5 = readToken(r7)
        L9e:
            if (r5 != 0) goto La1
            goto Lb6
        La1:
            java.lang.Object r3 = r2.put(r3, r5)
            java.lang.String r3 = (java.lang.String) r3
            if (r3 == 0) goto Laa
            goto Lb6
        Laa:
            boolean r3 = skipCommasAndWhitespace(r7)
            if (r3 != 0) goto Lb7
            boolean r3 = r7.exhausted()
            if (r3 != 0) goto Lb7
        Lb6:
            return
        Lb7:
            r3 = r0
            goto L6f
        Lb9:
            okhttp3.Challenge r4 = new okhttp3.Challenge
            r4.<init>(r1, r2)
            r8.add(r4)
            r1 = r3
            goto L2
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http.HttpHeaders.readChallengeHeader(e6.l, java.util.List):void");
    }

    private static final String readQuotedString(C0870l c0870l) throws EOFException {
        if (c0870l.readByte() != 34) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        C0870l c0870l2 = new C0870l();
        while (true) {
            long indexOfElement = c0870l.indexOfElement(QUOTED_STRING_DELIMITERS);
            if (indexOfElement == -1) {
                return null;
            }
            if (c0870l.getByte(indexOfElement) == 34) {
                c0870l2.write(c0870l, indexOfElement);
                c0870l.readByte();
                return c0870l2.readUtf8();
            }
            if (c0870l.size() == indexOfElement + 1) {
                return null;
            }
            c0870l2.write(c0870l, indexOfElement);
            c0870l.readByte();
            c0870l2.write(c0870l, 1L);
        }
    }

    private static final String readToken(C0870l c0870l) {
        long indexOfElement = c0870l.indexOfElement(TOKEN_DELIMITERS);
        if (indexOfElement == -1) {
            indexOfElement = c0870l.size();
        }
        if (indexOfElement != 0) {
            return c0870l.readUtf8(indexOfElement);
        }
        return null;
    }

    public static final void receiveHeaders(CookieJar cookieJar, HttpUrl url, Headers headers) {
        j.checkNotNullParameter(cookieJar, "<this>");
        j.checkNotNullParameter(url, "url");
        j.checkNotNullParameter(headers, "headers");
        if (cookieJar == CookieJar.NO_COOKIES) {
            return;
        }
        List<Cookie> parseAll = Cookie.Companion.parseAll(url, headers);
        if (parseAll.isEmpty()) {
            return;
        }
        cookieJar.saveFromResponse(url, parseAll);
    }

    private static final boolean skipCommasAndWhitespace(C0870l c0870l) {
        boolean z6 = false;
        while (!c0870l.exhausted()) {
            byte b7 = c0870l.getByte(0L);
            if (b7 == 44) {
                c0870l.readByte();
                z6 = true;
            } else {
                if (b7 != 32 && b7 != 9) {
                    break;
                }
                c0870l.readByte();
            }
        }
        return z6;
    }

    private static final boolean startsWith(C0870l c0870l, byte b7) {
        return !c0870l.exhausted() && c0870l.getByte(0L) == b7;
    }
}
