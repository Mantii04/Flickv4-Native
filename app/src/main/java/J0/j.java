package J0;

import P3.AbstractC0226a;
import Q3.C0248s;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import com.google.common.collect.ImmutableList;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;

/* loaded from: classes.dex */
public final class j extends E0.d {

    /* renamed from: b, reason: collision with root package name */
    public static final g f1461b = new g(0);

    /* renamed from: a, reason: collision with root package name */
    public final h f1462a;

    public j() {
        this(null);
    }

    public static a a(ParsableByteArray parsableByteArray, int i2, int i7) {
        int s6;
        String concat;
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        Charset p6 = p(readUnsignedByte);
        int i8 = i2 - 1;
        byte[] bArr = new byte[i8];
        parsableByteArray.readBytes(bArr, 0, i8);
        if (i7 == 2) {
            concat = "image/" + AbstractC0226a.toLowerCase(new String(bArr, 0, 3, StandardCharsets.ISO_8859_1));
            if ("image/jpg".equals(concat)) {
                concat = MimeTypes.IMAGE_JPEG;
            }
            s6 = 2;
        } else {
            s6 = s(0, bArr);
            String lowerCase = AbstractC0226a.toLowerCase(new String(bArr, 0, s6, StandardCharsets.ISO_8859_1));
            concat = lowerCase.indexOf(47) == -1 ? "image/".concat(lowerCase) : lowerCase;
        }
        int i9 = bArr[s6 + 1] & 255;
        int i10 = s6 + 2;
        int r6 = r(i10, bArr, readUnsignedByte);
        String str = new String(bArr, i10, r6 - i10, p6);
        int o6 = o(readUnsignedByte) + r6;
        return new a(concat, str, i9, i8 <= o6 ? Util.EMPTY_BYTE_ARRAY : Arrays.copyOfRange(bArr, o6, i8));
    }

    public static c b(ParsableByteArray parsableByteArray, int i2, int i7, boolean z6, int i8, h hVar) {
        int position = parsableByteArray.getPosition();
        int s6 = s(position, parsableByteArray.getData());
        String str = new String(parsableByteArray.getData(), position, s6 - position, StandardCharsets.ISO_8859_1);
        parsableByteArray.setPosition(s6 + 1);
        int readInt = parsableByteArray.readInt();
        int readInt2 = parsableByteArray.readInt();
        long readUnsignedInt = parsableByteArray.readUnsignedInt();
        if (readUnsignedInt == 4294967295L) {
            readUnsignedInt = -1;
        }
        long readUnsignedInt2 = parsableByteArray.readUnsignedInt();
        long j7 = readUnsignedInt2 == 4294967295L ? -1L : readUnsignedInt2;
        ArrayList arrayList = new ArrayList();
        int i9 = position + i2;
        while (parsableByteArray.getPosition() < i9) {
            k e3 = e(i7, parsableByteArray, z6, i8, hVar);
            if (e3 != null) {
                arrayList.add(e3);
            }
        }
        return new c(str, readInt, readInt2, readUnsignedInt, j7, (k[]) arrayList.toArray(new k[0]));
    }

    public static d c(ParsableByteArray parsableByteArray, int i2, int i7, boolean z6, int i8, h hVar) {
        int position = parsableByteArray.getPosition();
        int s6 = s(position, parsableByteArray.getData());
        String str = new String(parsableByteArray.getData(), position, s6 - position, StandardCharsets.ISO_8859_1);
        parsableByteArray.setPosition(s6 + 1);
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        boolean z7 = (readUnsignedByte & 2) != 0;
        boolean z8 = (readUnsignedByte & 1) != 0;
        int readUnsignedByte2 = parsableByteArray.readUnsignedByte();
        String[] strArr = new String[readUnsignedByte2];
        for (int i9 = 0; i9 < readUnsignedByte2; i9++) {
            int position2 = parsableByteArray.getPosition();
            int s7 = s(position2, parsableByteArray.getData());
            strArr[i9] = new String(parsableByteArray.getData(), position2, s7 - position2, StandardCharsets.ISO_8859_1);
            parsableByteArray.setPosition(s7 + 1);
        }
        ArrayList arrayList = new ArrayList();
        int i10 = position + i2;
        while (parsableByteArray.getPosition() < i10) {
            k e3 = e(i7, parsableByteArray, z6, i8, hVar);
            if (e3 != null) {
                arrayList.add(e3);
            }
        }
        return new d(str, z7, z8, strArr, (k[]) arrayList.toArray(new k[0]));
    }

    public static e d(int i2, ParsableByteArray parsableByteArray) {
        if (i2 < 4) {
            return null;
        }
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        Charset p6 = p(readUnsignedByte);
        byte[] bArr = new byte[3];
        parsableByteArray.readBytes(bArr, 0, 3);
        String str = new String(bArr, 0, 3);
        int i7 = i2 - 4;
        byte[] bArr2 = new byte[i7];
        parsableByteArray.readBytes(bArr2, 0, i7);
        int r6 = r(0, bArr2, readUnsignedByte);
        String str2 = new String(bArr2, 0, r6, p6);
        int o6 = o(readUnsignedByte) + r6;
        return new e(str, str2, i(bArr2, o6, r(o6, bArr2, readUnsignedByte), p6));
    }

    /* JADX WARN: Code restructure failed: missing block: B:157:0x01b0, code lost:
    
        if (r5 == 67) goto L144;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:63:0x024f  */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2, types: [J0.k] */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v2, types: [int] */
    /* JADX WARN: Type inference failed for: r1v20, types: [androidx.media3.common.util.ParsableByteArray] */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v23 */
    /* JADX WARN: Type inference failed for: r1v27 */
    /* JADX WARN: Type inference failed for: r1v28 */
    /* JADX WARN: Type inference failed for: r1v29 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static J0.k e(int r19, androidx.media3.common.util.ParsableByteArray r20, boolean r21, int r22, J0.h r23) {
        /*
            Method dump skipped, instructions count: 630
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: J0.j.e(int, androidx.media3.common.util.ParsableByteArray, boolean, int, J0.h):J0.k");
    }

    public static f f(int i2, ParsableByteArray parsableByteArray) {
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        Charset p6 = p(readUnsignedByte);
        int i7 = i2 - 1;
        byte[] bArr = new byte[i7];
        parsableByteArray.readBytes(bArr, 0, i7);
        int s6 = s(0, bArr);
        String normalizeMimeType = MimeTypes.normalizeMimeType(new String(bArr, 0, s6, StandardCharsets.ISO_8859_1));
        int i8 = s6 + 1;
        int r6 = r(i8, bArr, readUnsignedByte);
        String i9 = i(bArr, i8, r6, p6);
        int o6 = o(readUnsignedByte) + r6;
        int r7 = r(o6, bArr, readUnsignedByte);
        String i10 = i(bArr, o6, r7, p6);
        int o7 = o(readUnsignedByte) + r7;
        return new f(normalizeMimeType, i9, i10, i7 <= o7 ? Util.EMPTY_BYTE_ARRAY : Arrays.copyOfRange(bArr, o7, i7));
    }

    public static n g(int i2, ParsableByteArray parsableByteArray) {
        int readUnsignedShort = parsableByteArray.readUnsignedShort();
        int readUnsignedInt24 = parsableByteArray.readUnsignedInt24();
        int readUnsignedInt242 = parsableByteArray.readUnsignedInt24();
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        int readUnsignedByte2 = parsableByteArray.readUnsignedByte();
        ParsableBitArray parsableBitArray = new ParsableBitArray();
        parsableBitArray.reset(parsableByteArray);
        int i7 = ((i2 - 10) * 8) / (readUnsignedByte + readUnsignedByte2);
        int[] iArr = new int[i7];
        int[] iArr2 = new int[i7];
        for (int i8 = 0; i8 < i7; i8++) {
            int readBits = parsableBitArray.readBits(readUnsignedByte);
            int readBits2 = parsableBitArray.readBits(readUnsignedByte2);
            iArr[i8] = readBits;
            iArr2[i8] = readBits2;
        }
        return new n(readUnsignedShort, readUnsignedInt24, readUnsignedInt242, iArr, iArr2);
    }

    public static o h(int i2, ParsableByteArray parsableByteArray) {
        byte[] bArr = new byte[i2];
        parsableByteArray.readBytes(bArr, 0, i2);
        int s6 = s(0, bArr);
        String str = new String(bArr, 0, s6, StandardCharsets.ISO_8859_1);
        int i7 = s6 + 1;
        return new o(str, i2 <= i7 ? Util.EMPTY_BYTE_ARRAY : Arrays.copyOfRange(bArr, i7, i2));
    }

    public static String i(byte[] bArr, int i2, int i7, Charset charset) {
        return (i7 <= i2 || i7 > bArr.length) ? "" : new String(bArr, i2, i7 - i2, charset);
    }

    public static p j(ParsableByteArray parsableByteArray, int i2, String str) {
        if (i2 < 1) {
            return null;
        }
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        int i7 = i2 - 1;
        byte[] bArr = new byte[i7];
        parsableByteArray.readBytes(bArr, 0, i7);
        return new p(str, null, k(readUnsignedByte, bArr, 0));
    }

    public static ImmutableList k(int i2, byte[] bArr, int i7) {
        if (i7 >= bArr.length) {
            return ImmutableList.of("");
        }
        C0248s builder = ImmutableList.builder();
        int r6 = r(i7, bArr, i2);
        while (i7 < r6) {
            builder.add((Object) new String(bArr, i7, r6 - i7, p(i2)));
            i7 = o(i2) + r6;
            r6 = r(i7, bArr, i2);
        }
        ImmutableList<Object> build = builder.build();
        return build.isEmpty() ? ImmutableList.of("") : build;
    }

    public static p l(int i2, ParsableByteArray parsableByteArray) {
        if (i2 < 1) {
            return null;
        }
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        int i7 = i2 - 1;
        byte[] bArr = new byte[i7];
        parsableByteArray.readBytes(bArr, 0, i7);
        int r6 = r(0, bArr, readUnsignedByte);
        return new p("TXXX", new String(bArr, 0, r6, p(readUnsignedByte)), k(readUnsignedByte, bArr, o(readUnsignedByte) + r6));
    }

    public static q m(ParsableByteArray parsableByteArray, int i2, String str) {
        byte[] bArr = new byte[i2];
        parsableByteArray.readBytes(bArr, 0, i2);
        return new q(str, null, new String(bArr, 0, s(0, bArr), StandardCharsets.ISO_8859_1));
    }

    public static q n(int i2, ParsableByteArray parsableByteArray) {
        if (i2 < 1) {
            return null;
        }
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        int i7 = i2 - 1;
        byte[] bArr = new byte[i7];
        parsableByteArray.readBytes(bArr, 0, i7);
        int r6 = r(0, bArr, readUnsignedByte);
        String str = new String(bArr, 0, r6, p(readUnsignedByte));
        int o6 = o(readUnsignedByte) + r6;
        return new q("WXXX", str, i(bArr, o6, s(o6, bArr), StandardCharsets.ISO_8859_1));
    }

    public static int o(int i2) {
        return (i2 == 0 || i2 == 3) ? 1 : 2;
    }

    public static Charset p(int i2) {
        return i2 != 1 ? i2 != 2 ? i2 != 3 ? StandardCharsets.ISO_8859_1 : StandardCharsets.UTF_8 : StandardCharsets.UTF_16BE : StandardCharsets.UTF_16;
    }

    public static String q(int i2, int i7, int i8, int i9, int i10) {
        return i2 == 2 ? String.format(Locale.US, "%c%c%c", Integer.valueOf(i7), Integer.valueOf(i8), Integer.valueOf(i9)) : String.format(Locale.US, "%c%c%c%c", Integer.valueOf(i7), Integer.valueOf(i8), Integer.valueOf(i9), Integer.valueOf(i10));
    }

    public static int r(int i2, byte[] bArr, int i7) {
        int s6 = s(i2, bArr);
        if (i7 == 0 || i7 == 3) {
            return s6;
        }
        while (s6 < bArr.length - 1) {
            if ((s6 - i2) % 2 == 0 && bArr[s6 + 1] == 0) {
                return s6;
            }
            s6 = s(s6 + 1, bArr);
        }
        return bArr.length;
    }

    public static int s(int i2, byte[] bArr) {
        while (i2 < bArr.length) {
            if (bArr[i2] == 0) {
                return i2;
            }
            i2++;
        }
        return bArr.length;
    }

    public static int t(int i2, ParsableByteArray parsableByteArray) {
        byte[] data = parsableByteArray.getData();
        int position = parsableByteArray.getPosition();
        int i7 = position;
        while (true) {
            int i8 = i7 + 1;
            if (i8 >= position + i2) {
                return i2;
            }
            if ((data[i7] & 255) == 255 && data[i8] == 0) {
                System.arraycopy(data, i7 + 2, data, i8, (i2 - (i7 - position)) - 2);
                i2--;
            }
            i7 = i8;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0079, code lost:
    
        if ((r10 & 1) != 0) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x007c, code lost:
    
        r4 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0089, code lost:
    
        if ((r10 & 128) != 0) goto L45;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean u(androidx.media3.common.util.ParsableByteArray r18, int r19, int r20, boolean r21) {
        /*
            r1 = r18
            r0 = r19
            int r2 = r1.getPosition()
        L8:
            int r3 = r1.bytesLeft()     // Catch: java.lang.Throwable -> L22
            r4 = 1
            r5 = r20
            if (r3 < r5) goto Lae
            r3 = 3
            r6 = 0
            if (r0 < r3) goto L25
            int r7 = r1.readInt()     // Catch: java.lang.Throwable -> L22
            long r8 = r1.readUnsignedInt()     // Catch: java.lang.Throwable -> L22
            int r10 = r1.readUnsignedShort()     // Catch: java.lang.Throwable -> L22
            goto L2f
        L22:
            r0 = move-exception
            goto Lb2
        L25:
            int r7 = r1.readUnsignedInt24()     // Catch: java.lang.Throwable -> L22
            int r8 = r1.readUnsignedInt24()     // Catch: java.lang.Throwable -> L22
            long r8 = (long) r8
            r10 = r6
        L2f:
            r11 = 0
            if (r7 != 0) goto L3d
            int r7 = (r8 > r11 ? 1 : (r8 == r11 ? 0 : -1))
            if (r7 != 0) goto L3d
            if (r10 != 0) goto L3d
            r1.setPosition(r2)
            return r4
        L3d:
            r7 = 4
            if (r0 != r7) goto L6e
            if (r21 != 0) goto L6e
            r13 = 8421504(0x808080, double:4.160776E-317)
            long r13 = r13 & r8
            int r11 = (r13 > r11 ? 1 : (r13 == r11 ? 0 : -1))
            if (r11 == 0) goto L4e
            r1.setPosition(r2)
            return r6
        L4e:
            r11 = 255(0xff, double:1.26E-321)
            long r13 = r8 & r11
            r15 = 8
            long r15 = r8 >> r15
            long r15 = r15 & r11
            r17 = 7
            long r15 = r15 << r17
            long r13 = r13 | r15
            r15 = 16
            long r15 = r8 >> r15
            long r15 = r15 & r11
            r17 = 14
            long r15 = r15 << r17
            long r13 = r13 | r15
            r15 = 24
            long r8 = r8 >> r15
            long r8 = r8 & r11
            r11 = 21
            long r8 = r8 << r11
            long r8 = r8 | r13
        L6e:
            if (r0 != r7) goto L7e
            r3 = r10 & 64
            if (r3 == 0) goto L76
            r3 = r4
            goto L77
        L76:
            r3 = r6
        L77:
            r7 = r10 & 1
            if (r7 == 0) goto L7c
            goto L8e
        L7c:
            r4 = r6
            goto L8e
        L7e:
            if (r0 != r3) goto L8c
            r3 = r10 & 32
            if (r3 == 0) goto L86
            r3 = r4
            goto L87
        L86:
            r3 = r6
        L87:
            r7 = r10 & 128(0x80, float:1.794E-43)
            if (r7 == 0) goto L7c
            goto L8e
        L8c:
            r3 = r6
            r4 = r3
        L8e:
            if (r4 == 0) goto L92
            int r3 = r3 + 4
        L92:
            long r3 = (long) r3
            int r3 = (r8 > r3 ? 1 : (r8 == r3 ? 0 : -1))
            if (r3 >= 0) goto L9b
            r1.setPosition(r2)
            return r6
        L9b:
            int r3 = r1.bytesLeft()     // Catch: java.lang.Throwable -> L22
            long r3 = (long) r3
            int r3 = (r3 > r8 ? 1 : (r3 == r8 ? 0 : -1))
            if (r3 >= 0) goto La8
            r1.setPosition(r2)
            return r6
        La8:
            int r3 = (int) r8
            r1.skipBytes(r3)     // Catch: java.lang.Throwable -> L22
            goto L8
        Lae:
            r1.setPosition(r2)
            return r4
        Lb2:
            r1.setPosition(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: J0.j.u(androidx.media3.common.util.ParsableByteArray, int, int, boolean):boolean");
    }

    @Override // E0.d
    public Metadata decode(E0.b bVar, ByteBuffer byteBuffer) {
        return decode(byteBuffer.array(), byteBuffer.limit());
    }

    public j(h hVar) {
        this.f1462a = hVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x009b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x009c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public androidx.media3.common.Metadata decode(byte[] r13, int r14) {
        /*
            Method dump skipped, instructions count: 225
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: J0.j.decode(byte[], int):androidx.media3.common.Metadata");
    }
}
