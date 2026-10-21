package androidx.media3.datasource;

import P3.v;
import android.text.TextUtils;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.UnstableApi;
import com.google.common.collect.ImmutableMap;
import cz.msebera.android.httpclient.cookie.SM;
import java.net.CookieHandler;
import java.net.URI;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@UnstableApi
/* loaded from: classes.dex */
public final class HttpUtil {
    private static final String TAG = "HttpUtil";
    private static final Pattern CONTENT_RANGE_WITH_START_AND_END = Pattern.compile("bytes (\\d+)-(\\d+)/(?:\\d+|\\*)");
    private static final Pattern CONTENT_RANGE_WITH_SIZE = Pattern.compile("bytes (?:(?:\\d+-\\d+)|\\*)/(\\d+)");

    private HttpUtil() {
    }

    public static String buildRangeRequestHeader(long j7, long j8) {
        if (j7 == 0 && j8 == -1) {
            return null;
        }
        StringBuilder r6 = A.i.r(j7, "bytes=", "-");
        if (j8 != -1) {
            r6.append((j7 + j8) - 1);
        }
        return r6.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:24:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:6:0x002d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long getContentLength(java.lang.String r10, java.lang.String r11) {
        /*
            java.lang.String r0 = "Inconsistent headers ["
            boolean r1 = android.text.TextUtils.isEmpty(r10)
            java.lang.String r2 = "]"
            java.lang.String r3 = "HttpUtil"
            if (r1 != 0) goto L25
            long r4 = java.lang.Long.parseLong(r10)     // Catch: java.lang.NumberFormatException -> L11
            goto L27
        L11:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r4 = "Unexpected Content-Length ["
            r1.<init>(r4)
            r1.append(r10)
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            androidx.media3.common.util.Log.e(r3, r1)
        L25:
            r4 = -1
        L27:
            boolean r1 = android.text.TextUtils.isEmpty(r11)
            if (r1 != 0) goto L9a
            java.util.regex.Pattern r1 = androidx.media3.datasource.HttpUtil.CONTENT_RANGE_WITH_START_AND_END
            java.util.regex.Matcher r1 = r1.matcher(r11)
            boolean r6 = r1.matches()
            if (r6 == 0) goto L9a
            r6 = 2
            java.lang.String r6 = r1.group(r6)     // Catch: java.lang.NumberFormatException -> L86
            java.lang.Object r6 = P3.v.checkNotNull(r6)     // Catch: java.lang.NumberFormatException -> L86
            java.lang.String r6 = (java.lang.String) r6     // Catch: java.lang.NumberFormatException -> L86
            long r6 = java.lang.Long.parseLong(r6)     // Catch: java.lang.NumberFormatException -> L86
            r8 = 1
            java.lang.String r1 = r1.group(r8)     // Catch: java.lang.NumberFormatException -> L86
            java.lang.Object r1 = P3.v.checkNotNull(r1)     // Catch: java.lang.NumberFormatException -> L86
            java.lang.String r1 = (java.lang.String) r1     // Catch: java.lang.NumberFormatException -> L86
            long r8 = java.lang.Long.parseLong(r1)     // Catch: java.lang.NumberFormatException -> L86
            long r6 = r6 - r8
            r8 = 1
            long r6 = r6 + r8
            r8 = 0
            int r1 = (r4 > r8 ? 1 : (r4 == r8 ? 0 : -1))
            if (r1 >= 0) goto L63
            r4 = r6
            goto L9a
        L63:
            int r1 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r1 == 0) goto L9a
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.NumberFormatException -> L86
            r1.<init>(r0)     // Catch: java.lang.NumberFormatException -> L86
            r1.append(r10)     // Catch: java.lang.NumberFormatException -> L86
            java.lang.String r10 = "] ["
            r1.append(r10)     // Catch: java.lang.NumberFormatException -> L86
            r1.append(r11)     // Catch: java.lang.NumberFormatException -> L86
            r1.append(r2)     // Catch: java.lang.NumberFormatException -> L86
            java.lang.String r10 = r1.toString()     // Catch: java.lang.NumberFormatException -> L86
            androidx.media3.common.util.Log.w(r3, r10)     // Catch: java.lang.NumberFormatException -> L86
            long r4 = java.lang.Math.max(r4, r6)     // Catch: java.lang.NumberFormatException -> L86
            goto L9a
        L86:
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            java.lang.String r0 = "Unexpected Content-Range ["
            r10.<init>(r0)
            r10.append(r11)
            r10.append(r2)
            java.lang.String r10 = r10.toString()
            androidx.media3.common.util.Log.e(r3, r10)
        L9a:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.datasource.HttpUtil.getContentLength(java.lang.String, java.lang.String):long");
    }

    public static String getCookieHeader(String str, Map<String, List<String>> map, CookieHandler cookieHandler) {
        List<String> list;
        if (cookieHandler == null) {
            return "";
        }
        Map<String, List<String>> of = ImmutableMap.of();
        try {
            of = cookieHandler.get(new URI(str), map);
        } catch (Exception e3) {
            Log.w(TAG, "Failed to read cookies from CookieHandler", e3);
        }
        StringBuilder sb = new StringBuilder();
        if (of.containsKey(SM.COOKIE) && (list = of.get(SM.COOKIE)) != null) {
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                sb.append(it.next());
                sb.append("; ");
            }
        }
        String sb2 = sb.toString();
        int length = sb2.length();
        while (length > 0) {
            int codePointBefore = Character.codePointBefore(sb2, length);
            if (!Character.isWhitespace(codePointBefore)) {
                break;
            }
            length -= Character.charCount(codePointBefore);
        }
        return sb2.substring(0, length);
    }

    public static long getDocumentSize(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1L;
        }
        Matcher matcher = CONTENT_RANGE_WITH_SIZE.matcher(str);
        if (matcher.matches()) {
            return Long.parseLong((String) v.checkNotNull(matcher.group(1)));
        }
        return -1L;
    }

    public static void storeCookiesFromHeaders(String str, Map<String, List<String>> map, CookieHandler cookieHandler) {
        if (cookieHandler == null) {
            return;
        }
        try {
            cookieHandler.put(new URI(str), map);
        } catch (Exception e3) {
            Log.w(TAG, "Failed to store cookies in CookieHandler", e3);
        }
    }
}
