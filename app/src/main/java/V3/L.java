package V3;

import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class L extends I implements ScheduledExecutorService {

    /* renamed from: e, reason: collision with root package name */
    public final ScheduledExecutorService f3985e;

    public L(ScheduledExecutorService scheduledExecutorService) {
        super(scheduledExecutorService);
        this.f3985e = (ScheduledExecutorService) P3.v.checkNotNull(scheduledExecutorService);
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public <V> G schedule(Callable<V> callable, long j7, TimeUnit timeUnit) {
        com.google.common.util.concurrent.h hVar = new com.google.common.util.concurrent.h(callable);
        return new J(hVar, this.f3985e.schedule(hVar, j7, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public G scheduleAtFixedRate(Runnable runnable, long j7, long j8, TimeUnit timeUnit) {
        K k7 = new K(runnable);
        return new J(k7, this.f3985e.scheduleAtFixedRate(k7, j7, j8, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public G scheduleWithFixedDelay(Runnable runnable, long j7, long j8, TimeUnit timeUnit) {
        K k7 = new K(runnable);
        return new J(k7, this.f3985e.scheduleWithFixedDelay(k7, j7, j8, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public G schedule(Runnable runnable, long j7, TimeUnit timeUnit) {
        com.google.common.util.concurrent.h hVar = new com.google.common.util.concurrent.h(Executors.callable(runnable, null));
        return new J(hVar, this.f3985e.schedule(hVar, j7, timeUnit));
    }
}
