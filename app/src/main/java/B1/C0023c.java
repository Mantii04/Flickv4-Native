package B1;

import C1.C0066d;
import android.os.Build;
import androidx.media3.common.util.Log;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* renamed from: B1.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0023c {

    /* renamed from: a, reason: collision with root package name */
    public final ExecutorService f160a = Executors.newFixedThreadPool(Math.max(2, Math.min(Runtime.getRuntime().availableProcessors() - 1, 4)), new ThreadFactoryC0021a(false));

    /* renamed from: b, reason: collision with root package name */
    public final ExecutorService f161b = Executors.newFixedThreadPool(Math.max(2, Math.min(Runtime.getRuntime().availableProcessors() - 1, 4)), new ThreadFactoryC0021a(true));

    /* renamed from: c, reason: collision with root package name */
    public final P f162c = P.getDefaultWorkerFactory();

    /* renamed from: d, reason: collision with root package name */
    public final AbstractC0033m f163d = AbstractC0033m.getDefaultInputMergerFactory();

    /* renamed from: e, reason: collision with root package name */
    public final C0066d f164e = new C0066d();

    /* renamed from: f, reason: collision with root package name */
    public final int f165f = 4;

    /* renamed from: g, reason: collision with root package name */
    public final int f166g = Log.LOG_LEVEL_OFF;

    /* renamed from: h, reason: collision with root package name */
    public final int f167h = 20;

    public C0023c(C0022b c0022b) {
    }

    public String getDefaultProcessName() {
        return null;
    }

    public Executor getExecutor() {
        return this.f160a;
    }

    public L.a getInitializationExceptionHandler() {
        return null;
    }

    public AbstractC0033m getInputMergerFactory() {
        return this.f163d;
    }

    public int getMaxJobSchedulerId() {
        return this.f166g;
    }

    public int getMaxSchedulerLimit() {
        int i2 = Build.VERSION.SDK_INT;
        int i7 = this.f167h;
        return i2 == 23 ? i7 / 2 : i7;
    }

    public int getMinJobSchedulerId() {
        return 0;
    }

    public int getMinimumLoggingLevel() {
        return this.f165f;
    }

    public G getRunnableScheduler() {
        return this.f164e;
    }

    public L.a getSchedulingExceptionHandler() {
        return null;
    }

    public Executor getTaskExecutor() {
        return this.f161b;
    }

    public P getWorkerFactory() {
        return this.f162c;
    }
}
