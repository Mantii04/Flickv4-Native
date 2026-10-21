package B1;

import android.content.Context;
import androidx.work.WorkerParameters;
import java.util.UUID;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public abstract class r {

    /* renamed from: b, reason: collision with root package name */
    public final Context f189b;

    /* renamed from: e, reason: collision with root package name */
    public final WorkerParameters f190e;

    /* renamed from: f, reason: collision with root package name */
    public volatile boolean f191f;

    /* renamed from: j, reason: collision with root package name */
    public boolean f192j;

    public r(Context context, WorkerParameters workerParameters) {
        if (context == null) {
            throw new IllegalArgumentException("Application Context is null");
        }
        if (workerParameters == null) {
            throw new IllegalArgumentException("WorkerParameters is null");
        }
        this.f189b = context;
        this.f190e = workerParameters;
    }

    public final Context getApplicationContext() {
        return this.f189b;
    }

    public Executor getBackgroundExecutor() {
        return this.f190e.getBackgroundExecutor();
    }

    public V3.F getForegroundInfoAsync() {
        M1.g create = M1.g.create();
        create.setException(new IllegalStateException("Expedited WorkRequests require a ListenableWorker to provide an implementation for `getForegroundInfoAsync()`"));
        return create;
    }

    public final UUID getId() {
        return this.f190e.getId();
    }

    public final C0028h getInputData() {
        return this.f190e.getInputData();
    }

    public P getWorkerFactory() {
        return this.f190e.getWorkerFactory();
    }

    public final boolean isStopped() {
        return this.f191f;
    }

    public final boolean isUsed() {
        return this.f192j;
    }

    public final void setUsed() {
        this.f192j = true;
    }

    public abstract V3.F startWork();

    public final void stop() {
        this.f191f = true;
        onStopped();
    }

    public void onStopped() {
    }
}
