package com.google.android.gms.internal.cast;

/* loaded from: classes2.dex */
final class zzwn {
    private static final zzwk zza;

    static {
        if (zzwj.zzx() && zzwj.zzy()) {
            int i2 = zzsj.zza;
        }
        zza = new zzwl();
    }

    public static /* bridge */ /* synthetic */ int zza(byte[] bArr, int i2, int i7) {
        int i8 = i7 - i2;
        byte b7 = bArr[i2 - 1];
        if (i8 == 0) {
            if (b7 <= -12) {
                return b7;
            }
            return -1;
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

    /* JADX WARN: Code restructure failed: missing block: B:12:0x001e, code lost:
    
        return r10 + r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int zzb(java.lang.CharSequence r8, byte[] r9, int r10, int r11) {
        /*
            Method dump skipped, instructions count: 254
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.cast.zzwn.zzb(java.lang.CharSequence, byte[], int, int):int");
    }

    public static int zzc(CharSequence charSequence) {
        int length = charSequence.length();
        int i2 = 0;
        int i7 = 0;
        while (i7 < length && charSequence.charAt(i7) < 128) {
            i7++;
        }
        int i8 = length;
        while (true) {
            if (i7 >= length) {
                break;
            }
            char charAt = charSequence.charAt(i7);
            if (charAt < 2048) {
                i8 += (127 - charAt) >>> 31;
                i7++;
            } else {
                int length2 = charSequence.length();
                while (i7 < length2) {
                    char charAt2 = charSequence.charAt(i7);
                    if (charAt2 < 2048) {
                        i2 += (127 - charAt2) >>> 31;
                    } else {
                        i2 += 2;
                        if (charAt2 >= 55296 && charAt2 <= 57343) {
                            if (Character.codePointAt(charSequence, i7) < 65536) {
                                throw new zzwm(i7, length2);
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
        throw new IllegalArgumentException("UTF-8 length does not fit in int: " + (i8 + 4294967296L));
    }

    public static boolean zzd(byte[] bArr) {
        return zza.zzb(bArr, 0, bArr.length);
    }

    public static boolean zze(byte[] bArr, int i2, int i7) {
        return zza.zzb(bArr, 0, i7);
    }
}
