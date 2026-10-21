package androidx.profileinstaller;

import A.i;
import b.c;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import l1.AbstractC1219o;
import l1.C1206b;

/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f7970a = {112, 114, 111, 0};

    /* renamed from: b, reason: collision with root package name */
    public static final byte[] f7971b = {112, 114, 109, 0};

    public static byte[] a(C1206b[] c1206bArr, byte[] bArr) {
        int i2 = 0;
        for (C1206b c1206b : c1206bArr) {
            i2 += ((((c1206b.f18090g * 2) + 7) & (-8)) / 8) + (c1206b.f18088e * 2) + b(c1206b.f18084a, c1206b.f18085b, bArr).getBytes(StandardCharsets.UTF_8).length + 16 + c1206b.f18089f;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(i2);
        if (Arrays.equals(bArr, AbstractC1219o.f18106c)) {
            for (C1206b c1206b2 : c1206bArr) {
                j(byteArrayOutputStream, c1206b2, b(c1206b2.f18084a, c1206b2.f18085b, bArr));
                l(byteArrayOutputStream, c1206b2);
                int[] iArr = c1206b2.f18091h;
                int length = iArr.length;
                int i7 = 0;
                int i8 = 0;
                while (i7 < length) {
                    int i9 = iArr[i7];
                    AbstractC1219o.g(byteArrayOutputStream, i9 - i8);
                    i7++;
                    i8 = i9;
                }
                k(byteArrayOutputStream, c1206b2);
            }
        } else {
            for (C1206b c1206b3 : c1206bArr) {
                j(byteArrayOutputStream, c1206b3, b(c1206b3.f18084a, c1206b3.f18085b, bArr));
            }
            for (C1206b c1206b4 : c1206bArr) {
                l(byteArrayOutputStream, c1206b4);
                int[] iArr2 = c1206b4.f18091h;
                int length2 = iArr2.length;
                int i10 = 0;
                int i11 = 0;
                while (i10 < length2) {
                    int i12 = iArr2[i10];
                    AbstractC1219o.g(byteArrayOutputStream, i12 - i11);
                    i10++;
                    i11 = i12;
                }
                k(byteArrayOutputStream, c1206b4);
            }
        }
        if (byteArrayOutputStream.size() == i2) {
            return byteArrayOutputStream.toByteArray();
        }
        throw new IllegalStateException("The bytes saved do not match expectation. actual=" + byteArrayOutputStream.size() + " expected=" + i2);
    }

    public static String b(String str, String str2, byte[] bArr) {
        byte[] bArr2 = AbstractC1219o.f18108e;
        boolean equals = Arrays.equals(bArr, bArr2);
        byte[] bArr3 = AbstractC1219o.f18107d;
        String str3 = (equals || Arrays.equals(bArr, bArr3)) ? ":" : "!";
        if (str.length() <= 0) {
            if ("!".equals(str3)) {
                return str2.replace(":", "!");
            }
            if (":".equals(str3)) {
                return str2.replace("!", ":");
            }
        } else {
            if (str2.equals("classes.dex")) {
                return str;
            }
            if (str2.contains("!") || str2.contains(":")) {
                if ("!".equals(str3)) {
                    return str2.replace(":", "!");
                }
                if (":".equals(str3)) {
                    return str2.replace("!", ":");
                }
            } else if (!str2.endsWith(".apk")) {
                return i.o(c.o(str), (Arrays.equals(bArr, bArr2) || Arrays.equals(bArr, bArr3)) ? ":" : "!", str2);
            }
        }
        return str2;
    }

    public static int[] c(ByteArrayInputStream byteArrayInputStream, int i2) {
        int[] iArr = new int[i2];
        int i7 = 0;
        for (int i8 = 0; i8 < i2; i8++) {
            i7 += (int) AbstractC1219o.e(byteArrayInputStream, 2);
            iArr[i8] = i7;
        }
        return iArr;
    }

    public static C1206b[] d(FileInputStream fileInputStream, byte[] bArr, byte[] bArr2, C1206b[] c1206bArr) {
        byte[] bArr3 = AbstractC1219o.f18109f;
        if (!Arrays.equals(bArr, bArr3)) {
            if (!Arrays.equals(bArr, AbstractC1219o.f18110g)) {
                throw new IllegalStateException("Unsupported meta version");
            }
            int e3 = (int) AbstractC1219o.e(fileInputStream, 2);
            byte[] d7 = AbstractC1219o.d(fileInputStream, (int) AbstractC1219o.e(fileInputStream, 4), (int) AbstractC1219o.e(fileInputStream, 4));
            if (fileInputStream.read() > 0) {
                throw new IllegalStateException("Content found after the end of file");
            }
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(d7);
            try {
                C1206b[] f3 = f(byteArrayInputStream, bArr2, e3, c1206bArr);
                byteArrayInputStream.close();
                return f3;
            } catch (Throwable th) {
                try {
                    byteArrayInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (Arrays.equals(AbstractC1219o.f18104a, bArr2)) {
            throw new IllegalStateException("Requires new Baseline Profile Metadata. Please rebuild the APK with Android Gradle Plugin 7.2 Canary 7 or higher");
        }
        if (!Arrays.equals(bArr, bArr3)) {
            throw new IllegalStateException("Unsupported meta version");
        }
        int e7 = (int) AbstractC1219o.e(fileInputStream, 1);
        byte[] d8 = AbstractC1219o.d(fileInputStream, (int) AbstractC1219o.e(fileInputStream, 4), (int) AbstractC1219o.e(fileInputStream, 4));
        if (fileInputStream.read() > 0) {
            throw new IllegalStateException("Content found after the end of file");
        }
        ByteArrayInputStream byteArrayInputStream2 = new ByteArrayInputStream(d8);
        try {
            C1206b[] e8 = e(byteArrayInputStream2, e7, c1206bArr);
            byteArrayInputStream2.close();
            return e8;
        } catch (Throwable th3) {
            try {
                byteArrayInputStream2.close();
            } catch (Throwable th4) {
                th3.addSuppressed(th4);
            }
            throw th3;
        }
    }

    public static C1206b[] e(ByteArrayInputStream byteArrayInputStream, int i2, C1206b[] c1206bArr) {
        if (byteArrayInputStream.available() == 0) {
            return new C1206b[0];
        }
        if (i2 != c1206bArr.length) {
            throw new IllegalStateException("Mismatched number of dex files found in metadata");
        }
        String[] strArr = new String[i2];
        int[] iArr = new int[i2];
        for (int i7 = 0; i7 < i2; i7++) {
            int e3 = (int) AbstractC1219o.e(byteArrayInputStream, 2);
            iArr[i7] = (int) AbstractC1219o.e(byteArrayInputStream, 2);
            strArr[i7] = new String(AbstractC1219o.c(byteArrayInputStream, e3), StandardCharsets.UTF_8);
        }
        for (int i8 = 0; i8 < i2; i8++) {
            C1206b c1206b = c1206bArr[i8];
            if (!c1206b.f18085b.equals(strArr[i8])) {
                throw new IllegalStateException("Order of dexfiles in metadata did not match baseline");
            }
            int i9 = iArr[i8];
            c1206b.f18088e = i9;
            c1206b.f18091h = c(byteArrayInputStream, i9);
        }
        return c1206bArr;
    }

    public static C1206b[] f(ByteArrayInputStream byteArrayInputStream, byte[] bArr, int i2, C1206b[] c1206bArr) {
        if (byteArrayInputStream.available() == 0) {
            return new C1206b[0];
        }
        if (i2 != c1206bArr.length) {
            throw new IllegalStateException("Mismatched number of dex files found in metadata");
        }
        for (int i7 = 0; i7 < i2; i7++) {
            AbstractC1219o.e(byteArrayInputStream, 2);
            String str = new String(AbstractC1219o.c(byteArrayInputStream, (int) AbstractC1219o.e(byteArrayInputStream, 2)), StandardCharsets.UTF_8);
            long e3 = AbstractC1219o.e(byteArrayInputStream, 4);
            int e7 = (int) AbstractC1219o.e(byteArrayInputStream, 2);
            C1206b c1206b = null;
            if (c1206bArr.length > 0) {
                int indexOf = str.indexOf("!");
                if (indexOf < 0) {
                    indexOf = str.indexOf(":");
                }
                String substring = indexOf > 0 ? str.substring(indexOf + 1) : str;
                int i8 = 0;
                while (true) {
                    if (i8 >= c1206bArr.length) {
                        break;
                    }
                    if (c1206bArr[i8].f18085b.equals(substring)) {
                        c1206b = c1206bArr[i8];
                        break;
                    }
                    i8++;
                }
            }
            if (c1206b == null) {
                throw new IllegalStateException("Missing profile key: ".concat(str));
            }
            c1206b.f18087d = e3;
            int[] c7 = c(byteArrayInputStream, e7);
            if (Arrays.equals(bArr, AbstractC1219o.f18108e)) {
                c1206b.f18088e = e7;
                c1206b.f18091h = c7;
            }
        }
        return c1206bArr;
    }

    public static C1206b[] g(FileInputStream fileInputStream, byte[] bArr, String str) {
        if (!Arrays.equals(bArr, AbstractC1219o.f18105b)) {
            throw new IllegalStateException("Unsupported version");
        }
        int e3 = (int) AbstractC1219o.e(fileInputStream, 1);
        byte[] d7 = AbstractC1219o.d(fileInputStream, (int) AbstractC1219o.e(fileInputStream, 4), (int) AbstractC1219o.e(fileInputStream, 4));
        if (fileInputStream.read() > 0) {
            throw new IllegalStateException("Content found after the end of file");
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(d7);
        try {
            C1206b[] h7 = h(byteArrayInputStream, str, e3);
            byteArrayInputStream.close();
            return h7;
        } catch (Throwable th) {
            try {
                byteArrayInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static C1206b[] h(ByteArrayInputStream byteArrayInputStream, String str, int i2) {
        TreeMap treeMap;
        if (byteArrayInputStream.available() == 0) {
            return new C1206b[0];
        }
        C1206b[] c1206bArr = new C1206b[i2];
        for (int i7 = 0; i7 < i2; i7++) {
            int e3 = (int) AbstractC1219o.e(byteArrayInputStream, 2);
            int e7 = (int) AbstractC1219o.e(byteArrayInputStream, 2);
            c1206bArr[i7] = new C1206b(str, new String(AbstractC1219o.c(byteArrayInputStream, e3), StandardCharsets.UTF_8), AbstractC1219o.e(byteArrayInputStream, 4), e7, (int) AbstractC1219o.e(byteArrayInputStream, 4), (int) AbstractC1219o.e(byteArrayInputStream, 4), new int[e7], new TreeMap());
        }
        for (int i8 = 0; i8 < i2; i8++) {
            C1206b c1206b = c1206bArr[i8];
            int available = byteArrayInputStream.available() - c1206b.f18089f;
            int i9 = 0;
            while (true) {
                int available2 = byteArrayInputStream.available();
                treeMap = c1206b.f18092i;
                if (available2 <= available) {
                    break;
                }
                i9 += (int) AbstractC1219o.e(byteArrayInputStream, 2);
                treeMap.put(Integer.valueOf(i9), 1);
                for (int e8 = (int) AbstractC1219o.e(byteArrayInputStream, 2); e8 > 0; e8--) {
                    AbstractC1219o.e(byteArrayInputStream, 2);
                    int e9 = (int) AbstractC1219o.e(byteArrayInputStream, 1);
                    if (e9 != 6 && e9 != 7) {
                        while (e9 > 0) {
                            AbstractC1219o.e(byteArrayInputStream, 1);
                            for (int e10 = (int) AbstractC1219o.e(byteArrayInputStream, 1); e10 > 0; e10--) {
                                AbstractC1219o.e(byteArrayInputStream, 2);
                            }
                            e9--;
                        }
                    }
                }
            }
            if (byteArrayInputStream.available() != available) {
                throw new IllegalStateException("Read too much data during profile line parse");
            }
            c1206b.f18091h = c(byteArrayInputStream, c1206b.f18088e);
            int i10 = c1206b.f18090g;
            BitSet valueOf = BitSet.valueOf(AbstractC1219o.c(byteArrayInputStream, (((i10 * 2) + 7) & (-8)) / 8));
            for (int i11 = 0; i11 < i10; i11++) {
                int i12 = valueOf.get(i11) ? 2 : 0;
                if (valueOf.get(i11 + i10)) {
                    i12 |= 4;
                }
                if (i12 != 0) {
                    Integer num = (Integer) treeMap.get(Integer.valueOf(i11));
                    if (num == null) {
                        num = 0;
                    }
                    treeMap.put(Integer.valueOf(i11), Integer.valueOf(i12 | num.intValue()));
                }
            }
        }
        return c1206bArr;
    }

    /* JADX WARN: Finally extract failed */
    public static boolean i(ByteArrayOutputStream byteArrayOutputStream, byte[] bArr, C1206b[] c1206bArr) {
        ArrayList arrayList;
        int length;
        byte[] bArr2 = AbstractC1219o.f18104a;
        int i2 = 0;
        if (!Arrays.equals(bArr, bArr2)) {
            byte[] bArr3 = AbstractC1219o.f18105b;
            if (Arrays.equals(bArr, bArr3)) {
                byte[] a7 = a(c1206bArr, bArr3);
                AbstractC1219o.f(byteArrayOutputStream, c1206bArr.length, 1);
                AbstractC1219o.f(byteArrayOutputStream, a7.length, 4);
                byte[] a8 = AbstractC1219o.a(a7);
                AbstractC1219o.f(byteArrayOutputStream, a8.length, 4);
                byteArrayOutputStream.write(a8);
                return true;
            }
            byte[] bArr4 = AbstractC1219o.f18107d;
            if (Arrays.equals(bArr, bArr4)) {
                AbstractC1219o.f(byteArrayOutputStream, c1206bArr.length, 1);
                for (C1206b c1206b : c1206bArr) {
                    int size = c1206b.f18092i.size() * 4;
                    String b7 = b(c1206b.f18084a, c1206b.f18085b, bArr4);
                    Charset charset = StandardCharsets.UTF_8;
                    AbstractC1219o.g(byteArrayOutputStream, b7.getBytes(charset).length);
                    AbstractC1219o.g(byteArrayOutputStream, c1206b.f18091h.length);
                    AbstractC1219o.f(byteArrayOutputStream, size, 4);
                    AbstractC1219o.f(byteArrayOutputStream, c1206b.f18086c, 4);
                    byteArrayOutputStream.write(b7.getBytes(charset));
                    Iterator it = c1206b.f18092i.keySet().iterator();
                    while (it.hasNext()) {
                        AbstractC1219o.g(byteArrayOutputStream, ((Integer) it.next()).intValue());
                        AbstractC1219o.g(byteArrayOutputStream, 0);
                    }
                    for (int i7 : c1206b.f18091h) {
                        AbstractC1219o.g(byteArrayOutputStream, i7);
                    }
                }
                return true;
            }
            byte[] bArr5 = AbstractC1219o.f18106c;
            if (Arrays.equals(bArr, bArr5)) {
                byte[] a9 = a(c1206bArr, bArr5);
                AbstractC1219o.f(byteArrayOutputStream, c1206bArr.length, 1);
                AbstractC1219o.f(byteArrayOutputStream, a9.length, 4);
                byte[] a10 = AbstractC1219o.a(a9);
                AbstractC1219o.f(byteArrayOutputStream, a10.length, 4);
                byteArrayOutputStream.write(a10);
                return true;
            }
            byte[] bArr6 = AbstractC1219o.f18108e;
            if (!Arrays.equals(bArr, bArr6)) {
                return false;
            }
            AbstractC1219o.g(byteArrayOutputStream, c1206bArr.length);
            for (C1206b c1206b2 : c1206bArr) {
                String b8 = b(c1206b2.f18084a, c1206b2.f18085b, bArr6);
                Charset charset2 = StandardCharsets.UTF_8;
                AbstractC1219o.g(byteArrayOutputStream, b8.getBytes(charset2).length);
                TreeMap treeMap = c1206b2.f18092i;
                AbstractC1219o.g(byteArrayOutputStream, treeMap.size());
                AbstractC1219o.g(byteArrayOutputStream, c1206b2.f18091h.length);
                AbstractC1219o.f(byteArrayOutputStream, c1206b2.f18086c, 4);
                byteArrayOutputStream.write(b8.getBytes(charset2));
                Iterator it2 = treeMap.keySet().iterator();
                while (it2.hasNext()) {
                    AbstractC1219o.g(byteArrayOutputStream, ((Integer) it2.next()).intValue());
                }
                for (int i8 : c1206b2.f18091h) {
                    AbstractC1219o.g(byteArrayOutputStream, i8);
                }
            }
            return true;
        }
        ArrayList arrayList2 = new ArrayList(3);
        ArrayList arrayList3 = new ArrayList(3);
        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
        try {
            AbstractC1219o.g(byteArrayOutputStream2, c1206bArr.length);
            int i9 = 2;
            int i10 = 2;
            for (C1206b c1206b3 : c1206bArr) {
                AbstractC1219o.f(byteArrayOutputStream2, c1206b3.f18086c, 4);
                AbstractC1219o.f(byteArrayOutputStream2, c1206b3.f18087d, 4);
                AbstractC1219o.f(byteArrayOutputStream2, c1206b3.f18090g, 4);
                String b9 = b(c1206b3.f18084a, c1206b3.f18085b, bArr2);
                Charset charset3 = StandardCharsets.UTF_8;
                int length2 = b9.getBytes(charset3).length;
                AbstractC1219o.g(byteArrayOutputStream2, length2);
                i10 = i10 + 14 + length2;
                byteArrayOutputStream2.write(b9.getBytes(charset3));
            }
            byte[] byteArray = byteArrayOutputStream2.toByteArray();
            if (i10 != byteArray.length) {
                throw new IllegalStateException("Expected size " + i10 + ", does not match actual size " + byteArray.length);
            }
            b bVar = new b(FileSectionType.DEX_FILES, byteArray, false);
            byteArrayOutputStream2.close();
            arrayList2.add(bVar);
            ByteArrayOutputStream byteArrayOutputStream3 = new ByteArrayOutputStream();
            int i11 = 0;
            for (int i12 = 0; i12 < c1206bArr.length; i12++) {
                try {
                    C1206b c1206b4 = c1206bArr[i12];
                    AbstractC1219o.g(byteArrayOutputStream3, i12);
                    AbstractC1219o.g(byteArrayOutputStream3, c1206b4.f18088e);
                    i11 = i11 + 4 + (c1206b4.f18088e * i9);
                    int[] iArr = c1206b4.f18091h;
                    int length3 = iArr.length;
                    int i13 = 0;
                    int i14 = 0;
                    while (i13 < length3) {
                        int i15 = iArr[i13];
                        AbstractC1219o.g(byteArrayOutputStream3, i15 - i14);
                        i13++;
                        i9 = i9;
                        i14 = i15;
                    }
                } catch (Throwable th) {
                }
            }
            byte[] byteArray2 = byteArrayOutputStream3.toByteArray();
            if (i11 != byteArray2.length) {
                throw new IllegalStateException("Expected size " + i11 + ", does not match actual size " + byteArray2.length);
            }
            b bVar2 = new b(FileSectionType.CLASSES, byteArray2, true);
            byteArrayOutputStream3.close();
            arrayList2.add(bVar2);
            byteArrayOutputStream3 = new ByteArrayOutputStream();
            int i16 = 0;
            int i17 = 0;
            while (i16 < c1206bArr.length) {
                try {
                    C1206b c1206b5 = c1206bArr[i16];
                    Iterator it3 = c1206b5.f18092i.entrySet().iterator();
                    int i18 = i2;
                    while (it3.hasNext()) {
                        i18 |= ((Integer) ((Map.Entry) it3.next()).getValue()).intValue();
                    }
                    ByteArrayOutputStream byteArrayOutputStream4 = new ByteArrayOutputStream();
                    try {
                        k(byteArrayOutputStream4, c1206b5);
                        byte[] byteArray3 = byteArrayOutputStream4.toByteArray();
                        byteArrayOutputStream4.close();
                        byteArrayOutputStream4 = new ByteArrayOutputStream();
                        try {
                            l(byteArrayOutputStream4, c1206b5);
                            byte[] byteArray4 = byteArrayOutputStream4.toByteArray();
                            byteArrayOutputStream4.close();
                            AbstractC1219o.g(byteArrayOutputStream3, i16);
                            int length4 = byteArray3.length + 2 + byteArray4.length;
                            int i19 = i17 + 6;
                            ArrayList arrayList4 = arrayList3;
                            AbstractC1219o.f(byteArrayOutputStream3, length4, 4);
                            AbstractC1219o.g(byteArrayOutputStream3, i18);
                            byteArrayOutputStream3.write(byteArray3);
                            byteArrayOutputStream3.write(byteArray4);
                            i17 = i19 + length4;
                            i16++;
                            arrayList3 = arrayList4;
                            i2 = 0;
                        } finally {
                        }
                    } finally {
                    }
                } finally {
                    try {
                        byteArrayOutputStream3.close();
                        throw th;
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
            }
            ArrayList arrayList5 = arrayList3;
            byte[] byteArray5 = byteArrayOutputStream3.toByteArray();
            if (i17 != byteArray5.length) {
                throw new IllegalStateException("Expected size " + i17 + ", does not match actual size " + byteArray5.length);
            }
            b bVar3 = new b(FileSectionType.METHODS, byteArray5, true);
            byteArrayOutputStream3.close();
            arrayList2.add(bVar3);
            long j7 = 4;
            long size2 = j7 + j7 + 4 + (arrayList2.size() * 16);
            AbstractC1219o.f(byteArrayOutputStream, arrayList2.size(), 4);
            int i20 = 0;
            while (i20 < arrayList2.size()) {
                b bVar4 = (b) arrayList2.get(i20);
                AbstractC1219o.f(byteArrayOutputStream, bVar4.f7972a.getValue(), 4);
                AbstractC1219o.f(byteArrayOutputStream, size2, 4);
                byte[] bArr7 = bVar4.f7973b;
                if (bVar4.f7974c) {
                    long length5 = bArr7.length;
                    byte[] a11 = AbstractC1219o.a(bArr7);
                    arrayList = arrayList5;
                    arrayList.add(a11);
                    AbstractC1219o.f(byteArrayOutputStream, a11.length, 4);
                    AbstractC1219o.f(byteArrayOutputStream, length5, 4);
                    length = a11.length;
                } else {
                    arrayList = arrayList5;
                    arrayList.add(bArr7);
                    AbstractC1219o.f(byteArrayOutputStream, bArr7.length, 4);
                    AbstractC1219o.f(byteArrayOutputStream, 0L, 4);
                    length = bArr7.length;
                }
                size2 += length;
                i20++;
                arrayList5 = arrayList;
            }
            ArrayList arrayList6 = arrayList5;
            for (int i21 = 0; i21 < arrayList6.size(); i21++) {
                byteArrayOutputStream.write((byte[]) arrayList6.get(i21));
            }
            return true;
        } catch (Throwable th3) {
            try {
                byteArrayOutputStream2.close();
                throw th3;
            } catch (Throwable th4) {
                th3.addSuppressed(th4);
                throw th3;
            }
        }
    }

    public static void j(ByteArrayOutputStream byteArrayOutputStream, C1206b c1206b, String str) {
        Charset charset = StandardCharsets.UTF_8;
        AbstractC1219o.g(byteArrayOutputStream, str.getBytes(charset).length);
        AbstractC1219o.g(byteArrayOutputStream, c1206b.f18088e);
        AbstractC1219o.f(byteArrayOutputStream, c1206b.f18089f, 4);
        AbstractC1219o.f(byteArrayOutputStream, c1206b.f18086c, 4);
        AbstractC1219o.f(byteArrayOutputStream, c1206b.f18090g, 4);
        byteArrayOutputStream.write(str.getBytes(charset));
    }

    public static void k(ByteArrayOutputStream byteArrayOutputStream, C1206b c1206b) {
        byte[] bArr = new byte[(((c1206b.f18090g * 2) + 7) & (-8)) / 8];
        for (Map.Entry entry : c1206b.f18092i.entrySet()) {
            int intValue = ((Integer) entry.getKey()).intValue();
            int intValue2 = ((Integer) entry.getValue()).intValue();
            if ((intValue2 & 2) != 0) {
                int i2 = intValue / 8;
                bArr[i2] = (byte) (bArr[i2] | (1 << (intValue % 8)));
            }
            if ((intValue2 & 4) != 0) {
                int i7 = intValue + c1206b.f18090g;
                int i8 = i7 / 8;
                bArr[i8] = (byte) ((1 << (i7 % 8)) | bArr[i8]);
            }
        }
        byteArrayOutputStream.write(bArr);
    }

    public static void l(ByteArrayOutputStream byteArrayOutputStream, C1206b c1206b) {
        int i2 = 0;
        for (Map.Entry entry : c1206b.f18092i.entrySet()) {
            int intValue = ((Integer) entry.getKey()).intValue();
            if ((((Integer) entry.getValue()).intValue() & 1) != 0) {
                AbstractC1219o.g(byteArrayOutputStream, intValue - i2);
                AbstractC1219o.g(byteArrayOutputStream, 0);
                i2 = intValue;
            }
        }
    }
}
