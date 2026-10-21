package D;

import android.graphics.Path;

/* loaded from: classes.dex */
public abstract class g {
    public static float[] a(int i2, float[] fArr) {
        if (i2 < 0) {
            throw new IllegalArgumentException();
        }
        int length = fArr.length;
        if (length < 0) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int min = Math.min(i2, length);
        float[] fArr2 = new float[i2];
        System.arraycopy(fArr, 0, fArr2, 0, min);
        return fArr2;
    }

    public static boolean canMorph(f[] fVarArr, f[] fVarArr2) {
        if (fVarArr == null || fVarArr2 == null || fVarArr.length != fVarArr2.length) {
            return false;
        }
        for (int i2 = 0; i2 < fVarArr.length; i2++) {
            f fVar = fVarArr[i2];
            char c7 = fVar.f812a;
            f fVar2 = fVarArr2[i2];
            if (c7 != fVar2.f812a || fVar.f813b.length != fVar2.f813b.length) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0096 A[Catch: NumberFormatException -> 0x00aa, LOOP:3: B:25:0x0068->B:35:0x0096, LOOP_END, TryCatch #0 {NumberFormatException -> 0x00aa, blocks: (B:22:0x0054, B:25:0x0068, B:27:0x006e, B:31:0x007a, B:35:0x0096, B:39:0x009c, B:44:0x00b1, B:56:0x00b4), top: B:21:0x0054 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0095 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x009c A[Catch: NumberFormatException -> 0x00aa, TryCatch #0 {NumberFormatException -> 0x00aa, blocks: (B:22:0x0054, B:25:0x0068, B:27:0x006e, B:31:0x007a, B:35:0x0096, B:39:0x009c, B:44:0x00b1, B:56:0x00b4), top: B:21:0x0054 }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00b1 A[Catch: NumberFormatException -> 0x00aa, TryCatch #0 {NumberFormatException -> 0x00aa, blocks: (B:22:0x0054, B:25:0x0068, B:27:0x006e, B:31:0x007a, B:35:0x0096, B:39:0x009c, B:44:0x00b1, B:56:0x00b4), top: B:21:0x0054 }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00d7 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static D.f[] createNodesFromPathData(java.lang.String r17) {
        /*
            Method dump skipped, instructions count: 268
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: D.g.createNodesFromPathData(java.lang.String):D.f[]");
    }

    public static Path createPathFromPathData(String str) {
        Path path = new Path();
        try {
            f.nodesToPath(createNodesFromPathData(str), path);
            return path;
        } catch (RuntimeException e3) {
            throw new RuntimeException(A.i.k("Error in parsing ", str), e3);
        }
    }

    public static f[] deepCopyNodes(f[] fVarArr) {
        f[] fVarArr2 = new f[fVarArr.length];
        for (int i2 = 0; i2 < fVarArr.length; i2++) {
            fVarArr2[i2] = new f(fVarArr[i2]);
        }
        return fVarArr2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void nodesToPath(f[] fVarArr, Path path) {
        int i2;
        int i7;
        f fVar;
        int i8;
        char c7;
        float f3;
        float f7;
        float f8;
        float f9;
        f fVar2;
        boolean z6;
        float f10;
        float f11;
        float f12;
        float f13;
        float f14;
        float f15;
        float f16;
        float f17;
        Path path2 = path;
        float[] fArr = new float[6];
        int length = fVarArr.length;
        char c8 = 'm';
        int i9 = 0;
        char c9 = 'm';
        int i10 = 0;
        while (i10 < length) {
            f fVar3 = fVarArr[i10];
            char c10 = fVar3.f812a;
            float f18 = fArr[i9];
            float f19 = fArr[1];
            float f20 = fArr[2];
            float f21 = fArr[3];
            float f22 = fArr[4];
            float f23 = fArr[5];
            switch (c10) {
                case 'A':
                case 'a':
                    i2 = 7;
                    break;
                case 'C':
                case 'c':
                    i2 = 6;
                    break;
                case 'H':
                case 'V':
                case 'h':
                case 'v':
                    i2 = 1;
                    break;
                case 'Q':
                case 'S':
                case 'q':
                case 's':
                    i2 = 4;
                    break;
                case 'Z':
                case 'z':
                    path2.close();
                    path2.moveTo(f22, f23);
                    f18 = f22;
                    f20 = f18;
                    f19 = f23;
                    f21 = f19;
                default:
                    i2 = 2;
                    break;
            }
            float f24 = f19;
            float f25 = f22;
            float f26 = f23;
            float f27 = f18;
            int i11 = i9;
            while (true) {
                float[] fArr2 = fVar3.f813b;
                if (i11 < fArr2.length) {
                    int i12 = i9;
                    if (c10 == 'A') {
                        i7 = i11;
                        fVar = fVar3;
                        float f28 = f27;
                        float f29 = f24;
                        i8 = i10;
                        c7 = c10;
                        int i13 = i7 + 5;
                        int i14 = i7 + 6;
                        f.a(path, f28, f29, fArr2[i13], fArr2[i14], fArr2[i7], fArr2[i7 + 1], fArr2[i7 + 2], fArr2[i7 + 3] != 0.0f ? 1 : i12, fArr2[i7 + 4] != 0.0f ? 1 : i12);
                        f20 = fArr2[i13];
                        f3 = fArr2[i14];
                        f21 = f3;
                        f7 = f20;
                    } else if (c10 == 'C') {
                        i7 = i11;
                        i8 = i10;
                        fVar = fVar3;
                        c7 = c10;
                        int i15 = i7 + 2;
                        int i16 = i7 + 3;
                        int i17 = i7 + 4;
                        int i18 = i7 + 5;
                        path2.cubicTo(fArr2[i7], fArr2[i7 + 1], fArr2[i15], fArr2[i16], fArr2[i17], fArr2[i18]);
                        float f30 = fArr2[i17];
                        float f31 = fArr2[i18];
                        f20 = fArr2[i15];
                        f21 = fArr2[i16];
                        f3 = f31;
                        f7 = f30;
                    } else if (c10 != 'H') {
                        if (c10 == 'Q') {
                            i7 = i11;
                            i8 = i10;
                            fVar = fVar3;
                            c7 = c10;
                            int i19 = i7 + 1;
                            int i20 = i7 + 2;
                            int i21 = i7 + 3;
                            path2.quadTo(fArr2[i7], fArr2[i19], fArr2[i20], fArr2[i21]);
                            f8 = fArr2[i7];
                            float f32 = fArr2[i19];
                            f9 = fArr2[i20];
                            f21 = f32;
                            f3 = fArr2[i21];
                        } else if (c10 == 'V') {
                            i7 = i11;
                            i8 = i10;
                            fVar = fVar3;
                            f7 = f27;
                            c7 = c10;
                            path2.lineTo(f7, fArr2[i7]);
                            f3 = fArr2[i7];
                        } else if (c10 != 'a') {
                            if (c10 == 'c') {
                                i7 = i11;
                                int i22 = i7 + 2;
                                int i23 = i7 + 3;
                                int i24 = i7 + 4;
                                int i25 = i7 + 5;
                                path2.rCubicTo(fArr2[i7], fArr2[i7 + 1], fArr2[i22], fArr2[i23], fArr2[i24], fArr2[i25]);
                                float f33 = fArr2[i22] + f27;
                                float f34 = f24 + fArr2[i23];
                                f27 += fArr2[i24];
                                f24 += fArr2[i25];
                                f20 = f33;
                                f21 = f34;
                            } else if (c10 != 'h') {
                                if (c10 != 'q') {
                                    if (c10 != 'v') {
                                        if (c10 == 'L') {
                                            i7 = i11;
                                            int i26 = i7 + 1;
                                            path2.lineTo(fArr2[i7], fArr2[i26]);
                                            f7 = fArr2[i7];
                                            f3 = fArr2[i26];
                                        } else if (c10 == 'M') {
                                            i7 = i11;
                                            f7 = fArr2[i7];
                                            f3 = fArr2[i7 + 1];
                                            if (i7 > 0) {
                                                path2.lineTo(f7, f3);
                                            } else {
                                                path2.moveTo(f7, f3);
                                                f25 = f7;
                                                f26 = f3;
                                            }
                                        } else if (c10 == 'S') {
                                            i7 = i11;
                                            if (c9 == 'c' || c9 == 's' || c9 == 'C' || c9 == 'S') {
                                                f27 = (f27 * 2.0f) - f20;
                                                f24 = (f24 * 2.0f) - f21;
                                            }
                                            float f35 = f27;
                                            float f36 = f24;
                                            int i27 = i7 + 1;
                                            int i28 = i7 + 2;
                                            int i29 = i7 + 3;
                                            path2.cubicTo(f35, f36, fArr2[i7], fArr2[i27], fArr2[i28], fArr2[i29]);
                                            f8 = fArr2[i7];
                                            float f37 = fArr2[i27];
                                            f9 = fArr2[i28];
                                            f21 = f37;
                                            f3 = fArr2[i29];
                                            i8 = i10;
                                            fVar = fVar3;
                                            c7 = c10;
                                        } else if (c10 == 'T') {
                                            i7 = i11;
                                            if (c9 == 'q' || c9 == 't' || c9 == 'Q' || c9 == 'T') {
                                                f27 = (f27 * 2.0f) - f20;
                                                f24 = (f24 * 2.0f) - f21;
                                            }
                                            float f38 = f24;
                                            float f39 = fArr2[i7];
                                            int i30 = i7 + 1;
                                            path2.quadTo(f27, f38, f39, fArr2[i30]);
                                            f21 = f38;
                                            f7 = fArr2[i7];
                                            f3 = fArr2[i30];
                                            i8 = i10;
                                            fVar = fVar3;
                                            f20 = f27;
                                            c7 = c10;
                                        } else if (c10 == 'l') {
                                            i7 = i11;
                                            int i31 = i7 + 1;
                                            path2.rLineTo(fArr2[i7], fArr2[i31]);
                                            f27 += fArr2[i7];
                                            f13 = fArr2[i31];
                                        } else if (c10 == c8) {
                                            i7 = i11;
                                            float f40 = fArr2[i7];
                                            f27 += f40;
                                            float f41 = fArr2[i7 + 1];
                                            f24 += f41;
                                            if (i7 > 0) {
                                                path2.rLineTo(f40, f41);
                                            } else {
                                                path2.rMoveTo(f40, f41);
                                                fVar = fVar3;
                                                f7 = f27;
                                                f25 = f7;
                                                f3 = f24;
                                                f26 = f3;
                                                i8 = i10;
                                                c7 = c10;
                                            }
                                        } else if (c10 == 's') {
                                            if (c9 == 'c' || c9 == 's' || c9 == 'C' || c9 == 'S') {
                                                f14 = f24 - f21;
                                                f15 = f27 - f20;
                                            } else {
                                                f15 = 0.0f;
                                                f14 = 0.0f;
                                            }
                                            int i32 = i11 + 1;
                                            int i33 = i11 + 2;
                                            int i34 = i11 + 3;
                                            i7 = i11;
                                            path2.rCubicTo(f15, f14, fArr2[i11], fArr2[i32], fArr2[i33], fArr2[i34]);
                                            f10 = fArr2[i7] + f27;
                                            f11 = f24 + fArr2[i32];
                                            f27 += fArr2[i33];
                                            f12 = fArr2[i34];
                                        } else if (c10 != 't') {
                                            i7 = i11;
                                        } else {
                                            if (c9 == 'q' || c9 == 't' || c9 == 'Q' || c9 == 'T') {
                                                f16 = f27 - f20;
                                                f17 = f24 - f21;
                                            } else {
                                                f17 = 0.0f;
                                                f16 = 0.0f;
                                            }
                                            int i35 = i11 + 1;
                                            path2.rQuadTo(f16, f17, fArr2[i11], fArr2[i35]);
                                            float f42 = f16 + f27;
                                            float f43 = f24 + f17;
                                            float f44 = f27 + fArr2[i11];
                                            f24 += fArr2[i35];
                                            f21 = f43;
                                            i7 = i11;
                                            fVar = fVar3;
                                            f7 = f44;
                                            f20 = f42;
                                            f3 = f24;
                                            i8 = i10;
                                            c7 = c10;
                                        }
                                        i8 = i10;
                                        fVar = fVar3;
                                        c7 = c10;
                                    } else {
                                        i7 = i11;
                                        path2.rLineTo(0.0f, fArr2[i7]);
                                        f13 = fArr2[i7];
                                    }
                                    f24 += f13;
                                } else {
                                    i7 = i11;
                                    int i36 = i7 + 1;
                                    int i37 = i7 + 2;
                                    int i38 = i7 + 3;
                                    path2.rQuadTo(fArr2[i7], fArr2[i36], fArr2[i37], fArr2[i38]);
                                    f10 = fArr2[i7] + f27;
                                    f11 = f24 + fArr2[i36];
                                    f27 += fArr2[i37];
                                    f12 = fArr2[i38];
                                }
                                f24 += f12;
                                f20 = f10;
                                f21 = f11;
                            } else {
                                i7 = i11;
                                path2.rLineTo(fArr2[i7], 0.0f);
                                f27 += fArr2[i7];
                            }
                            fVar = fVar3;
                            f7 = f27;
                            f3 = f24;
                            i8 = i10;
                            c7 = c10;
                        } else {
                            i7 = i11;
                            int i39 = i7 + 5;
                            float f45 = fArr2[i39] + f27;
                            int i40 = i7 + 6;
                            float f46 = fArr2[i40] + f24;
                            float f47 = fArr2[i7];
                            float f48 = fArr2[i7 + 1];
                            float f49 = fArr2[i7 + 2];
                            if (fArr2[i7 + 3] != 0.0f) {
                                fVar2 = fVar3;
                                z6 = 1;
                            } else {
                                fVar2 = fVar3;
                                z6 = i12;
                            }
                            fVar = fVar2;
                            float f50 = f27;
                            c7 = c10;
                            float f51 = f24;
                            i8 = i10;
                            f.a(path, f50, f51, f45, f46, f47, f48, f49, z6, fArr2[i7 + 4] != 0.0f ? 1 : i12);
                            f7 = f50 + fArr2[i39];
                            f3 = f51 + fArr2[i40];
                            f20 = f7;
                            f21 = f3;
                        }
                        f20 = f8;
                        f7 = f9;
                    } else {
                        i7 = i11;
                        fVar = fVar3;
                        c7 = c10;
                        f3 = f24;
                        i8 = i10;
                        path2.lineTo(fArr2[i7], f3);
                        f7 = fArr2[i7];
                    }
                    c10 = c7;
                    fVar3 = fVar;
                    i10 = i8;
                    i9 = i12;
                    c8 = 'm';
                    f27 = f7;
                    f24 = f3;
                    c9 = c10;
                    i11 = i7 + i2;
                    path2 = path;
                }
            }
            int i41 = i9;
            fArr[i41] = f27;
            fArr[1] = f24;
            fArr[2] = f20;
            fArr[3] = f21;
            fArr[4] = f25;
            fArr[5] = f26;
            c9 = fVar3.f812a;
            i10++;
            path2 = path;
            i9 = i41;
            c8 = 'm';
        }
    }

    public static void updateNodes(f[] fVarArr, f[] fVarArr2) {
        for (int i2 = 0; i2 < fVarArr2.length; i2++) {
            fVarArr[i2].f812a = fVarArr2[i2].f812a;
            int i7 = 0;
            while (true) {
                float[] fArr = fVarArr2[i2].f813b;
                if (i7 < fArr.length) {
                    fVarArr[i2].f813b[i7] = fArr[i7];
                    i7++;
                }
            }
        }
    }
}
