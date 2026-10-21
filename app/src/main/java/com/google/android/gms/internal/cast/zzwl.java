package com.google.android.gms.internal.cast;

/* loaded from: classes2.dex */
final class zzwl extends zzwk {
    @Override // com.google.android.gms.internal.cast.zzwk
    public final int zza(int i2, byte[] bArr, int i7, int i8) {
        int i9 = 0;
        while (i9 < i8 && bArr[i9] >= 0) {
            i9++;
        }
        if (i9 >= i8) {
            return 0;
        }
        while (i9 < i8) {
            int i10 = i9 + 1;
            byte b7 = bArr[i9];
            if (b7 >= 0) {
                i9 = i10;
            } else {
                if (b7 < -32) {
                    if (i10 >= i8) {
                        return b7;
                    }
                    if (b7 >= -62) {
                        i9 += 2;
                        if (bArr[i10] > -65) {
                        }
                    }
                    return -1;
                }
                if (b7 >= -16) {
                    if (i10 >= i8 - 2) {
                        return zzwn.zza(bArr, i10, i8);
                    }
                    int i11 = i9 + 2;
                    byte b8 = bArr[i10];
                    if (b8 <= -65) {
                        if ((((b8 + 112) + (b7 << 28)) >> 30) == 0) {
                            int i12 = i9 + 3;
                            if (bArr[i11] <= -65) {
                                i9 += 4;
                                if (bArr[i12] > -65) {
                                }
                            }
                        }
                    }
                    return -1;
                }
                if (i10 >= i8 - 1) {
                    return zzwn.zza(bArr, i10, i8);
                }
                int i13 = i9 + 2;
                byte b9 = bArr[i10];
                if (b9 > -65 || (b7 == -32 && b9 < -96)) {
                    return -1;
                }
                if (b7 == -19 && b9 >= -96) {
                    return -1;
                }
                i9 += 3;
                if (bArr[i13] > -65) {
                    return -1;
                }
            }
        }
        return 0;
    }
}
