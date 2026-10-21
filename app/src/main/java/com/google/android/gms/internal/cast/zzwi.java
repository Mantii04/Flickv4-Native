package com.google.android.gms.internal.cast;

import sun.misc.Unsafe;

/* loaded from: classes2.dex */
abstract class zzwi {
    final Unsafe zza;

    public zzwi(Unsafe unsafe) {
        this.zza = unsafe;
    }

    public abstract double zza(Object obj, long j7);

    public abstract float zzb(Object obj, long j7);

    public abstract void zzc(Object obj, long j7, boolean z6);

    public abstract void zzd(Object obj, long j7, byte b7);

    public abstract void zze(Object obj, long j7, double d7);

    public abstract void zzf(Object obj, long j7, float f3);

    public abstract boolean zzg(Object obj, long j7);
}
