package com.google.android.gms.internal.measurement;

/* loaded from: classes2.dex */
abstract class zznf {
    public abstract int zza(int i2, byte[] bArr, int i7, int i8);

    public abstract int zza(String str, byte[] bArr, int i2, int i7);

    public abstract String zza(byte[] bArr, int i2, int i7) throws zzkb;

    public final boolean zzb(byte[] bArr, int i2, int i7) {
        return zza(0, bArr, i2, i7) == 0;
    }
}
