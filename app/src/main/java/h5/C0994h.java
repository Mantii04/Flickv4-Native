package h5;

import android.util.Log;
import java.net.InetAddress;
import java.security.SecureRandom;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import okhttp3.Dns;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.dnsoverhttps.DnsOverHttps;
import okhttp3.logging.HttpLoggingInterceptor;

/* renamed from: h5.h, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0994h implements Dns {

    /* renamed from: c, reason: collision with root package name */
    public static C0994h f16620c;

    /* renamed from: a, reason: collision with root package name */
    public final String f16621a;

    /* renamed from: b, reason: collision with root package name */
    public final Dns f16622b;

    public C0994h() {
        Dns dns;
        HttpLoggingInterceptor level = new HttpLoggingInterceptor().setLevel(HttpLoggingInterceptor.Level.BASIC);
        TrustManager[] trustManagerArr = {new C0993g()};
        try {
            SSLContext sSLContext = SSLContext.getInstance("TLS");
            sSLContext.init(null, trustManagerArr, new SecureRandom());
            X509TrustManager x509TrustManager = (X509TrustManager) trustManagerArr[0];
            OkHttpClient.Builder builder = new OkHttpClient.Builder();
            TimeUnit timeUnit = TimeUnit.SECONDS;
            OkHttpClient build = builder.readTimeout(30L, timeUnit).connectTimeout(30L, timeUnit).sslSocketFactory(sSLContext.getSocketFactory(), x509TrustManager).hostnameVerifier(new C0992f()).addInterceptor(level).build();
            this.f16621a = "https://cloudflare-dns.com/dns-query";
            synchronized (this) {
                try {
                    dns = new DnsOverHttps.Builder().client(build).url(HttpUrl.parse("https://cloudflare-dns.com/dns-query")).build();
                } catch (Exception e3) {
                    Log.e("DnsResolver", "Error building DoH for https://cloudflare-dns.com/dns-query, falling back to SYSTEM: " + e3.getMessage());
                    dns = Dns.SYSTEM;
                }
            }
            this.f16622b = dns;
        } catch (Exception e7) {
            throw new RuntimeException(e7);
        }
    }

    public static synchronized C0994h getInstance() {
        C0994h c0994h;
        synchronized (C0994h.class) {
            try {
                if (f16620c == null) {
                    f16620c = new C0994h();
                }
                c0994h = f16620c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c0994h;
    }

    public synchronized Dns getDoh() {
        return this;
    }

    @Override // okhttp3.Dns
    public List<InetAddress> lookup(String str) {
        String str2 = this.f16621a;
        if (str2.isEmpty()) {
            str2 = "SYSTEM";
        }
        Log.d("DnsResolver", "Resolving host: " + str + " using provider: " + str2);
        try {
            List<InetAddress> lookup = this.f16622b.lookup(str);
            StringBuilder sb = new StringBuilder();
            for (InetAddress inetAddress : lookup) {
                if (sb.length() > 0) {
                    sb.append(", ");
                }
                sb.append(inetAddress.getHostAddress());
            }
            Log.d("DnsResolver", "Resolved " + str + " to: " + sb.toString());
            return lookup;
        } catch (Exception e3) {
            b.c.t(e3, A.i.u("Failed to resolve ", str, " with ", str2, ": "), "DnsResolver");
            return null;
        }
    }
}
