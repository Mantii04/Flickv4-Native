package com.google.android.gms.internal.cast;

import com.google.android.gms.common.util.DefaultClock;

/* loaded from: classes2.dex */
public final class zzab {
    final int zza;
    final long zzb = DefaultClock.getInstance().currentTimeMillis();
    private long zzc;

    public zzab(zzaa zzaaVar) {
        this.zza = zzaaVar.zza;
    }

    public final zzny zza() {
        zznx zza = zzny.zza();
        zza.zza((int) (this.zzb - this.zzc));
        int i2 = this.zza;
        zza.zzb(i2 != 1 ? i2 != 2 ? i2 != 3 ? 1 : 4 : 3 : 2);
        return (zzny) zza.zzq();
    }

    public final void zzb(long j7) {
        this.zzc = j7;
    }
}
