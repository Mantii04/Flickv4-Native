package androidx.emoji2.text;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Handler;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class y implements n {

    /* renamed from: a, reason: collision with root package name */
    public final Context f6026a;

    /* renamed from: b, reason: collision with root package name */
    public final J.i f6027b;

    /* renamed from: c, reason: collision with root package name */
    public final x f6028c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f6029d = new Object();

    /* renamed from: e, reason: collision with root package name */
    public Handler f6030e;

    /* renamed from: f, reason: collision with root package name */
    public Executor f6031f;

    /* renamed from: g, reason: collision with root package name */
    public ThreadPoolExecutor f6032g;

    /* renamed from: h, reason: collision with root package name */
    public o f6033h;

    public y(Context context, J.i iVar, x xVar) {
        L.h.checkNotNull(context, "Context cannot be null");
        L.h.checkNotNull(iVar, "FontRequest cannot be null");
        this.f6026a = context.getApplicationContext();
        this.f6027b = iVar;
        this.f6028c = xVar;
    }

    public final void a() {
        synchronized (this.f6029d) {
            try {
                this.f6033h = null;
                Handler handler = this.f6030e;
                if (handler != null) {
                    handler.removeCallbacks(null);
                }
                this.f6030e = null;
                ThreadPoolExecutor threadPoolExecutor = this.f6032g;
                if (threadPoolExecutor != null) {
                    threadPoolExecutor.shutdown();
                }
                this.f6031f = null;
                this.f6032g = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b() {
        synchronized (this.f6029d) {
            try {
                if (this.f6033h == null) {
                    return;
                }
                if (this.f6031f == null) {
                    ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 15L, TimeUnit.SECONDS, new LinkedBlockingDeque(), new ThreadFactoryC0442a("emojiCompat"));
                    threadPoolExecutor.allowCoreThreadTimeOut(true);
                    this.f6032g = threadPoolExecutor;
                    this.f6031f = threadPoolExecutor;
                }
                this.f6031f.execute(new A3.d(this, 23));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final J.q c() {
        try {
            J.p fetchFonts = this.f6028c.fetchFonts(this.f6026a, this.f6027b);
            if (fetchFonts.getStatusCode() != 0) {
                throw new RuntimeException("fetchFonts failed (" + fetchFonts.getStatusCode() + ")");
            }
            J.q[] fonts = fetchFonts.getFonts();
            if (fonts == null || fonts.length == 0) {
                throw new RuntimeException("fetchFonts failed (empty result)");
            }
            return fonts[0];
        } catch (PackageManager.NameNotFoundException e3) {
            throw new RuntimeException("provider not found", e3);
        }
    }

    @Override // androidx.emoji2.text.n
    public void load(o oVar) {
        L.h.checkNotNull(oVar, "LoaderCallback cannot be null");
        synchronized (this.f6029d) {
            this.f6033h = oVar;
        }
        b();
    }

    public void setExecutor(Executor executor) {
        synchronized (this.f6029d) {
            this.f6031f = executor;
        }
    }
}
