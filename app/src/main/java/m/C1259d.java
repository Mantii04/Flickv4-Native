package m;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* renamed from: m.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1259d extends AbstractC1260e {

    /* renamed from: a, reason: collision with root package name */
    public final Object f18196a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public final ExecutorService f18197b = Executors.newFixedThreadPool(4, new ThreadFactoryC1257b());

    /* renamed from: c, reason: collision with root package name */
    public volatile Handler f18198c;

    public static Handler a(Looper looper) {
        if (Build.VERSION.SDK_INT >= 28) {
            return AbstractC1258c.createAsync(looper);
        }
        try {
            return (Handler) Handler.class.getDeclaredConstructor(Looper.class, Handler.Callback.class, Boolean.TYPE).newInstance(looper, null, Boolean.TRUE);
        } catch (IllegalAccessException | InstantiationException | NoSuchMethodException unused) {
            return new Handler(looper);
        } catch (InvocationTargetException unused2) {
            return new Handler(looper);
        }
    }

    public void executeOnDiskIO(Runnable runnable) {
        this.f18197b.execute(runnable);
    }

    public boolean isMainThread() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    public void postToMainThread(Runnable runnable) {
        if (this.f18198c == null) {
            synchronized (this.f18196a) {
                try {
                    if (this.f18198c == null) {
                        this.f18198c = a(Looper.getMainLooper());
                    }
                } finally {
                }
            }
        }
        this.f18198c.post(runnable);
    }
}
