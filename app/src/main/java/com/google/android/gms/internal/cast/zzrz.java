package com.google.android.gms.internal.cast;

import V3.F;
import java.util.concurrent.Delayed;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
final class zzrz extends zzrp implements ScheduledFuture {
    private final ScheduledFuture zza;

    public zzrz(F f3, ScheduledFuture scheduledFuture) {
        super(f3);
        this.zza = scheduledFuture;
    }

    @Override // com.google.android.gms.internal.cast.zzro, java.util.concurrent.Future
    public final boolean cancel(boolean z6) {
        boolean cancel = zzb().cancel(z6);
        if (cancel) {
            this.zza.cancel(z6);
        }
        return cancel;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Delayed delayed) {
        return this.zza.compareTo(delayed);
    }

    @Override // java.util.concurrent.Delayed
    public final long getDelay(TimeUnit timeUnit) {
        return this.zza.getDelay(timeUnit);
    }
}
