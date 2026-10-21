package V3;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* renamed from: V3.g, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0346g extends com.google.common.util.concurrent.b implements InterfaceC0345f {
    @Override // com.google.common.util.concurrent.b, V3.F
    public void addListener(Runnable runnable, Executor executor) {
        super.addListener(runnable, executor);
    }

    @Override // com.google.common.util.concurrent.b, java.util.concurrent.Future
    public boolean cancel(boolean z6) {
        return super.cancel(z6);
    }

    @Override // com.google.common.util.concurrent.b, java.util.concurrent.Future
    public Object get() throws InterruptedException, ExecutionException {
        return super.get();
    }

    @Override // com.google.common.util.concurrent.b, java.util.concurrent.Future
    public boolean isCancelled() {
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
