package o5;

import A.i;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.media3.datasource.DataSchemeDataSource;
import h5.C0992f;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import org.json.JSONArray;
import org.json.JSONObject;
import s5.AbstractC1643b;

/* renamed from: o5.e, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1473e {

    /* renamed from: k, reason: collision with root package name */
    public static final String[] f19148k = {"https://pubs.abnetworks.io/postconsent", "https://pubs.myrc.xyz/postconsent"};

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f19149a;

    /* renamed from: b, reason: collision with root package name */
    public final String f19150b;

    /* renamed from: c, reason: collision with root package name */
    public final ExecutorService f19151c = Executors.newSingleThreadExecutor();

    /* renamed from: d, reason: collision with root package name */
    public final Handler f19152d = new Handler(Looper.getMainLooper());

    /* renamed from: e, reason: collision with root package name */
    public final int f19153e = -1;

    /* renamed from: f, reason: collision with root package name */
    public final String f19154f = "https://cloudflare-dns.com";

    /* renamed from: g, reason: collision with root package name */
    public final Object f19155g = new Object();

    /* renamed from: h, reason: collision with root package name */
    public final List f19156h;

    /* renamed from: i, reason: collision with root package name */
    public List f19157i;

    /* renamed from: j, reason: collision with root package name */
    public long f19158j;

    public C1473e(List<String> list, String str) {
        List list2 = Collections.EMPTY_LIST;
        this.f19156h = list2;
        this.f19157i = list2;
        this.f19158j = 0L;
        this.f19149a = new ArrayList(list);
        this.f19150b = str;
    }

    public static String b(String str) {
        try {
            return new URL(str).getHost();
        } catch (Exception unused) {
            return str;
        }
    }

    public static ArrayList c(String str) {
        ArrayList arrayList = new ArrayList();
        try {
            HttpURLConnection e3 = e(str);
            e3.setConnectTimeout(10000);
            e3.setReadTimeout(10000);
            e3.setRequestMethod("GET");
            int responseCode = e3.getResponseCode();
            if (responseCode != 200) {
                AbstractC1643b.w("SeedDiscovery", "Seed %s returned HTTP %d", str, Integer.valueOf(responseCode));
                e3.disconnect();
                return arrayList;
            }
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(e3.getInputStream()));
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    bufferedReader.close();
                    e3.disconnect();
                    AbstractC1643b.d("SeedDiscovery", "Seed %s returned %d API IPs", str, Integer.valueOf(arrayList.size()));
                    return arrayList;
                }
                String trim = readLine.trim();
                if (TextUtils.isEmpty(trim) ? false : trim.matches("^(\\d{1,3}\\.){3}\\d{1,3}$")) {
                    arrayList.add(trim);
                }
            }
        } catch (Exception e7) {
            AbstractC1643b.e("SeedDiscovery", "Failed to fetch API IPs from seed %s: %s", str, e7.getMessage());
            return arrayList;
        }
    }

    public static HttpURLConnection e(String str) {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        if (httpURLConnection instanceof HttpsURLConnection) {
            HttpsURLConnection httpsURLConnection = (HttpsURLConnection) httpURLConnection;
            TrustManager[] trustManagerArr = {new C1471c()};
            SSLContext sSLContext = SSLContext.getInstance("TLS");
            sSLContext.init(null, trustManagerArr, new SecureRandom());
            httpsURLConnection.setSSLSocketFactory(sSLContext.getSocketFactory());
            httpsURLConnection.setHostnameVerifier(new C0992f());
        }
        return httpURLConnection;
    }

    public final String a(String str, String str2) {
        int i2 = this.f19153e;
        if (i2 <= 0) {
            return i.l("https://", str, str2);
        }
        return "http://" + str + ":" + i2 + str2;
    }

    public final List d() {
        JSONArray optJSONArray;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Iterator it = this.f19149a.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (str.contains("://")) {
                String b7 = b(str);
                arrayList.add(str);
                if (!TextUtils.isEmpty(b7)) {
                    arrayList2.add(b7);
                }
                AbstractC1643b.d("SeedDiscovery", "Seed entry is a full URL: %s (host=%s)", str, b7);
            } else if (TextUtils.isEmpty(str) ? false : str.matches("^(\\d{1,3}\\.){3}\\d{1,3}$")) {
                arrayList.add(a(str, "/v1/seeds"));
                arrayList2.add(str);
                AbstractC1643b.d("SeedDiscovery", "Seed %s is a direct IP, skipping DoH", str);
            } else {
                ArrayList arrayList3 = new ArrayList();
                try {
                    HttpURLConnection e3 = e(this.f19154f + "/dns-query?name=" + str + "&type=A");
                    e3.setRequestProperty("accept", "application/dns-json");
                    e3.setConnectTimeout(10000);
                    e3.setReadTimeout(10000);
                    e3.setRequestMethod("GET");
                    if (e3.getResponseCode() != 200) {
                        e3.disconnect();
                    } else {
                        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(e3.getInputStream()));
                        StringBuilder sb = new StringBuilder();
                        while (true) {
                            String readLine = bufferedReader.readLine();
                            if (readLine == null) {
                                break;
                            }
                            sb.append(readLine);
                        }
                        bufferedReader.close();
                        e3.disconnect();
                        JSONObject jSONObject = new JSONObject(sb.toString());
                        if (jSONObject.optInt("Status", -1) == 0 && (optJSONArray = jSONObject.optJSONArray("Answer")) != null) {
                            for (int i2 = 0; i2 < optJSONArray.length(); i2++) {
                                JSONObject jSONObject2 = optJSONArray.getJSONObject(i2);
                                if (jSONObject2.optInt("type", 0) == 1) {
                                    String trim = jSONObject2.optString(DataSchemeDataSource.SCHEME_DATA, "").trim();
                                    if (TextUtils.isEmpty(trim) ? false : trim.matches("^(\\d{1,3}\\.){3}\\d{1,3}$")) {
                                        arrayList3.add(trim);
                                    }
                                }
                            }
                        }
                    }
                } catch (Exception e7) {
                    AbstractC1643b.e("SeedDiscovery", "DoH resolution failed for %s: %s", str, e7.getMessage());
                }
                AbstractC1643b.d("SeedDiscovery", "DoH %s -> %s", str, arrayList3);
                Iterator it2 = arrayList3.iterator();
                while (it2.hasNext()) {
                    String str2 = (String) it2.next();
                    arrayList.add(a(str2, "/v1/seeds"));
                    arrayList2.add(str2);
                }
            }
        }
        ArrayList arrayList4 = new ArrayList();
        if (!arrayList.isEmpty()) {
            synchronized (this.f19155g) {
                new ArrayList(arrayList2);
            }
            Iterator it3 = arrayList.iterator();
            while (true) {
                if (!it3.hasNext()) {
                    break;
                }
                String str3 = (String) it3.next();
                ArrayList c7 = c(str3);
                if (!c7.isEmpty()) {
                    b(str3);
                    arrayList4.addAll(c7);
                    break;
                }
            }
        } else {
            AbstractC1643b.e("SeedDiscovery", "No seed endpoints available for %s", this.f19149a);
        }
        if (arrayList4.isEmpty() && !TextUtils.isEmpty(this.f19150b)) {
            AbstractC1643b.w("SeedDiscovery", "Seeds returned no API IPs; trying postconsent fallback for pub=%s", this.f19150b);
            String[] strArr = f19148k;
            int i7 = 0;
            while (true) {
                if (i7 >= 2) {
                    break;
                }
                String str4 = strArr[i7];
                StringBuilder s6 = i.s(str4, "?pub=");
                s6.append(this.f19150b);
                s6.append("&key=9221346234fa4fb880caf324effcff004025a41a51d672a7");
                ArrayList c8 = c(s6.toString());
                if (!c8.isEmpty()) {
                    b(str4);
                    arrayList4.addAll(c8);
                    AbstractC1643b.i("SeedDiscovery", "FALLBACK USED: postconsent %s returned %d API IPs for pub=%s", b(str4), Integer.valueOf(c8.size()), this.f19150b);
                    break;
                }
                i7++;
            }
        }
        if (arrayList4.isEmpty()) {
            AbstractC1643b.e("SeedDiscovery", "No API IPs from seeds or postconsent fallback", new Object[0]);
            return Collections.EMPTY_LIST;
        }
        Collections.shuffle(arrayList4);
        synchronized (this.f19155g) {
            this.f19157i = new ArrayList(arrayList4);
            this.f19158j = System.currentTimeMillis();
        }
        AbstractC1643b.d("SeedDiscovery", "API IP cache refreshed: %s", arrayList4);
        return new ArrayList(arrayList4);
    }

    public void executeGet(String str, InterfaceC1472d interfaceC1472d) {
        this.f19151c.execute(new RunnableC1469a(this, str, false, interfaceC1472d));
    }

    public void executePost(String str, InterfaceC1472d interfaceC1472d) {
        this.f19151c.execute(new RunnableC1469a(this, str, true, interfaceC1472d));
    }

    public final String f(String str, List list, boolean z6) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str2 = (String) it.next();
            try {
                String a7 = a(str2, str);
                AbstractC1643b.d("SeedDiscovery", "%s %s", z6 ? "POST" : "GET", a7);
                HttpURLConnection e3 = e(a7);
                e3.setConnectTimeout(10000);
                e3.setReadTimeout(10000);
                e3.setRequestMethod(z6 ? "POST" : "GET");
                if (z6) {
                    e3.setDoOutput(true);
                    e3.getOutputStream().close();
                }
                int responseCode = e3.getResponseCode();
                if (responseCode >= 500) {
                    AbstractC1643b.w("SeedDiscovery", "API IP %s returned HTTP %d, trying next", str2, Integer.valueOf(responseCode));
                    e3.disconnect();
                } else {
                    if (responseCode != 200) {
                        AbstractC1643b.w("SeedDiscovery", "API IP %s returned HTTP %d (no retry)", str2, Integer.valueOf(responseCode));
                        e3.disconnect();
                        return null;
                    }
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(e3.getInputStream()));
                    StringBuilder sb = new StringBuilder();
                    while (true) {
                        String readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            break;
                        }
                        sb.append(readLine);
                    }
                    bufferedReader.close();
                    e3.disconnect();
                    String trim = sb.toString().trim();
                    if (!trim.isEmpty()) {
                        AbstractC1643b.d("SeedDiscovery", "Success from API IP %s", str2);
                        return trim;
                    }
                    AbstractC1643b.w("SeedDiscovery", "API IP %s returned empty body, trying next", str2);
                }
            } catch (Exception e7) {
                AbstractC1643b.e("SeedDiscovery", "Request to %s failed: %s", str2, e7.getMessage());
            }
        }
        return null;
    }

    public List<String> getCachedApiIps() {
        ArrayList arrayList;
        synchronized (this.f19155g) {
            arrayList = new ArrayList(this.f19157i);
        }
        return arrayList;
    }

    public boolean isCacheFresh() {
        boolean z6;
        synchronized (this.f19155g) {
            try {
                z6 = !this.f19157i.isEmpty() && System.currentTimeMillis() - this.f19158j < 300000;
            } finally {
            }
        }
        return z6;
    }
}
