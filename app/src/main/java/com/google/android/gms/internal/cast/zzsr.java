package com.google.android.gms.internal.cast;

import A.i;
import java.io.IOException;
import java.nio.charset.Charset;

/* loaded from: classes2.dex */
class zzsr extends zzsq {
    protected final byte[] zza;

    public zzsr(byte[] bArr) {
        bArr.getClass();
        this.zza = bArr;
    }

    @Override // com.google.android.gms.internal.cast.zzsu
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzsu) || zzd() != ((zzsu) obj).zzd()) {
            return false;
        }
        if (zzd() == 0) {
            return true;
        }
        if (!(obj instanceof zzsr)) {
            return obj.equals(this);
        }
        zzsr zzsrVar = (zzsr) obj;
        int zzk = zzk();
        int zzk2 = zzsrVar.zzk();
        if (zzk != 0 && zzk2 != 0 && zzk != zzk2) {
            return false;
        }
        int zzd = zzd();
        if (zzd > zzsrVar.zzd()) {
            throw new IllegalArgumentException("Length too large: " + zzd + zzd());
        }
        if (zzd > zzsrVar.zzd()) {
            throw new IllegalArgumentException(i.e(zzd, zzsrVar.zzd(), "Ran off end of other: 0, ", ", "));
        }
        byte[] bArr = this.zza;
        byte[] bArr2 = zzsrVar.zza;
        zzsrVar.zzc();
        int i2 = 0;
        int i7 = 0;
        while (i2 < zzd) {
            if (bArr[i2] != bArr2[i7]) {
                return false;
            }
            i2++;
            i7++;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.cast.zzsu
    public byte zza(int i2) {
        return this.zza[i2];
    }

    @Override // com.google.android.gms.internal.cast.zzsu
    public byte zzb(int i2) {
        return this.zza[i2];
    }

    public int zzc() {
        return 0;
    }

    @Override // com.google.android.gms.internal.cast.zzsu
    public int zzd() {
        return this.zza.length;
    }

    @Override // com.google.android.gms.internal.cast.zzsu
    public final int zze(int i2, int i7, int i8) {
        return zzty.zzb(i2, this.zza, 0, i8);
    }

    @Override // com.google.android.gms.internal.cast.zzsu
    public final zzsu zzf(int i2, int i7) {
        zzsu.zzj(0, i7, zzd());
        return i7 == 0 ? zzsu.zzb : new zzso(this.zza, 0, i7);
    }

    @Override // com.google.android.gms.internal.cast.zzsu
    public final String zzg(Charset charset) {
        return new String(this.zza, 0, zzd(), charset);
    }

    @Override // com.google.android.gms.internal.cast.zzsu
    public final void zzh(zzsk zzskVar) throws IOException {
        ((zzsz) zzskVar).zzc(this.zza, 0, zzd());
    }

    @Override // com.google.android.gms.internal.cast.zzsu
    public final boolean zzi() {
        return zzwn.zze(this.zza, 0, zzd());
    }
}
