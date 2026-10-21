package com.google.android.gms.internal.cast;

import sun.misc.Unsafe;

/* loaded from: classes2.dex */
final class zzwh extends zzwi {
    public zzwh(Unsafe unsafe) {
        super(unsafe);
    }

    @Override // com.google.android.gms.internal.cast.zzwi
    public final double zza(Object obj, long j7) {
        return Double.longBitsToDouble(this.zza.getLong(obj, j7));
    }

    @Override // com.google.android.gms.internal.cast.zzwi
    public final float zzb(Object obj, long j7) {
        return Float.intBitsToFloat(this.zza.getInt(obj, j7));
    }

    @Override // com.google.android.gms.internal.cast.zzwi
    public final void zzc(Object obj, long j7, boolean z6) {
        if (zzwj.zzb) {
            zzwj.zzD(obj, j7, r3 ? (byte) 1 : (byte) 0);
        } else {
            zzwj.zzE(obj, j7, r3 ? (byte) 1 : (byte) 0);
        }
    }

    @Override // com.google.android.gms.internal.cast.zzwi
    public final void zzd(Object obj, long j7, byte b7) {
        if (zzwj.zzb) {
            zzwj.zzD(obj, j7, b7);
        } else {
            zzwj.zzE(obj, j7, b7);
        }
    }

    @Override // com.google.android.gms.internal.cast.zzwi
    public final void zze(Object obj, long j7, double d7) {
        this.zza.putLong(obj, j7, Double.doubleToLongBits(d7));
    }

    @Override // com.google.android.gms.internal.cast.zzwi
    public final void zzf(Object obj, long j7, float f3) {
        this.zza.putInt(obj, j7, Float.floatToIntBits(f3));
    }

    @Override // com.google.android.gms.internal.cast.zzwi
    public final boolean zzg(Object obj, long j7) {
        return zzwj.zzb ? zzwj.zzt(obj, j7) : zzwj.zzu(obj, j7);
    }
}
