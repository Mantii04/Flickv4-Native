package com.google.android.gms.internal.measurement;

import A.i;

/* loaded from: classes2.dex */
final class zznd {
    private static final zznf zza;

    static {
        if (zzmz.zzc()) {
            zzmz.zzd();
        }
        zza = new zzne();
    }

    public static /* synthetic */ int zza(byte[] bArr, int i2, int i7) {
        byte b7 = bArr[i2 - 1];
        int i8 = i7 - i2;
        if (i8 == 0) {
            if (b7 > -12) {
                return -1;
            }
            return b7;
        }
        if (i8 == 1) {
            byte b8 = bArr[i2];
            if (b7 > -12 || b8 > -65) {
                return -1;
            }
            return (b8 << 8) ^ b7;
        }
        if (i8 != 2) {
            throw new AssertionError();
        }
        byte b9 = bArr[i2];
        byte b10 = bArr[i2 + 1];
        if (b7 > -12 || b9 > -65 || b10 > -65) {
            return -1;
        }
        return (b10 << 16) ^ ((b9 << 8) ^ b7);
    }

    public static String zzb(byte[] bArr, int i2, int i7) throws zzkb {
        return zza.zza(bArr, i2, i7);
    }

    public static boolean zzc(byte[] bArr, int i2, int i7) {
        return zza.zzb(bArr, i2, i7);
    }

    public static int zza(String str, byte[] bArr, int i2, int i7) {
        return zza.zza(str, bArr, i2, i7);
    }

    public static int zza(String str) {
        int length = str.length();
        int i2 = 0;
        int i7 = 0;
        while (i7 < length && str.charAt(i7) < 128) {
            i7++;
        }
        int i8 = length;
        while (true) {
            if (i7 >= length) {
                break;
            }
            char charAt = str.charAt(i7);
            if (charAt < 2048) {
                i8 += (127 - charAt) >>> 31;
                i7++;
            } else {
                int length2 = str.length();
                while (i7 < length2) {
                    char charAt2 = str.charAt(i7);
                    if (charAt2 < 2048) {
                        i2 += (127 - charAt2) >>> 31;
                    } else {
                        i2 += 2;
                        if (55296 <= charAt2 && charAt2 <= 57343) {
                            if (Character.codePointAt(str, i7) < 65536) {
                                throw new zznh(i7, length2);
                            }
                            i7++;
                        }
                    }
                    i7++;
                }
                i8 += i2;
            }
        }
        if (i8 >= length) {
            return i8;
        }
        throw new IllegalArgumentException(i.i("UTF-8 length does not fit in int: ", i8 + 4294967296L));
    }

    public static boolean zza(byte[] bArr) {
        return zza.zzb(bArr, 0, bArr.length);
    }
}
