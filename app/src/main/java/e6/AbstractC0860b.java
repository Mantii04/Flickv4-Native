package e6;

import okio.ByteString;

/* renamed from: e6.b, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0860b {

    /* renamed from: a, reason: collision with root package name */
    public static final C0867i f14004a = new C0867i();

    /* renamed from: b, reason: collision with root package name */
    public static final int f14005b = -1234567890;

    public static final boolean arrayRangeEquals(byte[] a7, int i2, byte[] b7, int i7, int i8) {
        kotlin.jvm.internal.j.checkNotNullParameter(a7, "a");
        kotlin.jvm.internal.j.checkNotNullParameter(b7, "b");
        for (int i9 = 0; i9 < i8; i9++) {
            if (a7[i9 + i2] != b7[i9 + i7]) {
                return false;
            }
        }
        return true;
    }

    public static final void checkOffsetAndCount(long j7, long j8, long j9) {
        if ((j8 | j9) < 0 || j8 > j7 || j7 - j8 < j9) {
            StringBuilder r6 = A.i.r(j7, "size=", " offset=");
            r6.append(j8);
            r6.append(" byteCount=");
            r6.append(j9);
            throw new ArrayIndexOutOfBoundsException(r6.toString());
        }
    }

    public static final int getDEFAULT__ByteString_size() {
        return f14005b;
    }

    public static final C0867i getDEFAULT__new_UnsafeCursor() {
        return f14004a;
    }

    public static final C0867i resolveDefaultParameter(C0867i unsafeCursor) {
        kotlin.jvm.internal.j.checkNotNullParameter(unsafeCursor, "unsafeCursor");
        return unsafeCursor == f14004a ? new C0867i() : unsafeCursor;
    }

    public static final short reverseBytes(short s6) {
        return (short) (((s6 & 255) << 8) | ((65280 & s6) >>> 8));
    }

    public static final String toHexString(byte b7) {
        return P5.p.concatToString(new char[]{f6.b.getHEX_DIGIT_CHARS()[(b7 >> 4) & 15], f6.b.getHEX_DIGIT_CHARS()[b7 & 15]});
    }

    public static final int resolveDefaultParameter(ByteString byteString, int i2) {
        kotlin.jvm.internal.j.checkNotNullParameter(byteString, "<this>");
        return i2 == f14005b ? byteString.size() : i2;
    }

    public static final int reverseBytes(int i2) {
        return ((i2 & 255) << 24) | (((-16777216) & i2) >>> 24) | ((16711680 & i2) >>> 8) | ((65280 & i2) << 8);
    }

    public static final int resolveDefaultParameter(byte[] bArr, int i2) {
        kotlin.jvm.internal.j.checkNotNullParameter(bArr, "<this>");
        return i2 == f14005b ? bArr.length : i2;
    }

    public static final String toHexString(int i2) {
        int i7 = 0;
        if (i2 == 0) {
            return "0";
        }
        char[] cArr = {f6.b.getHEX_DIGIT_CHARS()[(i2 >> 28) & 15], f6.b.getHEX_DIGIT_CHARS()[(i2 >> 24) & 15], f6.b.getHEX_DIGIT_CHARS()[(i2 >> 20) & 15], f6.b.getHEX_DIGIT_CHARS()[(i2 >> 16) & 15], f6.b.getHEX_DIGIT_CHARS()[(i2 >> 12) & 15], f6.b.getHEX_DIGIT_CHARS()[(i2 >> 8) & 15], f6.b.getHEX_DIGIT_CHARS()[(i2 >> 4) & 15], f6.b.getHEX_DIGIT_CHARS()[i2 & 15]};
        while (i7 < 8 && cArr[i7] == '0') {
            i7++;
        }
        return P5.p.concatToString(cArr, i7, 8);
    }
}
