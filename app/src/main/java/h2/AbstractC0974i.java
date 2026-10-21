package h2;

import com.android.volley.Cache;
import com.android.volley.NetworkResponse;
import com.android.volley.VolleyLog;
import cz.msebera.android.httpclient.client.cache.HeaderConstants;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import org.apache.commons.lang3.time.TimeZones;

/* renamed from: h2.i, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0974i {
    public static Cache.Entry parseCacheHeaders(NetworkResponse networkResponse) {
        long j7;
        boolean z6;
        long j8;
        long j9;
        long j10;
        long j11;
        long currentTimeMillis = System.currentTimeMillis();
        Map<String, String> map = networkResponse.headers;
        if (map == null) {
            return null;
        }
        String str = map.get("Date");
        long parseDateAsEpoch = str != null ? parseDateAsEpoch(str) : 0L;
        String str2 = map.get("Cache-Control");
        int i2 = 0;
        if (str2 != null) {
            String[] split = str2.split(",", 0);
            z6 = false;
            j8 = 0;
            j9 = 0;
            while (i2 < split.length) {
                String trim = split[i2].trim();
                if (trim.equals(HeaderConstants.CACHE_CONTROL_NO_CACHE) || trim.equals(HeaderConstants.CACHE_CONTROL_NO_STORE)) {
                    return null;
                }
                if (trim.startsWith("max-age=")) {
                    try {
                        j8 = Long.parseLong(trim.substring(8));
                    } catch (Exception unused) {
                    }
                } else if (trim.startsWith("stale-while-revalidate=")) {
                    j9 = Long.parseLong(trim.substring(23));
                } else if (trim.equals(HeaderConstants.CACHE_CONTROL_MUST_REVALIDATE) || trim.equals(HeaderConstants.CACHE_CONTROL_PROXY_REVALIDATE)) {
                    z6 = true;
                }
                i2++;
            }
            j7 = 0;
            i2 = 1;
        } else {
            j7 = 0;
            z6 = false;
            j8 = 0;
            j9 = 0;
        }
        String str3 = map.get("Expires");
        long parseDateAsEpoch2 = str3 != null ? parseDateAsEpoch(str3) : j7;
        String str4 = map.get("Last-Modified");
        long parseDateAsEpoch3 = str4 != null ? parseDateAsEpoch(str4) : j7;
        String str5 = map.get("ETag");
        if (i2 != 0) {
            long j12 = (j8 * 1000) + currentTimeMillis;
            if (z6) {
                j11 = j12;
            } else {
                Long.signum(j9);
                j11 = (j9 * 1000) + j12;
            }
            j10 = j12;
        } else {
            j10 = (parseDateAsEpoch <= j7 || parseDateAsEpoch2 < parseDateAsEpoch) ? j7 : (parseDateAsEpoch2 - parseDateAsEpoch) + currentTimeMillis;
            j11 = j10;
        }
        Cache.Entry entry = new Cache.Entry();
        entry.data = networkResponse.data;
        entry.etag = str5;
        entry.softTtl = j10;
        entry.ttl = j11;
        entry.serverDate = parseDateAsEpoch;
        entry.lastModified = parseDateAsEpoch3;
        entry.responseHeaders = map;
        entry.allResponseHeaders = networkResponse.allHeaders;
        return entry;
    }

    public static String parseCharset(Map<String, String> map, String str) {
        String str2;
        if (map != null && (str2 = map.get("Content-Type")) != null) {
            String[] split = str2.split(";", 0);
            for (int i2 = 1; i2 < split.length; i2++) {
                String[] split2 = split[i2].trim().split("=", 0);
                if (split2.length == 2 && split2[0].equals("charset")) {
                    return split2[1];
                }
            }
        }
        return str;
    }

    public static long parseDateAsEpoch(String str) {
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss zzz", Locale.US);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone(TimeZones.GMT_ID));
            return simpleDateFormat.parse(str).getTime();
        } catch (ParseException e3) {
            if ("0".equals(str) || "-1".equals(str)) {
                VolleyLog.v("Unable to parse dateStr: %s, falling back to 0", str);
                return 0L;
            }
            VolleyLog.e(e3, "Unable to parse dateStr: %s, falling back to 0", str);
            return 0L;
        }
    }

    public static String parseCharset(Map<String, String> map) {
        return parseCharset(map, "ISO-8859-1");
    }
}
