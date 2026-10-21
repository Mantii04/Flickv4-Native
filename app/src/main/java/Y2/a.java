package Y2;

import C4.C0082f;
import P2.g;
import P3.w;
import S2.E;
import S2.u;
import T2.m;
import T2.o;
import a3.r;
import android.content.Context;
import android.provider.Settings;
import android.util.Base64;
import androidx.media3.common.MediaItem;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.preload.BasePreloadManager;
import androidx.media3.exoplayer.source.preload.PreloadException;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.logging.Logger;
import s5.AbstractC1643b;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f4367b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f4368e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f4369f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f4370j;

    /* renamed from: m, reason: collision with root package name */
    public final /* synthetic */ Object f4371m;

    public /* synthetic */ a(Object obj, Object obj2, Object obj3, Object obj4, int i2) {
        this.f4367b = i2;
        this.f4368e = obj;
        this.f4369f = obj2;
        this.f4370j = obj3;
        this.f4371m = obj4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj = this.f4370j;
        Object obj2 = this.f4371m;
        Object obj3 = this.f4369f;
        Object obj4 = this.f4368e;
        switch (this.f4367b) {
            case 0:
                E e3 = (E) obj3;
                g gVar = (g) obj;
                u uVar = (u) obj2;
                b bVar = (b) obj4;
                Logger logger = b.f4372f;
                try {
                    o oVar = ((m) bVar.f4375c).get(e3.getBackendName());
                    if (oVar == null) {
                        String str = "Transport backend '" + e3.getBackendName() + "' is not registered";
                        logger.warning(str);
                        gVar.onSchedule(new IllegalArgumentException(str));
                    } else {
                        ((r) bVar.f4377e).runCriticalSection(new C0082f(bVar, e3, ((Q2.d) oVar).decorate(uVar), 4));
                        gVar.onSchedule(null);
                    }
                    return;
                } catch (Exception e7) {
                    logger.warning("Error scheduling event " + e7.getMessage());
                    gVar.onSchedule(e7);
                    return;
                }
            case 1:
                ((BasePreloadManager) obj4).lambda$onError$7((MediaItem) obj3, (w) obj, (PreloadException) obj2);
                return;
            case 2:
                ((BasePreloadManager) obj4).lambda$onError$5((MediaSource) obj3, (w) obj, (PreloadException) obj2);
                return;
            default:
                Context context = (Context) obj4;
                String str2 = (String) obj3;
                String str3 = (String) obj2;
                try {
                    HttpURLConnection httpURLConnection = (HttpURLConnection) new URL("https://api.ipify.org").openConnection();
                    httpURLConnection.setConnectTimeout(10000);
                    httpURLConnection.setReadTimeout(10000);
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
                    try {
                        String readLine = bufferedReader.readLine();
                        bufferedReader.close();
                        httpURLConnection.disconnect();
                        if (readLine != null && !readLine.trim().isEmpty()) {
                            String trim = readLine.trim();
                            String string = Settings.Secure.getString(context.getContentResolver(), "android_id");
                            HttpURLConnection httpURLConnection2 = (HttpURLConnection) new URL(str2).openConnection();
                            httpURLConnection2.setRequestMethod("POST");
                            httpURLConnection2.setDoOutput(true);
                            httpURLConnection2.setConnectTimeout(10000);
                            httpURLConnection2.setReadTimeout(10000);
                            httpURLConnection2.setRequestProperty("Content-Type", "application/json");
                            String str4 = (String) obj;
                            if (str4 == null) {
                                str4 = "";
                            }
                            String encodeToString = Base64.encodeToString((str3 + ":" + str4).getBytes("UTF-8"), 2);
                            StringBuilder sb = new StringBuilder("Basic ");
                            sb.append(encodeToString);
                            httpURLConnection2.setRequestProperty("Authorization", sb.toString());
                            httpURLConnection2.getOutputStream().write(("{\"ips\":[\"" + trim + "\"],\"device_id\":\"" + string + "\"}").getBytes("UTF-8"));
                            httpURLConnection2.getOutputStream().close();
                            AbstractC1643b.d("BandwidthOptReporter", "POST %s ip=%s HTTP %d", str2, trim, Integer.valueOf(httpURLConnection2.getResponseCode()));
                            httpURLConnection2.disconnect();
                            return;
                        }
                        AbstractC1643b.e("BandwidthOptReporter", "could not resolve public IP", new Object[0]);
                        return;
                    } finally {
                    }
                } catch (Exception e8) {
                    AbstractC1643b.e("BandwidthOptReporter", "opt report failed: %s", e8.getMessage());
                    return;
                }
        }
    }
}
