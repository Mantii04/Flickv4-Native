package m;

import java.util.concurrent.Executor;

/* renamed from: m.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1256a extends AbstractC1260e {

    /* renamed from: b, reason: collision with root package name */
    public static volatile C1256a f18192b;

    /* renamed from: c, reason: collision with root package name */
    public static final androidx.media3.exoplayer.dash.offline.a f18193c = new androidx.media3.exoplayer.dash.offline.a(1);

    /* renamed from: a, reason: collision with root package name */
    public final C1259d f18194a = new C1259d();

    public static Executor getIOThreadExecutor() {
        return f18193c;
    }

    public static C1256a getInstance() {
        if (f18192b != null) {
            return f18192b;
        }
        synchronized (C1256a.class) {
            try {
                if (f18192b == null) {
                    f18192b = new C1256a();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return f18192b;
    }

    public void executeOnDiskIO(Runnable runnable) {
        this.f18194a.executeOnDiskIO(runnable);
    }

    public boolean isMainThread() {
        return this.f18194a.isMainThread();
    }

    public void postToMainThread(Runnable runnable) {
        this.f18194a.postToMainThread(runnable);
    }
}
