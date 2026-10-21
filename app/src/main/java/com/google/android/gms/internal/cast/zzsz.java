package com.google.android.gms.internal.cast;

import java.io.IOException;

/* loaded from: classes2.dex */
final class zzsz extends zztc {
    private final byte[] zzc;
    private final int zzd;
    private int zze;

    public zzsz(byte[] bArr, int i2, int i7) {
        super(null);
        int length = bArr.length;
        if (((length - i7) | i7) < 0) {
            throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(length), 0, Integer.valueOf(i7)));
        }
        this.zzc = bArr;
        this.zze = 0;
        this.zzd = i7;
    }

    @Override // com.google.android.gms.internal.cast.zztc
    public final int zza() {
        return this.zzd - this.zze;
    }

    @Override // com.google.android.gms.internal.cast.zztc
    public final void zzb(byte b7) throws IOException {
        try {
            byte[] bArr = this.zzc;
            int i2 = this.zze;
            this.zze = i2 + 1;
            bArr[i2] = b7;
        } catch (IndexOutOfBoundsException e3) {
            throw new zzta(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zze), Integer.valueOf(this.zzd), 1), e3);
        }
    }

    public final void zzc(byte[] bArr, int i2, int i7) throws IOException {
        try {
            System.arraycopy(bArr, 0, this.zzc, this.zze, i7);
            this.zze += i7;
        } catch (IndexOutOfBoundsException e3) {
            throw new zzta(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zze), Integer.valueOf(this.zzd), Integer.valueOf(i7)), e3);
        }
    }

    @Override // com.google.android.gms.internal.cast.zztc
    public final void zzd(int i2, boolean z6) throws IOException {
        zzq(i2 << 3);
        zzb(z6 ? (byte) 1 : (byte) 0);
    }

    @Override // com.google.android.gms.internal.cast.zztc
    public final void zze(int i2, zzsu zzsuVar) throws IOException {
        zzq((i2 << 3) | 2);
        zzq(zzsuVar.zzd());
        zzsuVar.zzh(this);
    }

    @Override // com.google.android.gms.internal.cast.zztc
    public final void zzf(int i2, int i7) throws IOException {
        zzq((i2 << 3) | 5);
        zzg(i7);
    }

    @Override // com.google.android.gms.internal.cast.zztc
    public final void zzg(int i2) throws IOException {
        try {
            byte[] bArr = this.zzc;
            int i7 = this.zze;
            int i8 = i7 + 1;
            this.zze = i8;
            bArr[i7] = (byte) (i2 & 255);
            int i9 = i7 + 2;
            this.zze = i9;
            bArr[i8] = (byte) ((i2 >> 8) & 255);
            int i10 = i7 + 3;
            this.zze = i10;
            bArr[i9] = (byte) ((i2 >> 16) & 255);
            this.zze = i7 + 4;
            bArr[i10] = (byte) ((i2 >> 24) & 255);
        } catch (IndexOutOfBoundsException e3) {
            throw new zzta(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zze), Integer.valueOf(this.zzd), 1), e3);
        }
    }

    @Override // com.google.android.gms.internal.cast.zztc
    public final void zzh(int i2, long j7) throws IOException {
        zzq((i2 << 3) | 1);
        zzi(j7);
    }

    @Override // com.google.android.gms.internal.cast.zztc
    public final void zzi(long j7) throws IOException {
        try {
            byte[] bArr = this.zzc;
            int i2 = this.zze;
            int i7 = i2 + 1;
            this.zze = i7;
            bArr[i2] = (byte) (((int) j7) & 255);
            int i8 = i2 + 2;
            this.zze = i8;
            bArr[i7] = (byte) (((int) (j7 >> 8)) & 255);
            int i9 = i2 + 3;
            this.zze = i9;
            bArr[i8] = (byte) (((int) (j7 >> 16)) & 255);
            int i10 = i2 + 4;
            this.zze = i10;
            bArr[i9] = (byte) (((int) (j7 >> 24)) & 255);
            int i11 = i2 + 5;
            this.zze = i11;
            bArr[i10] = (byte) (((int) (j7 >> 32)) & 255);
            int i12 = i2 + 6;
            this.zze = i12;
            bArr[i11] = (byte) (((int) (j7 >> 40)) & 255);
            int i13 = i2 + 7;
            this.zze = i13;
            bArr[i12] = (byte) (((int) (j7 >> 48)) & 255);
            this.zze = i2 + 8;
            bArr[i13] = (byte) (((int) (j7 >> 56)) & 255);
        } catch (IndexOutOfBoundsException e3) {
            throw new zzta(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zze), Integer.valueOf(this.zzd), 1), e3);
        }
    }

    @Override // com.google.android.gms.internal.cast.zztc
    public final void zzj(int i2, int i7) throws IOException {
        zzq(i2 << 3);
        zzk(i7);
    }

    @Override // com.google.android.gms.internal.cast.zztc
    public final void zzk(int i2) throws IOException {
        if (i2 >= 0) {
            zzq(i2);
        } else {
            zzs(i2);
        }
    }

    @Override // com.google.android.gms.internal.cast.zztc
    public final void zzl(byte[] bArr, int i2, int i7) throws IOException {
        zzc(bArr, 0, i7);
    }

    @Override // com.google.android.gms.internal.cast.zztc
    public final void zzm(int i2, String str) throws IOException {
        zzq((i2 << 3) | 2);
        zzn(str);
    }

    public final void zzn(String str) throws IOException {
        int i2 = this.zze;
        try {
            int zzx = zztc.zzx(str.length() * 3);
            int zzx2 = zztc.zzx(str.length());
            if (zzx2 != zzx) {
                zzq(zzwn.zzc(str));
                byte[] bArr = this.zzc;
                int i7 = this.zze;
                this.zze = zzwn.zzb(str, bArr, i7, this.zzd - i7);
                return;
            }
            int i8 = i2 + zzx2;
            this.zze = i8;
            int zzb = zzwn.zzb(str, this.zzc, i8, this.zzd - i8);
            this.zze = i2;
            zzq((zzb - i2) - zzx2);
            this.zze = zzb;
        } catch (zzwm e3) {
            this.zze = i2;
            zzB(str, e3);
        } catch (IndexOutOfBoundsException e7) {
            throw new zzta(e7);
        }
    }

    @Override // com.google.android.gms.internal.cast.zztc
    public final void zzo(int i2, int i7) throws IOException {
        zzq((i2 << 3) | i7);
    }

    @Override // com.google.android.gms.internal.cast.zztc
    public final void zzp(int i2, int i7) throws IOException {
        zzq(i2 << 3);
        zzq(i7);
    }

    @Override // com.google.android.gms.internal.cast.zztc
    public final void zzq(int i2) throws IOException {
        while ((i2 & (-128)) != 0) {
            try {
                byte[] bArr = this.zzc;
                int i7 = this.zze;
                this.zze = i7 + 1;
                bArr[i7] = (byte) ((i2 & 127) | 128);
                i2 >>>= 7;
            } catch (IndexOutOfBoundsException e3) {
                throw new zzta(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zze), Integer.valueOf(this.zzd), 1), e3);
            }
        }
        byte[] bArr2 = this.zzc;
        int i8 = this.zze;
        this.zze = i8 + 1;
        bArr2[i8] = (byte) i2;
    }

    @Override // com.google.android.gms.internal.cast.zztc
    public final void zzr(int i2, long j7) throws IOException {
        zzq(i2 << 3);
        zzs(j7);
    }

    @Override // com.google.android.gms.internal.cast.zztc
    public final void zzs(long j7) throws IOException {
        boolean z6;
        z6 = zztc.zzd;
        if (!z6 || this.zzd - this.zze < 10) {
            while ((j7 & (-128)) != 0) {
                try {
                    byte[] bArr = this.zzc;
                    int i2 = this.zze;
                    this.zze = i2 + 1;
                    bArr[i2] = (byte) ((((int) j7) & 127) | 128);
                    j7 >>>= 7;
                } catch (IndexOutOfBoundsException e3) {
                    throw new zzta(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zze), Integer.valueOf(this.zzd), 1), e3);
                }
            }
            byte[] bArr2 = this.zzc;
            int i7 = this.zze;
            this.zze = i7 + 1;
            bArr2[i7] = (byte) j7;
            return;
        }
        while (true) {
            int i8 = (int) j7;
            if ((j7 & (-128)) == 0) {
                byte[] bArr3 = this.zzc;
                int i9 = this.zze;
                this.zze = 1 + i9;
                zzwj.zzn(bArr3, i9, (byte) i8);
                return;
            }
            byte[] bArr4 = this.zzc;
            int i10 = this.zze;
            this.zze = i10 + 1;
            zzwj.zzn(bArr4, i10, (byte) ((i8 & 127) | 128));
            j7 >>>= 7;
        }
    }
}
