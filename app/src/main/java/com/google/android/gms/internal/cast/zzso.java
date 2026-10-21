package com.google.android.gms.internal.cast;

import A.i;

/* loaded from: classes2.dex */
final class zzso extends zzsr {
    private final int zzc;

    public zzso(byte[] bArr, int i2, int i7) {
        super(bArr);
        zzsu.zzj(0, i7, bArr.length);
        this.zzc = i7;
    }

    @Override // com.google.android.gms.internal.cast.zzsr, com.google.android.gms.internal.cast.zzsu
    public final byte zza(int i2) {
        int i7 = this.zzc;
        if (((i7 - (i2 + 1)) | i2) >= 0) {
            return this.zza[i2];
        }
        if (i2 < 0) {
            throw new ArrayIndexOutOfBoundsException(i.f(i2, "Index < 0: "));
        }
        throw new ArrayIndexOutOfBoundsException(i.e(i2, i7, "Index > length: ", ", "));
    }

    @Override // com.google.android.gms.internal.cast.zzsr, com.google.android.gms.internal.cast.zzsu
    public final byte zzb(int i2) {
        return this.zza[i2];
    }

    @Override // com.google.android.gms.internal.cast.zzsr
    public final int zzc() {
        return 0;
    }

    @Override // com.google.android.gms.internal.cast.zzsr, com.google.android.gms.internal.cast.zzsu
    public final int zzd() {
        return this.zzc;
    }
}
