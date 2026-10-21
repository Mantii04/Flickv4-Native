package com.google.android.gms.internal.measurement;

import A.i;

/* loaded from: classes2.dex */
final class zzin extends zzit {
    private final int zzc;
    private final int zzd;

    public zzin(byte[] bArr, int i2, int i7) {
        super(bArr);
        zzij.zza(i2, i2 + i7, bArr.length);
        this.zzc = i2;
        this.zzd = i7;
    }

    @Override // com.google.android.gms.internal.measurement.zzit, com.google.android.gms.internal.measurement.zzij
    public final byte zza(int i2) {
        int zzb = zzb();
        if (((zzb - (i2 + 1)) | i2) >= 0) {
            return this.zzb[this.zzc + i2];
        }
        if (i2 < 0) {
            throw new ArrayIndexOutOfBoundsException(i.f(i2, "Index < 0: "));
        }
        throw new ArrayIndexOutOfBoundsException(i.e(i2, zzb, "Index > length: ", ", "));
    }

    @Override // com.google.android.gms.internal.measurement.zzit, com.google.android.gms.internal.measurement.zzij
    public final byte zzb(int i2) {
        return this.zzb[this.zzc + i2];
    }

    @Override // com.google.android.gms.internal.measurement.zzit
    public final int zze() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.measurement.zzit, com.google.android.gms.internal.measurement.zzij
    public final int zzb() {
        return this.zzd;
    }
}
