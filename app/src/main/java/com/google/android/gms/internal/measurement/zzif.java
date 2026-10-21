package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* loaded from: classes2.dex */
final class zzif {
    public static double zza(byte[] bArr, int i2) {
        return Double.longBitsToDouble(zzd(bArr, i2));
    }

    public static float zzb(byte[] bArr, int i2) {
        return Float.intBitsToFloat(zzc(bArr, i2));
    }

    public static int zzc(byte[] bArr, int i2) {
        return ((bArr[i2 + 3] & 255) << 24) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16);
    }

    public static int zzd(byte[] bArr, int i2, zzie zzieVar) {
        int i7 = i2 + 1;
        long j7 = bArr[i2];
        if (j7 >= 0) {
            zzieVar.zzb = j7;
            return i7;
        }
        int i8 = i2 + 2;
        byte b7 = bArr[i7];
        long j8 = (j7 & 127) | ((b7 & Byte.MAX_VALUE) << 7);
        int i9 = 7;
        while (b7 < 0) {
            int i10 = i8 + 1;
            i9 += 7;
            j8 |= (r10 & Byte.MAX_VALUE) << i9;
            b7 = bArr[i8];
            i8 = i10;
        }
        zzieVar.zzb = j8;
        return i8;
    }

    public static int zza(byte[] bArr, int i2, zzie zzieVar) throws zzkb {
        int zzc = zzc(bArr, i2, zzieVar);
        int i7 = zzieVar.zza;
        if (i7 < 0) {
            throw zzkb.zzf();
        }
        if (i7 > bArr.length - zzc) {
            throw zzkb.zzh();
        }
        if (i7 == 0) {
            zzieVar.zzc = zzij.zza;
            return zzc;
        }
        zzieVar.zzc = zzij.zza(bArr, zzc, i7);
        return zzc + i7;
    }

    public static int zzb(byte[] bArr, int i2, zzie zzieVar) throws zzkb {
        int zzc = zzc(bArr, i2, zzieVar);
        int i7 = zzieVar.zza;
        if (i7 < 0) {
            throw zzkb.zzf();
        }
        if (i7 == 0) {
            zzieVar.zzc = "";
            return zzc;
        }
        zzieVar.zzc = zznd.zzb(bArr, zzc, i7);
        return zzc + i7;
    }

    public static int zzc(byte[] bArr, int i2, zzie zzieVar) {
        int i7 = i2 + 1;
        byte b7 = bArr[i2];
        if (b7 < 0) {
            return zza(b7, bArr, i7, zzieVar);
        }
        zzieVar.zza = b7;
        return i7;
    }

    public static long zzd(byte[] bArr, int i2) {
        return ((bArr[i2 + 7] & 255) << 56) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16) | ((bArr[i2 + 3] & 255) << 24) | ((bArr[i2 + 4] & 255) << 32) | ((bArr[i2 + 5] & 255) << 40) | ((bArr[i2 + 6] & 255) << 48);
    }

    public static int zza(zzly zzlyVar, byte[] bArr, int i2, int i7, int i8, zzie zzieVar) throws IOException {
        Object zza = zzlyVar.zza();
        int zza2 = zza(zza, zzlyVar, bArr, i2, i7, i8, zzieVar);
        zzlyVar.zzc(zza);
        zzieVar.zzc = zza;
        return zza2;
    }

    public static int zza(zzly zzlyVar, byte[] bArr, int i2, int i7, zzie zzieVar) throws IOException {
        Object zza = zzlyVar.zza();
        int zza2 = zza(zza, zzlyVar, bArr, i2, i7, zzieVar);
        zzlyVar.zzc(zza);
        zzieVar.zzc = zza;
        return zza2;
    }

    public static int zza(zzly<?> zzlyVar, int i2, byte[] bArr, int i7, int i8, zzkc<?> zzkcVar, zzie zzieVar) throws IOException {
        int zza = zza(zzlyVar, bArr, i7, i8, zzieVar);
        zzkcVar.add(zzieVar.zzc);
        while (zza < i8) {
            int zzc = zzc(bArr, zza, zzieVar);
            if (i2 != zzieVar.zza) {
                break;
            }
            zza = zza(zzlyVar, bArr, zzc, i8, zzieVar);
            zzkcVar.add(zzieVar.zzc);
        }
        return zza;
    }

    public static int zza(byte[] bArr, int i2, zzkc<?> zzkcVar, zzie zzieVar) throws IOException {
        zzju zzjuVar = (zzju) zzkcVar;
        int zzc = zzc(bArr, i2, zzieVar);
        int i7 = zzieVar.zza + zzc;
        while (zzc < i7) {
            zzc = zzc(bArr, zzc, zzieVar);
            zzjuVar.zzd(zzieVar.zza);
        }
        if (zzc == i7) {
            return zzc;
        }
        throw zzkb.zzh();
    }

    public static int zza(int i2, byte[] bArr, int i7, int i8, zzmw zzmwVar, zzie zzieVar) throws zzkb {
        if ((i2 >>> 3) == 0) {
            throw zzkb.zzc();
        }
        int i9 = i2 & 7;
        if (i9 == 0) {
            int zzd = zzd(bArr, i7, zzieVar);
            zzmwVar.zza(i2, Long.valueOf(zzieVar.zzb));
            return zzd;
        }
        if (i9 == 1) {
            zzmwVar.zza(i2, Long.valueOf(zzd(bArr, i7)));
            return i7 + 8;
        }
        if (i9 == 2) {
            int zzc = zzc(bArr, i7, zzieVar);
            int i10 = zzieVar.zza;
            if (i10 >= 0) {
                if (i10 > bArr.length - zzc) {
                    throw zzkb.zzh();
                }
                if (i10 == 0) {
                    zzmwVar.zza(i2, zzij.zza);
                } else {
                    zzmwVar.zza(i2, zzij.zza(bArr, zzc, i10));
                }
                return zzc + i10;
            }
            throw zzkb.zzf();
        }
        if (i9 != 3) {
            if (i9 == 5) {
                zzmwVar.zza(i2, Integer.valueOf(zzc(bArr, i7)));
                return i7 + 4;
            }
            throw zzkb.zzc();
        }
        zzmw zzd2 = zzmw.zzd();
        int i11 = (i2 & (-8)) | 4;
        int i12 = 0;
        while (true) {
            if (i7 >= i8) {
                break;
            }
            int zzc2 = zzc(bArr, i7, zzieVar);
            i12 = zzieVar.zza;
            if (i12 == i11) {
                i7 = zzc2;
                break;
            }
            i7 = zza(i12, bArr, zzc2, i8, zzd2, zzieVar);
        }
        if (i7 <= i8 && i12 == i11) {
            zzmwVar.zza(i2, zzd2);
            return i7;
        }
        throw zzkb.zzg();
    }

    public static int zza(int i2, byte[] bArr, int i7, zzie zzieVar) {
        int i8 = i2 & 127;
        int i9 = i7 + 1;
        byte b7 = bArr[i7];
        if (b7 >= 0) {
            zzieVar.zza = i8 | (b7 << 7);
            return i9;
        }
        int i10 = i8 | ((b7 & Byte.MAX_VALUE) << 7);
        int i11 = i7 + 2;
        byte b8 = bArr[i9];
        if (b8 >= 0) {
            zzieVar.zza = i10 | (b8 << 14);
            return i11;
        }
        int i12 = i10 | ((b8 & Byte.MAX_VALUE) << 14);
        int i13 = i7 + 3;
        byte b9 = bArr[i11];
        if (b9 >= 0) {
            zzieVar.zza = i12 | (b9 << 21);
            return i13;
        }
        int i14 = i12 | ((b9 & Byte.MAX_VALUE) << 21);
        int i15 = i7 + 4;
        byte b10 = bArr[i13];
        if (b10 >= 0) {
            zzieVar.zza = i14 | (b10 << 28);
            return i15;
        }
        int i16 = i14 | ((b10 & Byte.MAX_VALUE) << 28);
        while (true) {
            int i17 = i15 + 1;
            if (bArr[i15] >= 0) {
                zzieVar.zza = i16;
                return i17;
            }
            i15 = i17;
        }
    }

    public static int zza(int i2, byte[] bArr, int i7, int i8, zzkc<?> zzkcVar, zzie zzieVar) {
        zzju zzjuVar = (zzju) zzkcVar;
        int zzc = zzc(bArr, i7, zzieVar);
        zzjuVar.zzd(zzieVar.zza);
        while (zzc < i8) {
            int zzc2 = zzc(bArr, zzc, zzieVar);
            if (i2 != zzieVar.zza) {
                break;
            }
            zzc = zzc(bArr, zzc2, zzieVar);
            zzjuVar.zzd(zzieVar.zza);
        }
        return zzc;
    }

    public static int zza(Object obj, zzly zzlyVar, byte[] bArr, int i2, int i7, int i8, zzie zzieVar) throws IOException {
        int zza = ((zzlk) zzlyVar).zza((zzlk) obj, bArr, i2, i7, i8, zzieVar);
        zzieVar.zzc = obj;
        return zza;
    }

    public static int zza(Object obj, zzly zzlyVar, byte[] bArr, int i2, int i7, zzie zzieVar) throws IOException {
        int i8 = i2 + 1;
        int i9 = bArr[i2];
        if (i9 < 0) {
            i8 = zza(i9, bArr, i8, zzieVar);
            i9 = zzieVar.zza;
        }
        int i10 = i8;
        if (i9 >= 0 && i9 <= i7 - i10) {
            int i11 = i10 + i9;
            zzlyVar.zza(obj, bArr, i10, i11, zzieVar);
            zzieVar.zzc = obj;
            return i11;
        }
        throw zzkb.zzh();
    }

    public static int zza(int i2, byte[] bArr, int i7, int i8, zzie zzieVar) throws zzkb {
        if ((i2 >>> 3) == 0) {
            throw zzkb.zzc();
        }
        int i9 = i2 & 7;
        if (i9 == 0) {
            return zzd(bArr, i7, zzieVar);
        }
        if (i9 == 1) {
            return i7 + 8;
        }
        if (i9 == 2) {
            return zzc(bArr, i7, zzieVar) + zzieVar.zza;
        }
        if (i9 != 3) {
            if (i9 == 5) {
                return i7 + 4;
            }
            throw zzkb.zzc();
        }
        int i10 = (i2 & (-8)) | 4;
        int i11 = 0;
        while (i7 < i8) {
            i7 = zzc(bArr, i7, zzieVar);
            i11 = zzieVar.zza;
            if (i11 == i10) {
                break;
            }
            i7 = zza(i11, bArr, i7, i8, zzieVar);
        }
        if (i7 > i8 || i11 != i10) {
            throw zzkb.zzg();
        }
        return i7;
    }
}
