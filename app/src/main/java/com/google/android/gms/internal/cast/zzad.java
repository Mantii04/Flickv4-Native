package com.google.android.gms.internal.cast;

import com.google.android.gms.common.util.DefaultClock;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes2.dex */
public final class zzad {
    final long zza;
    long zzb;
    private long zzc;
    private final AtomicInteger zzd;
    private final int zze;

    public zzad(zzac zzacVar) {
        int i2;
        i2 = zzacVar.zza;
        this.zze = i2;
        long currentTimeMillis = DefaultClock.getInstance().currentTimeMillis();
        this.zza = currentTimeMillis;
        this.zzb = currentTimeMillis;
        this.zzd = new AtomicInteger(1);
    }

    public final zznw zza() {
        zznv zza = zznw.zza();
        zza.zzd(this.zze);
        zza.zza(this.zzd.get());
        zza.zzb((int) (this.zza - this.zzc));
        zza.zzc((int) (this.zzb - this.zzc));
        return (zznw) zza.zzq();
    }

    public final void zzb() {
        this.zzd.incrementAndGet();
        this.zzb = DefaultClock.getInstance().currentTimeMillis();
    }

    public final void zzc(long j7) {
        this.zzc = j7;
    }
}
