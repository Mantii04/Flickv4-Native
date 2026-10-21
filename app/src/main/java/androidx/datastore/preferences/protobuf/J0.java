package androidx.datastore.preferences.protobuf;

/* loaded from: classes.dex */
public abstract class J0 {

    /* renamed from: a, reason: collision with root package name */
    public static final I0 f5783a;

    static {
        f5783a = (H0.f5774f && H0.f5773e && !AbstractC0413e.a()) ? new I0(1) : new I0(0);
    }

    public static int a(int i2, byte[] bArr, int i7) {
        byte b7 = bArr[i2 - 1];
        int i8 = i7 - i2;
        if (i8 == 0) {
            if (b7 > -12) {
                return -1;
            }
            return b7;
        }
        if (i8 == 1) {
            return c(b7, bArr[i2]);
        }
        if (i8 == 2) {
            return d(b7, bArr[i2], bArr[i2 + 1]);
        }
        throw new AssertionError();
    }

    public static int b(String str) {
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
                                throw new Utf8$UnpairedSurrogateException(i7, length2);
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

    public static int c(int i2, int i7) {
        if (i2 > -12 || i7 > -65) {
            return -1;
        }
        return i2 ^ (i7 << 8);
    }

    public static int d(int i2, int i7, int i8) {
        if (i2 > -12 || i7 > -65 || i8 > -65) {
            return -1;
        }
        return (i2 ^ (i7 << 8)) ^ (i8 << 16);
    }

    public static boolean isValidUtf8(byte[] bArr) {
        return f5783a.i(0, bArr, bArr.length) == 0;
    }

    public static boolean isValidUtf8(byte[] bArr, int i2, int i7) {
        return f5783a.i(i2, bArr, i7) == 0;
    }
}
