package androidx.concurrent.futures;

import V3.F;
import java.lang.ref.WeakReference;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
public final class m implements F {

    /* renamed from: b, reason: collision with root package name */
    public final WeakReference f5223b;

    /* renamed from: e, reason: collision with root package name */
    public final l f5224e = new l(this);

    public m(j jVar) {
        this.f5223b = new WeakReference(jVar);
    }

    @Override // V3.F
    public void addListener(Runnable runnable, Executor executor) {
        this.f5224e.addListener(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z6) {
        j jVar = (j) this.f5223b.get();
        boolean cancel = this.f5224e.cancel(z6);
        if (cancel && jVar != null) {
            jVar.f5218a = null;
            jVar.f5219b = null;
            jVar.f5220c.set(null);
        }
        return cancel;
    }

    @Override // java.util.concurrent.Future
    public Object get() throws InterruptedException, ExecutionException {
        return this.f5224e.get();
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.f5224e.isCancelled();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return this.f5224e.isDone();
    }

    public String toString() {
        return this.f5224e.toString();
    }

    @Override // java.util.concurrent.Future
    public Object get(long j7, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return this.f5224e.get(j7, timeUnit);
    }
}
