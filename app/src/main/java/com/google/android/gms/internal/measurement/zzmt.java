package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* loaded from: classes2.dex */
abstract class zzmt<T, B> {
    public abstract int zza(T t6);

    public abstract B zza();

    public abstract T zza(T t6, T t7);

    public abstract void zza(B b7, int i2, int i7);

    public abstract void zza(B b7, int i2, long j7);

    public abstract void zza(B b7, int i2, zzij zzijVar);

    public abstract void zza(B b7, int i2, T t6);

    public abstract void zza(T t6, zznt zzntVar) throws IOException;

    public abstract boolean zza(zzlv zzlvVar);

    public final boolean zza(B b7, zzlv zzlvVar) throws IOException {
        int zzd = zzlvVar.zzd();
        int i2 = zzd >>> 3;
        int i7 = zzd & 7;
        if (i7 == 0) {
            zzb(b7, i2, zzlvVar.zzl());
            return true;
        }
        if (i7 == 1) {
            zza((zzmt<T, B>) b7, i2, zzlvVar.zzk());
            return true;
        }
        if (i7 == 2) {
            zza((zzmt<T, B>) b7, i2, zzlvVar.zzp());
            return true;
        }
        if (i7 != 3) {
            if (i7 == 4) {
                return false;
            }
            if (i7 != 5) {
                throw zzkb.zza();
            }
            zza((zzmt<T, B>) b7, i2, zzlvVar.zzf());
            return true;
        }
        B zza = zza();
        int i8 = 4 | (i2 << 3);
        while (zzlvVar.zzc() != Integer.MAX_VALUE && zza((zzmt<T, B>) zza, zzlvVar)) {
        }
        if (i8 != zzlvVar.zzd()) {
            throw zzkb.zzb();
        }
        zza((zzmt<T, B>) b7, i2, (int) zze(zza));
        return true;
    }

    public abstract int zzb(T t6);

    public abstract void zzb(B b7, int i2, long j7);

    public abstract void zzb(T t6, zznt zzntVar) throws IOException;

    public abstract void zzb(Object obj, B b7);

    public abstract B zzc(Object obj);

    public abstract void zzc(Object obj, T t6);

    public abstract T zzd(Object obj);

    public abstract T zze(B b7);

    public abstract void zzf(Object obj);
}
