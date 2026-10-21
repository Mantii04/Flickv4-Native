package com.google.android.gms.internal.cast;

import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
final class zzsb extends zzry implements ScheduledExecutorService, zzrx {
    final ScheduledExecutorService zza;

    public zzsb(ScheduledExecutorService scheduledExecutorService) {
        super(scheduledExecutorService);
        scheduledExecutorService.getClass();
        this.zza = scheduledExecutorService;
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture schedule(Runnable runnable, long j7, TimeUnit timeUnit) {
        ScheduledExecutorService scheduledExecutorService = this.zza;
        zzse zzn = zzse.zzn(runnable, null);
        return new zzrz(zzn, scheduledExecutorService.schedule(zzn, j7, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture scheduleAtFixedRate(Runnable runnable, long j7, long j8, TimeUnit timeUnit) {
        zzsa zzsaVar = new zzsa(runnable);
        return new zzrz(zzsaVar, this.zza.scheduleAtFixedRate(zzsaVar, j7, j8, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture scheduleWithFixedDelay(Runnable runnable, long j7, long j8, TimeUnit timeUnit) {
        zzsa zzsaVar = new zzsa(runnable);
        return new zzrz(zzsaVar, this.zza.scheduleWithFixedDelay(zzsaVar, j7, j8, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture schedule(Callable callable, long j7, TimeUnit timeUnit) {
        zzse zzseVar = new zzse(callable);
        return new zzrz(zzseVar, this.zza.schedule(zzseVar, j7, timeUnit));
    }
}
