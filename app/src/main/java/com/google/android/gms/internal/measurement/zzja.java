package com.google.android.gms.internal.measurement;

import A.i;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes2.dex */
public abstract class zzja extends zzig {
    private static final Logger zzb = Logger.getLogger(zzja.class.getName());
    private static final boolean zzc = zzmz.zzc();
    zzjc zza;

    public static class zza extends IOException {
        public zza() {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.");
        }

        public zza(Throwable th) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.", th);
        }

        public zza(String str, Throwable th) {
            super(i.k("CodedOutputStream was writing to a flat byte array and ran out of space.: ", str), th);
        }
    }

    public static class zzb extends zzja {
        private final byte[] zzb;
        private final int zzc;
        private final int zzd;
        private int zze;

        public zzb(byte[] bArr, int i2, int i7) {
            super();
            if (bArr == null) {
                throw new NullPointerException("buffer");
            }
            if (((bArr.length - i7) | i7) < 0) {
                throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), 0, Integer.valueOf(i7)));
            }
            this.zzb = bArr;
            this.zzc = 0;
            this.zze = 0;
            this.zzd = i7;
        }

        private final void zzc(byte[] bArr, int i2, int i7) throws IOException {
            try {
                System.arraycopy(bArr, i2, this.zzb, this.zze, i7);
                this.zze += i7;
            } catch (IndexOutOfBoundsException e3) {
                throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zze), Integer.valueOf(this.zzd), Integer.valueOf(i7)), e3);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzja
        public final int zza() {
            return this.zzd - this.zze;
        }

        @Override // com.google.android.gms.internal.measurement.zzja
        public final void zzb(int i2, boolean z6) throws IOException {
            zzj(i2, 0);
            zza(z6 ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.android.gms.internal.measurement.zzja
        public final void zzd(int i2, zzij zzijVar) throws IOException {
            zzj(1, 3);
            zzk(2, i2);
            zzc(3, zzijVar);
            zzj(1, 4);
        }

        @Override // com.google.android.gms.internal.measurement.zzja
        public final void zzf(int i2, long j7) throws IOException {
            zzj(i2, 1);
            zzf(j7);
        }

        @Override // com.google.android.gms.internal.measurement.zzja
        public final void zzg(int i2, int i7) throws IOException {
            zzj(i2, 5);
            zzh(i7);
        }

        @Override // com.google.android.gms.internal.measurement.zzja
        public final void zzh(int i2) throws IOException {
            try {
                byte[] bArr = this.zzb;
                int i7 = this.zze;
                int i8 = i7 + 1;
                this.zze = i8;
                bArr[i7] = (byte) i2;
                int i9 = i7 + 2;
                this.zze = i9;
                bArr[i8] = (byte) (i2 >> 8);
                int i10 = i7 + 3;
                this.zze = i10;
                bArr[i9] = (byte) (i2 >> 16);
                this.zze = i7 + 4;
                bArr[i10] = (byte) (i2 >>> 24);
            } catch (IndexOutOfBoundsException e3) {
                throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zze), Integer.valueOf(this.zzd), 1), e3);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzja
        public final void zzi(int i2) throws IOException {
            if (i2 >= 0) {
                zzk(i2);
            } else {
                zzh(i2);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzja
        public final void zzj(int i2, int i7) throws IOException {
            zzk((i2 << 3) | i7);
        }

        @Override // com.google.android.gms.internal.measurement.zzja
        public final void zzk(int i2, int i7) throws IOException {
            zzj(i2, 0);
            zzk(i7);
        }

        @Override // com.google.android.gms.internal.measurement.zzja
        public final void zza(byte b7) throws IOException {
            try {
                byte[] bArr = this.zzb;
                int i2 = this.zze;
                this.zze = i2 + 1;
                bArr[i2] = b7;
            } catch (IndexOutOfBoundsException e3) {
                throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zze), Integer.valueOf(this.zzd), 1), e3);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzja
        public final void zzb(byte[] bArr, int i2, int i7) throws IOException {
            zzk(i7);
            zzc(bArr, 0, i7);
        }

        @Override // com.google.android.gms.internal.measurement.zzja
        public final void zzf(long j7) throws IOException {
            try {
                byte[] bArr = this.zzb;
                int i2 = this.zze;
                int i7 = i2 + 1;
                this.zze = i7;
                bArr[i2] = (byte) j7;
                int i8 = i2 + 2;
                this.zze = i8;
                bArr[i7] = (byte) (j7 >> 8);
                int i9 = i2 + 3;
                this.zze = i9;
                bArr[i8] = (byte) (j7 >> 16);
                int i10 = i2 + 4;
                this.zze = i10;
                bArr[i9] = (byte) (j7 >> 24);
                int i11 = i2 + 5;
                this.zze = i11;
                bArr[i10] = (byte) (j7 >> 32);
                int i12 = i2 + 6;
                this.zze = i12;
                bArr[i11] = (byte) (j7 >> 40);
                int i13 = i2 + 7;
                this.zze = i13;
                bArr[i12] = (byte) (j7 >> 48);
                this.zze = i2 + 8;
                bArr[i13] = (byte) (j7 >> 56);
            } catch (IndexOutOfBoundsException e3) {
                throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zze), Integer.valueOf(this.zzd), 1), e3);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzja
        public final void zzk(int i2) throws IOException {
            while ((i2 & (-128)) != 0) {
                try {
                    byte[] bArr = this.zzb;
                    int i7 = this.zze;
                    this.zze = i7 + 1;
                    bArr[i7] = (byte) (i2 | 128);
                    i2 >>>= 7;
                } catch (IndexOutOfBoundsException e3) {
                    throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zze), Integer.valueOf(this.zzd), 1), e3);
                }
            }
            byte[] bArr2 = this.zzb;
            int i8 = this.zze;
            this.zze = i8 + 1;
            bArr2[i8] = (byte) i2;
        }

        @Override // com.google.android.gms.internal.measurement.zzig
        public final void zza(byte[] bArr, int i2, int i7) throws IOException {
            zzc(bArr, i2, i7);
        }

        @Override // com.google.android.gms.internal.measurement.zzja
        public final void zzb(zzij zzijVar) throws IOException {
            zzk(zzijVar.zzb());
            zzijVar.zza(this);
        }

        @Override // com.google.android.gms.internal.measurement.zzja
        public final void zzc(int i2, zzij zzijVar) throws IOException {
            zzj(i2, 2);
            zzb(zzijVar);
        }

        @Override // com.google.android.gms.internal.measurement.zzja
        public final void zzb(int i2, zzlg zzlgVar) throws IOException {
            zzj(1, 3);
            zzk(2, i2);
            zzj(3, 2);
            zzc(zzlgVar);
            zzj(1, 4);
        }

        @Override // com.google.android.gms.internal.measurement.zzja
        public final void zzc(int i2, zzlg zzlgVar, zzly zzlyVar) throws IOException {
            zzj(i2, 2);
            zzk(((zzhz) zzlgVar).zza(zzlyVar));
            zzlyVar.zza((zzly) zzlgVar, (zznt) this.zza);
        }

        @Override // com.google.android.gms.internal.measurement.zzja
        public final void zzh(int i2, int i7) throws IOException {
            zzj(i2, 0);
            zzi(i7);
        }

        @Override // com.google.android.gms.internal.measurement.zzja
        public final void zzh(int i2, long j7) throws IOException {
            zzj(i2, 0);
            zzh(j7);
        }

        @Override // com.google.android.gms.internal.measurement.zzja
        public final void zzc(zzlg zzlgVar) throws IOException {
            zzk(zzlgVar.zzbw());
            zzlgVar.zza(this);
        }

        @Override // com.google.android.gms.internal.measurement.zzja
        public final void zzh(long j7) throws IOException {
            if (zzja.zzc && zza() >= 10) {
                while ((j7 & (-128)) != 0) {
                    byte[] bArr = this.zzb;
                    int i2 = this.zze;
                    this.zze = i2 + 1;
                    zzmz.zza(bArr, i2, (byte) (((int) j7) | 128));
                    j7 >>>= 7;
                }
                byte[] bArr2 = this.zzb;
                int i7 = this.zze;
                this.zze = 1 + i7;
                zzmz.zza(bArr2, i7, (byte) j7);
                return;
            }
            while ((j7 & (-128)) != 0) {
                try {
                    byte[] bArr3 = this.zzb;
                    int i8 = this.zze;
                    this.zze = i8 + 1;
                    bArr3[i8] = (byte) (((int) j7) | 128);
                    j7 >>>= 7;
                } catch (IndexOutOfBoundsException e3) {
                    throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zze), Integer.valueOf(this.zzd), 1), e3);
                }
            }
            byte[] bArr4 = this.zzb;
            int i9 = this.zze;
            this.zze = i9 + 1;
            bArr4[i9] = (byte) j7;
        }

        @Override // com.google.android.gms.internal.measurement.zzja
        public final void zzb(int i2, String str) throws IOException {
            zzj(i2, 2);
            zzb(str);
        }

        @Override // com.google.android.gms.internal.measurement.zzja
        public final void zzb(String str) throws IOException {
            int i2 = this.zze;
            try {
                int zzg = zzja.zzg(str.length() * 3);
                int zzg2 = zzja.zzg(str.length());
                if (zzg2 == zzg) {
                    int i7 = i2 + zzg2;
                    this.zze = i7;
                    int zza = zznd.zza(str, this.zzb, i7, zza());
                    this.zze = i2;
                    zzk((zza - i2) - zzg2);
                    this.zze = zza;
                    return;
                }
                zzk(zznd.zza(str));
                this.zze = zznd.zza(str, this.zzb, this.zze, zza());
            } catch (zznh e3) {
                this.zze = i2;
                zza(str, e3);
            } catch (IndexOutOfBoundsException e7) {
                throw new zza(e7);
            }
        }
    }

    public static int zza(double d7) {
        return 8;
    }

    public static int zzb(int i2) {
        return 4;
    }

    public static int zzc(long j7) {
        return 8;
    }

    public static int zzd(int i2) {
        return 4;
    }

    public static int zze(int i2, int i7) {
        return zzg(zzl(i7)) + zzg(i2 << 3);
    }

    public static int zzf(int i2) {
        return zzg(i2 << 3);
    }

    public static int zzg(int i2) {
        return (352 - (Integer.numberOfLeadingZeros(i2) * 9)) >>> 6;
    }

    private static long zzi(long j7) {
        return (j7 >> 63) ^ (j7 << 1);
    }

    private static int zzl(int i2) {
        return (i2 >> 31) ^ (i2 << 1);
    }

    public abstract int zza();

    public abstract void zza(byte b7) throws IOException;

    public abstract void zzb(int i2, zzlg zzlgVar) throws IOException;

    public abstract void zzb(int i2, String str) throws IOException;

    public abstract void zzb(int i2, boolean z6) throws IOException;

    public abstract void zzb(zzij zzijVar) throws IOException;

    public abstract void zzb(String str) throws IOException;

    public abstract void zzb(byte[] bArr, int i2, int i7) throws IOException;

    public abstract void zzc(int i2, zzij zzijVar) throws IOException;

    public abstract void zzc(int i2, zzlg zzlgVar, zzly zzlyVar) throws IOException;

    public abstract void zzc(zzlg zzlgVar) throws IOException;

    public abstract void zzd(int i2, zzij zzijVar) throws IOException;

    public abstract void zzf(int i2, long j7) throws IOException;

    public abstract void zzf(long j7) throws IOException;

    public abstract void zzg(int i2, int i7) throws IOException;

    public abstract void zzh(int i2) throws IOException;

    public abstract void zzh(int i2, int i7) throws IOException;

    public abstract void zzh(int i2, long j7) throws IOException;

    public abstract void zzh(long j7) throws IOException;

    public abstract void zzi(int i2) throws IOException;

    public final void zzj(int i2) throws IOException {
        zzk(zzl(i2));
    }

    public abstract void zzj(int i2, int i7) throws IOException;

    public abstract void zzk(int i2) throws IOException;

    public abstract void zzk(int i2, int i7) throws IOException;

    private zzja() {
    }

    public static int zza(float f3) {
        return 4;
    }

    public static int zzb(int i2, int i7) {
        return zzg(i2 << 3) + 4;
    }

    public static int zzd(int i2, int i7) {
        return zzg(i2 << 3) + 4;
    }

    public static int zzf(int i2, int i7) {
        return zzg(i7) + zzg(i2 << 3);
    }

    public final void zzg(int i2, long j7) throws IOException {
        zzh(i2, zzi(j7));
    }

    public final void zzi(int i2, int i7) throws IOException {
        zzk(i2, zzl(i7));
    }

    public static int zza(long j7) {
        return 8;
    }

    public static int zzb(int i2, long j7) {
        return zze(j7) + zzg(i2 << 3);
    }

    public static int zzc(int i2, int i7) {
        return zze(i7) + zzg(i2 << 3);
    }

    public static int zzd(int i2, long j7) {
        return zze(zzi(j7)) + zzg(i2 << 3);
    }

    public static int zze(int i2) {
        return zzg(zzl(i2));
    }

    public final void zzg(long j7) throws IOException {
        zzh(zzi(j7));
    }

    public static int zza(boolean z6) {
        return 1;
    }

    public static int zze(int i2, long j7) {
        return zze(j7) + zzg(i2 << 3);
    }

    public static int zza(int i2, boolean z6) {
        return zzg(i2 << 3) + 1;
    }

    public static int zzb(long j7) {
        return zze(j7);
    }

    public static int zzc(int i2) {
        return zze(i2);
    }

    public static int zzd(long j7) {
        return zze(zzi(j7));
    }

    public static int zza(byte[] bArr) {
        int length = bArr.length;
        return zzg(length) + length;
    }

    public static int zzb(int i2, zzkk zzkkVar) {
        int zzg = zzg(i2 << 3);
        int zzb2 = zzkkVar.zzb();
        return zzg(zzb2) + zzb2 + zzg;
    }

    public static int zzc(int i2, long j7) {
        return zzg(i2 << 3) + 8;
    }

    public static int zze(long j7) {
        return (640 - (Long.numberOfLeadingZeros(j7) * 9)) >>> 6;
    }

    public static int zza(int i2, zzij zzijVar) {
        int zzg = zzg(i2 << 3);
        int zzb2 = zzijVar.zzb();
        return zzg(zzb2) + zzb2 + zzg;
    }

    public static int zzb(int i2, zzlg zzlgVar, zzly zzlyVar) {
        return zza(zzlgVar, zzlyVar) + zzg(i2 << 3);
    }

    public static int zza(zzij zzijVar) {
        int zzb2 = zzijVar.zzb();
        return zzg(zzb2) + zzb2;
    }

    public static int zzb(zzlg zzlgVar) {
        int zzbw = zzlgVar.zzbw();
        return zzg(zzbw) + zzbw;
    }

    public static int zza(int i2, double d7) {
        return zzg(i2 << 3) + 8;
    }

    public static int zzb(int i2, zzij zzijVar) {
        return zza(3, zzijVar) + zzf(2, i2) + (zzg(8) << 1);
    }

    public static int zza(int i2, int i7) {
        return zze(i7) + zzg(i2 << 3);
    }

    public static int zza(int i2) {
        return zze(i2);
    }

    public static zzja zzb(byte[] bArr) {
        return new zzb(bArr, 0, bArr.length);
    }

    public static int zza(int i2, long j7) {
        return zzg(i2 << 3) + 8;
    }

    public static int zza(int i2, float f3) {
        return zzg(i2 << 3) + 4;
    }

    public final void zzb() {
        if (zza() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    @Deprecated
    public static int zza(int i2, zzlg zzlgVar, zzly zzlyVar) {
        return ((zzhz) zzlgVar).zza(zzlyVar) + (zzg(i2 << 3) << 1);
    }

    public final void zzb(boolean z6) throws IOException {
        zza(z6 ? (byte) 1 : (byte) 0);
    }

    @Deprecated
    public static int zza(zzlg zzlgVar) {
        return zzlgVar.zzbw();
    }

    public final void zzb(int i2, double d7) throws IOException {
        zzf(i2, Double.doubleToRawLongBits(d7));
    }

    public static int zza(int i2, zzkk zzkkVar) {
        return zzb(3, zzkkVar) + zzf(2, i2) + (zzg(8) << 1);
    }

    public final void zzb(double d7) throws IOException {
        zzf(Double.doubleToRawLongBits(d7));
    }

    public final void zzb(int i2, float f3) throws IOException {
        zzg(i2, Float.floatToRawIntBits(f3));
    }

    public final void zzb(float f3) throws IOException {
        zzh(Float.floatToRawIntBits(f3));
    }

    public static int zza(zzkk zzkkVar) {
        int zzb2 = zzkkVar.zzb();
        return zzg(zzb2) + zzb2;
    }

    public static int zza(int i2, zzlg zzlgVar) {
        return zzb(zzlgVar) + zzg(24) + zzf(2, i2) + (zzg(8) << 1);
    }

    public static int zza(zzlg zzlgVar, zzly zzlyVar) {
        int zza2 = ((zzhz) zzlgVar).zza(zzlyVar);
        return zzg(zza2) + zza2;
    }

    public static int zza(int i2, String str) {
        return zza(str) + zzg(i2 << 3);
    }

    public static int zza(String str) {
        int length;
        try {
            length = zznd.zza(str);
        } catch (zznh unused) {
            length = str.getBytes(zzjw.zza).length;
        }
        return zzg(length) + length;
    }

    public final void zza(String str, zznh zznhVar) throws IOException {
        zzb.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) zznhVar);
        byte[] bytes = str.getBytes(zzjw.zza);
        try {
            zzk(bytes.length);
            zza(bytes, 0, bytes.length);
        } catch (IndexOutOfBoundsException e3) {
            throw new zza(e3);
        }
    }
}
