package V3;

import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.RunnableFuture;

/* renamed from: V3.n, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0353n extends AbstractExecutorService implements H {
    @Override // java.util.concurrent.AbstractExecutorService
    public final <T> RunnableFuture<T> newTaskFor(Callable<T> callable) {
        return new com.google.common.util.concurrent.h(callable);
    }

    @Override // java.util.concurrent.AbstractExecutorService
    public final <T> RunnableFuture<T> newTaskFor(Runnable runnable, T t6) {
        return new com.google.common.util.concurrent.h(Executors.callable(runnable, t6));
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public /* bridge */ /* synthetic */ Future submit(Runnable runnable, Object obj) {
        return submit(runnable, (Runnable) obj);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public F submit(Runnable runnable) {
        return (F) super.submit(runnable);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public <T> F submit(Runnable runnable, T t6) {
        return (F) super.submit(runnable, (Runnable) t6);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public <T> F submit(Callable<T> callable) {
        return (F) super.submit((Callable) callable);
    }
}
