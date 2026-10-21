package V3;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes2.dex */
public abstract class t extends com.google.common.util.concurrent.b implements InterfaceC0345f {
    @Override // com.google.common.util.concurrent.b, V3.F
    public final void addListener(Runnable runnable, Executor executor) {
        super.addListener(runnable, executor);
    }

    @Override // com.google.common.util.concurrent.b, java.util.concurrent.Future
    public final boolean cancel(boolean z6) {
        return super.cancel(z6);
    }

    @Override // com.google.common.util.concurrent.b, java.util.concurrent.Future
    public final Object get() throws InterruptedException, ExecutionException {
        return super.get();
    }

    @Override // com.google.common.util.concurrent.b, java.util.concurrent.Future
    public final boolean isCancelled() {
        return super.isCancelled();
    }

    @Override // com.google.common.util.concurrent.b, java.util.concurrent.Future
    public final boolean isDone() {
        return super.isDone();
    }

    @Override // com.google.common.util.concurrent.b, java.util.concurrent.Future
    public final Object get(long j7, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return super.get(j7, timeUnit);
    }
}
