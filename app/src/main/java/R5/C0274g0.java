package R5;

import W5.AbstractC0356c;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import y5.InterfaceC1952k;

/* renamed from: R5.g0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0274g0 extends AbstractC0272f0 implements P {

    /* renamed from: f, reason: collision with root package name */
    public final Executor f3177f;

    public C0274g0(Executor executor) {
        this.f3177f = executor;
        AbstractC0356c.removeFutureOnCancel(getExecutor());
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        Executor executor = getExecutor();
        ExecutorService executorService = executor instanceof ExecutorService ? (ExecutorService) executor : null;
        if (executorService != null) {
            executorService.shutdown();
        }
    }

    @Override // R5.E
    public void dispatch(InterfaceC1952k interfaceC1952k, Runnable runnable) {
        try {
            Executor executor = getExecutor();
            AbstractC0265c.getTimeSource();
            executor.execute(runnable);
        } catch (RejectedExecutionException e3) {
            AbstractC0265c.getTimeSource();
            AbstractC0299t0.cancel(interfaceC1952k, AbstractC0270e0.CancellationException("The task was rejected", e3));
            U.getIO().dispatch(interfaceC1952k, runnable);
        }
    }

    public boolean equals(Object obj) {
        return (obj instanceof C0274g0) && ((C0274g0) obj).getExecutor() == getExecutor();
    }

    public Executor getExecutor() {
        return this.f3177f;
    }

    public int hashCode() {
        return System.identityHashCode(getExecutor());
    }

    @Override // R5.E
    public String toString() {
        return getExecutor().toString();
    }
}
