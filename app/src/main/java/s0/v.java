package s0;

import Q3.C0248s;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.CodecSpecificDataUtil;
import com.google.common.collect.ImmutableList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public abstract class v {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f19984a = {0, 0, 0, 1};

    /* renamed from: b, reason: collision with root package name */
    public static final float[] f19985b = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 2.1818182f, 1.8181819f, 2.909091f, 2.4242425f, 1.6363636f, 1.3636364f, 1.939394f, 1.6161616f, 1.3333334f, 1.5f, 2.0f};

    /* renamed from: c, reason: collision with root package name */
    public static final Object f19986c = new Object();

    /* renamed from: d, reason: collision with root package name */
    public static int[] f19987d = new int[10];

    public static String a(Format format) {
        String str;
        if (Objects.equals(format.sampleMimeType, MimeTypes.VIDEO_DOLBY_VISION) && (str = format.codecs) != null) {
            if (str.startsWith("dva1") || format.codecs.startsWith("dvav")) {
                return MimeTypes.VIDEO_H264;
            }
            if (format.codecs.startsWith("dvh1") || format.codecs.startsWith("dvhe")) {
                return MimeTypes.VIDEO_H265;
            }
        }
        return format.sampleMimeType;
    }

    public static C1614j b(y yVar) {
        yVar.skipBit();
        return new C1614j(yVar.readBits(6), yVar.readBits(6), yVar.readBits(3) - 1);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0076  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static s0.C1615k c(s0.y r19, boolean r20, int r21, s0.C1615k r22) {
        /*
            r0 = r19
            r1 = r21
            r2 = r22
            r3 = 6
            int[] r4 = new int[r3]
            r5 = 2
            r6 = 8
            r7 = 0
            if (r20 == 0) goto L42
            int r2 = r0.readBits(r5)
            boolean r8 = r0.readBit()
            r9 = 5
            int r9 = r0.readBits(r9)
            r10 = r7
            r11 = r10
        L1e:
            r12 = 32
            if (r10 >= r12) goto L2e
            boolean r12 = r0.readBit()
            if (r12 == 0) goto L2b
            r12 = 1
            int r12 = r12 << r10
            r11 = r11 | r12
        L2b:
            int r10 = r10 + 1
            goto L1e
        L2e:
            r10 = r7
        L2f:
            if (r10 >= r3) goto L3a
            int r12 = r0.readBits(r6)
            r4[r10] = r12
            int r10 = r10 + 1
            goto L2f
        L3a:
            r13 = r2
        L3b:
            r17 = r4
            r14 = r8
            r15 = r9
            r16 = r11
            goto L57
        L42:
            if (r2 == 0) goto L50
            int r3 = r2.f19924a
            boolean r8 = r2.f19925b
            int r9 = r2.f19926c
            int r11 = r2.f19927d
            int[] r4 = r2.f19928e
            r13 = r3
            goto L3b
        L50:
            r17 = r4
            r13 = r7
            r14 = r13
            r15 = r14
            r16 = r15
        L57:
            int r18 = r0.readBits(r6)
            r2 = r7
        L5c:
            if (r7 >= r1) goto L71
            boolean r3 = r0.readBit()
            if (r3 == 0) goto L66
            int r2 = r2 + 88
        L66:
            boolean r3 = r0.readBit()
            if (r3 == 0) goto L6e
            int r2 = r2 + 8
        L6e:
            int r7 = r7 + 1
            goto L5c
        L71:
            r0.skipBits(r2)
            if (r1 <= 0) goto L7b
            int r6 = r6 - r1
            int r6 = r6 * r5
            r0.skipBits(r6)
        L7b:
            s0.k r12 = new s0.k
            r12.<init>(r13, r14, r15, r16, r17, r18)
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: s0.v.c(s0.y, boolean, int, s0.k):s0.k");
    }

    public static void clearPrefixFlags(boolean[] zArr) {
        zArr[0] = false;
        zArr[1] = false;
        zArr[2] = false;
    }

    public static void d(y yVar) {
        int readUnsignedExpGolombCodedInt = yVar.readUnsignedExpGolombCodedInt() + 1;
        yVar.skipBits(8);
        for (int i2 = 0; i2 < readUnsignedExpGolombCodedInt; i2++) {
            yVar.readUnsignedExpGolombCodedInt();
            yVar.readUnsignedExpGolombCodedInt();
            yVar.skipBit();
        }
        yVar.skipBits(20);
    }

    public static int findNalUnit(byte[] bArr, int i2, int i7, boolean[] zArr) {
        int i8 = i7 - i2;
        P3.v.checkState(i8 >= 0);
        if (i8 == 0) {
            return i7;
        }
        if (zArr[0]) {
            clearPrefixFlags(zArr);
            return i2 - 3;
        }
        if (i8 > 1 && zArr[1] && bArr[i2] == 1) {
            clearPrefixFlags(zArr);
            return i2 - 2;
        }
        if (i8 > 2 && zArr[2] && bArr[i2] == 0 && bArr[i2 + 1] == 1) {
            clearPrefixFlags(zArr);
            return i2 - 1;
        }
        int i9 = i7 - 1;
        int i10 = i2 + 2;
        while (i10 < i9) {
            byte b7 = bArr[i10];
            if ((b7 & 254) == 0) {
                int i11 = i10 - 2;
                if (bArr[i11] == 0 && bArr[i10 - 1] == 0 && b7 == 1) {
                    clearPrefixFlags(zArr);
                    return i11;
                }
                i10 -= 2;
            }
            i10 += 3;
        }
        zArr[0] = i8 <= 2 ? !(i8 != 2 ? !(zArr[1] && bArr[i9] == 1) : !(zArr[2] && bArr[i7 + (-2)] == 0 && bArr[i9] == 1)) : bArr[i7 + (-3)] == 0 && bArr[i7 + (-2)] == 0 && bArr[i9] == 1;
        zArr[1] = i8 <= 1 ? zArr[2] && bArr[i9] == 0 : bArr[i7 + (-2)] == 0 && bArr[i9] == 0;
        zArr[2] = bArr[i9] == 0;
        return i7;
    }

    public static String getH265BaseLayerCodecsString(List<byte[]> list) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            byte[] bArr = list.get(i2);
            int length = bArr.length;
            if (length > 3) {
                boolean[] zArr = new boolean[3];
                C0248s builder = ImmutableList.builder();
                int i7 = 0;
                while (i7 < bArr.length) {
                    int findNalUnit = findNalUnit(bArr, i7, bArr.length, zArr);
                    if (findNalUnit != bArr.length) {
                        builder.add((Object) Integer.valueOf(findNalUnit));
                    }
                    i7 = findNalUnit + 3;
                }
                ImmutableList<Object> build = builder.build();
                for (int i8 = 0; i8 < build.size(); i8++) {
                    if (((Integer) build.get(i8)).intValue() + 3 < length) {
                        y yVar = new y(bArr, ((Integer) build.get(i8)).intValue() + 3, length);
                        C1614j b7 = b(yVar);
                        if (b7.f19921a == 33 && b7.f19922b == 0) {
                            yVar.skipBits(4);
                            int readBits = yVar.readBits(3);
                            yVar.skipBit();
                            C1615k c7 = c(yVar, true, readBits, null);
                            return CodecSpecificDataUtil.buildHevcCodecString(c7.f19924a, c7.f19925b, c7.f19926c, c7.f19927d, c7.f19928e, c7.f19929f);
                        }
                    }
                }
            }
        }
        return null;
    }

    public static int getH265NalUnitType(byte[] bArr, int i2) {
        return (bArr[i2 + 3] & 126) >> 1;
    }

    public static int getNalUnitType(byte[] bArr, int i2) {
        return bArr[i2 + 3] & 31;
    }

    public static boolean isDependedOn(byte[] bArr, int i2, int i7, Format format) {
        if (Objects.equals(format.sampleMimeType, MimeTypes.VIDEO_H264)) {
            return isH264NalUnitDependedOn(bArr[i2]);
        }
        if (Objects.equals(format.sampleMimeType, MimeTypes.VIDEO_H265)) {
            C1614j b7 = b(new y(bArr, i2, i7 + i2));
            int i8 = b7.f19921a;
            if (i8 == 35) {
                return false;
            }
            if (i8 <= 14 && i8 % 2 == 0) {
                if (b7.f19923c == format.maxSubLayers - 1) {
                    return false;
                }
            }
        }
        return true;
    }

    public static boolean isH264NalUnitDependedOn(byte b7) {
        if (((b7 & 96) >> 5) != 0) {
            return true;
        }
        int i2 = b7 & 31;
        return (i2 == 1 || i2 == 9 || i2 == 14) ? false : true;
    }

    public static boolean isNalUnitSei(Format format, byte b7) {
        String a7 = a(format);
        return (Objects.equals(a7, MimeTypes.VIDEO_H264) && (b7 & 31) == 6) || (Objects.equals(a7, MimeTypes.VIDEO_H265) && ((b7 & 126) >> 1) == 39);
    }

    public static int numberOfBytesInNalUnitHeader(Format format) {
        String a7 = a(format);
        if (Objects.equals(a7, MimeTypes.VIDEO_H264)) {
            return 1;
        }
        return Objects.equals(a7, MimeTypes.VIDEO_H265) ? 2 : 0;
    }

    public static C1619o parseH265Sei3dRefDisplayInfo(byte[] bArr, int i2, int i7) {
        byte b7;
        int i8 = i2 + 2;
        int i9 = i7 - 1;
        while (true) {
            b7 = bArr[i9];
            if (b7 != 0 || i9 <= i8) {
                break;
            }
            i9--;
        }
        if (b7 != 0 && i9 > i8) {
            y yVar = new y(bArr, i8, i9 + 1);
            while (yVar.canReadBits(16)) {
                int readBits = yVar.readBits(8);
                int i10 = 0;
                while (readBits == 255) {
                    i10 += 255;
                    readBits = yVar.readBits(8);
                }
                int i11 = i10 + readBits;
                int readBits2 = yVar.readBits(8);
                int i12 = 0;
                while (readBits2 == 255) {
                    i12 += 255;
                    readBits2 = yVar.readBits(8);
                }
                int i13 = i12 + readBits2;
                if (i13 == 0 || !yVar.canReadBits(i13)) {
                    break;
                }
                if (i11 == 176) {
                    int readUnsignedExpGolombCodedInt = yVar.readUnsignedExpGolombCodedInt();
                    boolean readBit = yVar.readBit();
                    int readUnsignedExpGolombCodedInt2 = readBit ? yVar.readUnsignedExpGolombCodedInt() : 0;
                    int readUnsignedExpGolombCodedInt3 = yVar.readUnsignedExpGolombCodedInt();
                    int i14 = -1;
                    int i15 = -1;
                    int i16 = -1;
                    int i17 = -1;
                    int i18 = -1;
                    int i19 = -1;
                    for (int i20 = 0; i20 <= readUnsignedExpGolombCodedInt3; i20++) {
                        i14 = yVar.readUnsignedExpGolombCodedInt();
                        i15 = yVar.readUnsignedExpGolombCodedInt();
                        i16 = yVar.readBits(6);
                        if (i16 == 63) {
                            return null;
                        }
                        i17 = yVar.readBits(i16 == 0 ? Math.max(0, readUnsignedExpGolombCodedInt - 30) : Math.max(0, (i16 + readUnsignedExpGolombCodedInt) - 31));
                        if (readBit) {
                            int readBits3 = yVar.readBits(6);
                            if (readBits3 == 63) {
                                return null;
                            }
                            i18 = readBits3;
                            i19 = yVar.readBits(readBits3 == 0 ? Math.max(0, readUnsignedExpGolombCodedInt2 - 30) : Math.max(0, (readBits3 + readUnsignedExpGolombCodedInt2) - 31));
                        }
                        if (yVar.readBit()) {
                            yVar.skipBits(10);
                        }
                    }
                    return new C1619o(readUnsignedExpGolombCodedInt, readUnsignedExpGolombCodedInt2, readUnsignedExpGolombCodedInt3 + 1, i14, i15, i16, i17, i18, i19);
                }
                yVar.skipBits(i13 * 8);
            }
        }
        return null;
    }

    public static C1620p parseH265SpsNalUnit(byte[] bArr, int i2, int i7, C1623s c1623s) {
        return parseH265SpsNalUnitPayload(bArr, i2 + 2, i7, b(new y(bArr, i2, i7)), c1623s);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0318  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x0333  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x03e8  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:242:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01c0  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01df  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static s0.C1620p parseH265SpsNalUnitPayload(byte[] r35, int r36, int r37, s0.C1614j r38, s0.C1623s r39) {
        /*
            Method dump skipped, instructions count: 1027
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: s0.v.parseH265SpsNalUnitPayload(byte[], int, int, s0.j, s0.s):s0.p");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0120  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static s0.C1623s parseH265VpsNalUnit(byte[] r37, int r38, int r39) {
        /*
            Method dump skipped, instructions count: 2175
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: s0.v.parseH265VpsNalUnit(byte[], int, int):s0.s");
    }

    public static C1624t parsePpsNalUnit(byte[] bArr, int i2, int i7) {
        return parsePpsNalUnitPayload(bArr, i2 + 1, i7);
    }

    public static C1624t parsePpsNalUnitPayload(byte[] bArr, int i2, int i7) {
        y yVar = new y(bArr, i2, i7);
        int readUnsignedExpGolombCodedInt = yVar.readUnsignedExpGolombCodedInt();
        int readUnsignedExpGolombCodedInt2 = yVar.readUnsignedExpGolombCodedInt();
        yVar.skipBit();
        return new C1624t(readUnsignedExpGolombCodedInt, readUnsignedExpGolombCodedInt2, yVar.readBit());
    }

    public static C1625u parseSpsNalUnit(byte[] bArr, int i2, int i7) {
        return parseSpsNalUnitPayload(bArr, i2 + 1, i7);
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0252  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0181  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01fd  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0209  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0214  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x021d  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0230  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static s0.C1625u parseSpsNalUnitPayload(byte[] r32, int r33, int r34) {
        /*
            Method dump skipped, instructions count: 622
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: s0.v.parseSpsNalUnitPayload(byte[], int, int):s0.u");
    }

    public static int unescapeStream(byte[] bArr, int i2) {
        int i7;
        synchronized (f19986c) {
            int i8 = 0;
            int i9 = 0;
            while (i8 < i2) {
                while (true) {
                    if (i8 >= i2 - 2) {
                        i8 = i2;
                        break;
                    }
                    try {
                        if (bArr[i8] == 0 && bArr[i8 + 1] == 0 && bArr[i8 + 2] == 3) {
                            break;
                        }
                        i8++;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (i8 < i2) {
                    int[] iArr = f19987d;
                    if (iArr.length <= i9) {
                        f19987d = Arrays.copyOf(iArr, iArr.length * 2);
                    }
                    f19987d[i9] = i8;
                    i8 += 3;
                    i9++;
                }
            }
            i7 = i2 - i9;
            int i10 = 0;
            int i11 = 0;
            for (int i12 = 0; i12 < i9; i12++) {
                int i13 = f19987d[i12] - i11;
                System.arraycopy(bArr, i11, bArr, i10, i13);
                int i14 = i10 + i13;
                int i15 = i14 + 1;
                bArr[i14] = 0;
                i10 = i14 + 2;
                bArr[i15] = 0;
                i11 += i13 + 3;
            }
            System.arraycopy(bArr, i11, bArr, i10, i7 - i10);
        }
        return i7;
    }
}
