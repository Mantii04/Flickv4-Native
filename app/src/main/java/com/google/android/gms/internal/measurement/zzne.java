package com.google.android.gms.internal.measurement;

/* loaded from: classes2.dex */
final class zzne extends zznf {
    /* JADX WARN: Code restructure failed: missing block: B:12:0x001d, code lost:
    
        return r10 + r0;
     */
    @Override // com.google.android.gms.internal.measurement.zznf
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zza(java.lang.String r8, byte[] r9, int r10, int r11) {
        /*
            Method dump skipped, instructions count: 251
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzne.zza(java.lang.String, byte[], int, int):int");
    }

    @Override // com.google.android.gms.internal.measurement.zznf
    public final int zza(int i2, byte[] bArr, int i7, int i8) {
        while (i7 < i8 && bArr[i7] >= 0) {
            i7++;
        }
        if (i7 >= i8) {
            return 0;
        }
        while (i7 < i8) {
            int i9 = i7 + 1;
            byte b7 = bArr[i7];
            if (b7 < 0) {
                if (b7 < -32) {
                    if (i9 >= i8) {
                        return b7;
                    }
                    if (b7 >= -62) {
                        i7 += 2;
                        if (bArr[i9] > -65) {
                        }
                    }
                    return -1;
                }
                if (b7 < -16) {
                    if (i9 >= i8 - 1) {
                        return zznd.zza(bArr, i9, i8);
                    }
                    int i10 = i7 + 2;
                    byte b8 = bArr[i9];
                    if (b8 <= -65 && ((b7 != -32 || b8 >= -96) && (b7 != -19 || b8 < -96))) {
                        i7 += 3;
                        if (bArr[i10] > -65) {
                        }
                    }
                    return -1;
                }
                if (i9 >= i8 - 2) {
                    return zznd.zza(bArr, i9, i8);
                }
                int i11 = i7 + 2;
                byte b9 = bArr[i9];
                if (b9 <= -65) {
                    if ((((b9 + 112) + (b7 << 28)) >> 30) == 0) {
                        int i12 = i7 + 3;
                        if (bArr[i11] <= -65) {
                            i7 += 4;
                            if (bArr[i12] > -65) {
                            }
                        }
                    }
                }
                return -1;
            }
            i7 = i9;
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.measurement.zznf
    public final String zza(byte[] bArr, int i2, int i7) throws zzkb {
        if ((i2 | i7 | ((bArr.length - i2) - i7)) >= 0) {
            int i8 = i2 + i7;
            char[] cArr = new char[i7];
            int i9 = 0;
            while (i2 < i8) {
                byte b7 = bArr[i2];
                if (b7 < 0) {
                    break;
                }
                i2++;
                zznc.zza(b7, cArr, i9);
                i9++;
            }
            int i10 = i9;
            while (i2 < i8) {
                int i11 = i2 + 1;
                byte b8 = bArr[i2];
                if (b8 >= 0) {
                    int i12 = i10 + 1;
                    zznc.zza(b8, cArr, i10);
                    while (i11 < i8) {
                        byte b9 = bArr[i11];
                        if (b9 < 0) {
                            break;
                        }
                        i11++;
                        zznc.zza(b9, cArr, i12);
                        i12++;
                    }
                    i10 = i12;
                    i2 = i11;
                } else if (b8 < -32) {
                    if (i11 < i8) {
                        i2 += 2;
                        zznc.zza(b8, bArr[i11], cArr, i10);
                        i10++;
                    } else {
                        throw zzkb.zzd();
                    }
                } else if (b8 < -16) {
                    if (i11 < i8 - 1) {
                        int i13 = i2 + 2;
                        i2 += 3;
                        zznc.zza(b8, bArr[i11], bArr[i13], cArr, i10);
                        i10++;
                    } else {
                        throw zzkb.zzd();
                    }
                } else if (i11 < i8 - 2) {
                    byte b10 = bArr[i11];
                    int i14 = i2 + 3;
                    byte b11 = bArr[i2 + 2];
                    i2 += 4;
                    zznc.zza(b8, b10, b11, bArr[i14], cArr, i10);
                    i10 += 2;
                } else {
                    throw zzkb.zzd();
                }
            }
            return new String(cArr, 0, i10);
        }
        throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i2), Integer.valueOf(i7)));
    }
}
