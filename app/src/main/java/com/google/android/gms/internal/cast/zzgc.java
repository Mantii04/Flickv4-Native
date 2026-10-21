package com.google.android.gms.internal.cast;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Arrays;

/* loaded from: classes2.dex */
final class zzgc extends zzft {
    static final zzft zza = new zzgc(null, new Object[0], 0);
    final transient Object[] zzb;
    private final transient Object zzc;
    private final transient int zzd;

    private zzgc(Object obj, Object[] objArr, int i2) {
        this.zzc = obj;
        this.zzb = objArr;
        this.zzd = i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r16v10 */
    /* JADX WARN: Type inference failed for: r16v11 */
    /* JADX WARN: Type inference failed for: r16v5 */
    /* JADX WARN: Type inference failed for: r16v6 */
    /* JADX WARN: Type inference failed for: r16v8 */
    /* JADX WARN: Type inference failed for: r16v9 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v8, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r5v8, types: [java.lang.Object[]] */
    public static zzgc zzh(int i2, Object[] objArr, zzfs zzfsVar) {
        boolean z6;
        int i7;
        int i8;
        short[] sArr;
        boolean z7;
        byte[] bArr;
        boolean z8;
        ?? r16;
        int i9 = i2;
        Object[] objArr2 = objArr;
        if (i9 == 0) {
            return (zzgc) zza;
        }
        Object obj = null;
        boolean z9 = false;
        int i10 = 1;
        if (i9 == 1) {
            Object obj2 = objArr2[0];
            obj2.getClass();
            Object obj3 = objArr2[1];
            obj3.getClass();
            zzfh.zza(obj2, obj3);
            return new zzgc(null, objArr2, 1);
        }
        zzez.zzb(i9, objArr2.length >> 1, FirebaseAnalytics.Param.INDEX);
        int zzh = zzfu.zzh(i9);
        if (i9 == 1) {
            Object obj4 = objArr2[0];
            obj4.getClass();
            Object obj5 = objArr2[1];
            obj5.getClass();
            zzfh.zza(obj4, obj5);
            r16 = 0;
            i9 = 1;
            i7 = 1;
        } else {
            int i11 = zzh - 1;
            if (zzh <= 128) {
                byte[] bArr2 = new byte[zzh];
                Arrays.fill(bArr2, (byte) -1);
                int i12 = 0;
                int i13 = 0;
                while (i12 < i9) {
                    int i14 = i13 + i13;
                    int i15 = i12 + i12;
                    Object obj6 = objArr2[i15];
                    obj6.getClass();
                    Object obj7 = objArr2[i15 ^ 1];
                    obj7.getClass();
                    zzfh.zza(obj6, obj7);
                    int zza2 = zzfj.zza(obj6.hashCode());
                    while (true) {
                        int i16 = zza2 & i11;
                        z8 = z9;
                        int i17 = bArr2[i16] & 255;
                        if (i17 == 255) {
                            bArr2[i16] = (byte) i14;
                            if (i13 < i12) {
                                objArr2[i14] = obj6;
                                objArr2[i14 ^ 1] = obj7;
                            }
                            i13++;
                        } else {
                            if (obj6.equals(objArr2[i17])) {
                                int i18 = i17 ^ 1;
                                Object obj8 = objArr2[i18];
                                obj8.getClass();
                                zzfr zzfrVar = new zzfr(obj6, obj7, obj8);
                                objArr2[i18] = obj7;
                                obj = zzfrVar;
                                break;
                            }
                            zza2 = i16 + 1;
                            z9 = z8;
                        }
                    }
                    i12++;
                    z9 = z8;
                }
                z6 = z9;
                bArr = bArr2;
                z7 = z6;
                if (i13 != i9) {
                    sArr = new Object[3];
                    sArr[z6 ? 1 : 0] = bArr2;
                    sArr[1] = Integer.valueOf(i13);
                    sArr[2] = obj;
                    obj = sArr;
                    i7 = 1;
                    r16 = z6;
                }
                i7 = 1;
                obj = bArr;
                r16 = z7;
            } else {
                z6 = false;
                if (zzh <= 32768) {
                    sArr = new short[zzh];
                    Arrays.fill(sArr, (short) -1);
                    int i19 = 0;
                    for (int i20 = 0; i20 < i9; i20++) {
                        int i21 = i19 + i19;
                        int i22 = i20 + i20;
                        Object obj9 = objArr2[i22];
                        obj9.getClass();
                        Object obj10 = objArr2[i22 ^ 1];
                        obj10.getClass();
                        zzfh.zza(obj9, obj10);
                        int zza3 = zzfj.zza(obj9.hashCode());
                        while (true) {
                            int i23 = zza3 & i11;
                            char c7 = (char) sArr[i23];
                            if (c7 == 65535) {
                                sArr[i23] = (short) i21;
                                if (i19 < i20) {
                                    objArr2[i21] = obj9;
                                    objArr2[i21 ^ 1] = obj10;
                                }
                                i19++;
                            } else {
                                if (obj9.equals(objArr2[c7])) {
                                    int i24 = c7 ^ 1;
                                    Object obj11 = objArr2[i24];
                                    obj11.getClass();
                                    zzfr zzfrVar2 = new zzfr(obj9, obj10, obj11);
                                    objArr2[i24] = obj10;
                                    obj = zzfrVar2;
                                    break;
                                }
                                zza3 = i23 + 1;
                            }
                        }
                    }
                    if (i19 != i9) {
                        bArr = new Object[]{sArr, Integer.valueOf(i19), obj};
                        z7 = z6;
                        i7 = 1;
                        obj = bArr;
                        r16 = z7;
                    }
                    obj = sArr;
                    i7 = 1;
                    r16 = z6;
                } else {
                    int[] iArr = new int[zzh];
                    Arrays.fill(iArr, -1);
                    int i25 = 0;
                    int i26 = 0;
                    while (i25 < i9) {
                        int i27 = i26 + i26;
                        int i28 = i25 + i25;
                        Object obj12 = objArr2[i28];
                        obj12.getClass();
                        Object obj13 = objArr2[i28 ^ i10];
                        obj13.getClass();
                        zzfh.zza(obj12, obj13);
                        int zza4 = zzfj.zza(obj12.hashCode());
                        while (true) {
                            int i29 = zza4 & i11;
                            int i30 = iArr[i29];
                            if (i30 == -1) {
                                iArr[i29] = i27;
                                if (i26 < i25) {
                                    objArr2[i27] = obj12;
                                    objArr2[i27 ^ 1] = obj13;
                                }
                                i26++;
                                i8 = i10;
                            } else {
                                i8 = i10;
                                if (obj12.equals(objArr2[i30])) {
                                    int i31 = i30 ^ 1;
                                    Object obj14 = objArr2[i31];
                                    obj14.getClass();
                                    zzfr zzfrVar3 = new zzfr(obj12, obj13, obj14);
                                    objArr2[i31] = obj13;
                                    obj = zzfrVar3;
                                    break;
                                }
                                zza4 = i29 + 1;
                                i10 = i8;
                            }
                        }
                        i25++;
                        i10 = i8;
                    }
                    i7 = i10;
                    if (i26 == i9) {
                        obj = iArr;
                        r16 = z6;
                    } else {
                        Object[] objArr3 = new Object[3];
                        objArr3[0] = iArr;
                        objArr3[i7] = Integer.valueOf(i26);
                        objArr3[2] = obj;
                        obj = objArr3;
                        r16 = z6;
                    }
                }
            }
        }
        boolean z10 = obj instanceof Object[];
        Object obj15 = obj;
        if (z10) {
            Object[] objArr4 = (Object[]) obj;
            zzfsVar.zzc = (zzfr) objArr4[2];
            Object obj16 = objArr4[r16];
            int intValue = ((Integer) objArr4[i7]).intValue();
            objArr2 = Arrays.copyOf(objArr2, intValue + intValue);
            obj15 = obj16;
            i9 = intValue;
        }
        return new zzgc(obj15, objArr2, i9);
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x009e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x009f A[RETURN] */
    @Override // com.google.android.gms.internal.cast.zzft, java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object get(java.lang.Object r10) {
        /*
            r9 = this;
            r0 = 0
            if (r10 != 0) goto L6
        L3:
            r10 = r0
            goto L9c
        L6:
            int r1 = r9.zzd
            java.lang.Object[] r2 = r9.zzb
            r3 = 1
            if (r1 != r3) goto L20
            r1 = 0
            r1 = r2[r1]
            r1.getClass()
            boolean r10 = r1.equals(r10)
            if (r10 == 0) goto L3
            r10 = r2[r3]
            r10.getClass()
            goto L9c
        L20:
            java.lang.Object r1 = r9.zzc
            if (r1 != 0) goto L25
            goto L3
        L25:
            boolean r4 = r1 instanceof byte[]
            r5 = -1
            if (r4 == 0) goto L51
            r4 = r1
            byte[] r4 = (byte[]) r4
            int r1 = r4.length
            int r6 = r1 + (-1)
            int r1 = r10.hashCode()
            int r1 = com.google.android.gms.internal.cast.zzfj.zza(r1)
        L38:
            r1 = r1 & r6
            r5 = r4[r1]
            r7 = 255(0xff, float:3.57E-43)
            r5 = r5 & r7
            if (r5 != r7) goto L41
            goto L3
        L41:
            r7 = r2[r5]
            boolean r7 = r10.equals(r7)
            if (r7 == 0) goto L4e
            r10 = r5 ^ 1
            r10 = r2[r10]
            goto L9c
        L4e:
            int r1 = r1 + 1
            goto L38
        L51:
            boolean r4 = r1 instanceof short[]
            if (r4 == 0) goto L7d
            r4 = r1
            short[] r4 = (short[]) r4
            int r1 = r4.length
            int r6 = r1 + (-1)
            int r1 = r10.hashCode()
            int r1 = com.google.android.gms.internal.cast.zzfj.zza(r1)
        L63:
            r1 = r1 & r6
            short r5 = r4[r1]
            char r5 = (char) r5
            r7 = 65535(0xffff, float:9.1834E-41)
            if (r5 != r7) goto L6d
            goto L3
        L6d:
            r7 = r2[r5]
            boolean r7 = r10.equals(r7)
            if (r7 == 0) goto L7a
            r10 = r5 ^ 1
            r10 = r2[r10]
            goto L9c
        L7a:
            int r1 = r1 + 1
            goto L63
        L7d:
            int[] r1 = (int[]) r1
            int r4 = r1.length
            int r4 = r4 + r5
            int r6 = r10.hashCode()
            int r6 = com.google.android.gms.internal.cast.zzfj.zza(r6)
        L89:
            r6 = r6 & r4
            r7 = r1[r6]
            if (r7 != r5) goto L90
            goto L3
        L90:
            r8 = r2[r7]
            boolean r8 = r10.equals(r8)
            if (r8 == 0) goto La0
            r10 = r7 ^ 1
            r10 = r2[r10]
        L9c:
            if (r10 != 0) goto L9f
            return r0
        L9f:
            return r10
        La0:
            int r6 = r6 + 1
            goto L89
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.cast.zzgc.get(java.lang.Object):java.lang.Object");
    }

    @Override // java.util.Map
    public final int size() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.cast.zzft
    public final zzfm zza() {
        return new zzgb(this.zzb, 1, this.zzd);
    }

    @Override // com.google.android.gms.internal.cast.zzft
    public final zzfu zze() {
        return new zzfz(this, this.zzb, 0, this.zzd);
    }

    @Override // com.google.android.gms.internal.cast.zzft
    public final zzfu zzf() {
        return new zzga(this, new zzgb(this.zzb, 0, this.zzd));
    }
}
