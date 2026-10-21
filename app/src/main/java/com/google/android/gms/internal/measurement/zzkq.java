package com.google.android.gms.internal.measurement;

import java.util.List;

/* loaded from: classes2.dex */
final class zzkq extends zzkl {
    private static <E> zzkc<E> zzc(Object obj, long j7) {
        return (zzkc) zzmz.zze(obj, j7);
    }

    @Override // com.google.android.gms.internal.measurement.zzkl
    public final <L> List<L> zza(Object obj, long j7) {
        zzkc zzc = zzc(obj, j7);
        if (zzc.zzc()) {
            return zzc;
        }
        int size = zzc.size();
        zzkc zza = zzc.zza(size == 0 ? 10 : size << 1);
        zzmz.zza(obj, j7, zza);
        return zza;
    }

    @Override // com.google.android.gms.internal.measurement.zzkl
    public final void zzb(Object obj, long j7) {
        zzc(obj, j7).zzb();
    }

    private zzkq() {
        super();
    }

    @Override // com.google.android.gms.internal.measurement.zzkl
    public final <E> void zza(Object obj, Object obj2, long j7) {
        zzkc zzc = zzc(obj, j7);
        zzkc zzc2 = zzc(obj2, j7);
        int size = zzc.size();
        int size2 = zzc2.size();
        if (size > 0 && size2 > 0) {
            if (!zzc.zzc()) {
                zzc = zzc.zza(size2 + size);
            }
            zzc.addAll(zzc2);
        }
        if (size > 0) {
            zzc2 = zzc;
        }
        zzmz.zza(obj, j7, zzc2);
    }
}
