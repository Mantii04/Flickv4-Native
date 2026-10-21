package b4;

import android.content.Context;
import android.os.Build;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* renamed from: b4.m, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0663m {

    /* renamed from: a, reason: collision with root package name */
    public final Context f8506a;

    /* renamed from: b, reason: collision with root package name */
    public final String f8507b;

    /* renamed from: c, reason: collision with root package name */
    public final String f8508c;

    /* renamed from: d, reason: collision with root package name */
    public ScheduledExecutorService f8509d;

    /* renamed from: e, reason: collision with root package name */
    public ScheduledFuture f8510e;

    /* renamed from: f, reason: collision with root package name */
    public volatile boolean f8511f = false;

    /* renamed from: g, reason: collision with root package name */
    public C0660j f8512g = null;

    /* renamed from: h, reason: collision with root package name */
    public ArrayList f8513h = null;

    /* renamed from: i, reason: collision with root package name */
    public String f8514i = "";

    public C0663m(Context context, String str) {
        this.f8506a = context;
        this.f8507b = AbstractC0653c.a(context);
        this.f8508c = str;
    }

    public static String a(String str) {
        try {
            byte[] digest = MessageDigest.getInstance("MD5").digest(str.getBytes("UTF-8"));
            StringBuilder sb = new StringBuilder();
            for (byte b7 : digest) {
                sb.append(String.format("%02x", Byte.valueOf(b7)));
            }
            return sb.toString();
        } catch (Exception e3) {
            throw new RuntimeException(e3);
        }
    }

    public final String b() {
        StringBuilder sb = new StringBuilder("https://imsdk.tv/sdk/latest/info?id=");
        Context context = this.f8506a;
        sb.append(AbstractC0653c.a(context));
        sb.append("&d=");
        sb.append(Build.MODEL);
        sb.append("&m=");
        sb.append(Build.MANUFACTURER);
        sb.append("&v=2026.4.0&as=");
        sb.append(Build.VERSION.SDK_INT);
        sb.append("&ar=");
        sb.append(Build.VERSION.RELEASE);
        sb.append("&bundle=");
        sb.append(context.getPackageName());
        sb.append("&pid=");
        sb.append(this.f8508c);
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(sb.toString()).openConnection();
        httpURLConnection.setConnectTimeout(15000);
        httpURLConnection.setReadTimeout(30000);
        try {
            InputStream inputStream = httpURLConnection.getInputStream();
            try {
                byte[] bArr = new byte[8192];
                StringBuilder sb2 = new StringBuilder();
                while (true) {
                    int read = inputStream.read(bArr);
                    if (read == -1) {
                        String sb3 = sb2.toString();
                        inputStream.close();
                        return sb3;
                    }
                    sb2.append(new String(bArr, 0, read, StandardCharsets.UTF_8));
                }
            } finally {
            }
        } finally {
            httpURLConnection.disconnect();
        }
    }

    public synchronized void a() {
        C0660j c0660j;
        try {
            if (this.f8511f) {
                this.f8511f = false;
                ScheduledFuture scheduledFuture = this.f8510e;
                if (scheduledFuture != null) {
                    scheduledFuture.cancel(false);
                }
                ArrayList arrayList = this.f8513h;
                if (arrayList != null && (c0660j = this.f8512g) != null) {
                    try {
                        c0660j.a(arrayList);
                    } catch (InterruptedException e3) {
                        Thread.currentThread().interrupt();
                        AbstractC0664n.a("Interrupted during module stop", e3);
                    }
                }
                ScheduledExecutorService scheduledExecutorService = this.f8509d;
                if (scheduledExecutorService != null) {
                    scheduledExecutorService.shutdownNow();
                    try {
                        if (!this.f8509d.awaitTermination(10L, TimeUnit.SECONDS)) {
                            AbstractC0664n.a("Executor did not terminate in time");
                        }
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                    }
                    this.f8509d = null;
                }
                this.f8512g = null;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void a(Context context, String str) {
        if (this.f8511f) {
            return;
        }
        this.f8511f = true;
        ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(2, new ThreadFactoryC0662l(0));
        this.f8509d = newScheduledThreadPool;
        this.f8512g = new C0660j(this.f8506a, this.f8507b, newScheduledThreadPool);
        this.f8510e = this.f8509d.scheduleWithFixedDelay(new A3.d(this, 28), 0L, 1L, TimeUnit.HOURS);
    }
}
