package S3;

import A.i;
import P3.v;
import java.math.RoundingMode;

/* loaded from: classes2.dex */
public abstract class e {
    public static int checkedAdd(int i2, int i7) {
        long j7 = i2 + i7;
        int i8 = (int) j7;
        if (j7 == ((long) i8)) {
            return i8;
        }
        throw new ArithmeticException("overflow: checkedAdd(" + i2 + ", " + i7 + ")");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static int divide(int i2, int i7, RoundingMode roundingMode) {
        v.checkNotNull(roundingMode);
        if (i7 == 0) {
            throw new ArithmeticException("/ by zero");
        }
        int i8 = i2 / i7;
        int i9 = i2 - (i7 * i8);
        if (i9 == 0) {
            return i8;
        }
        int i10 = ((i2 ^ i7) >> 31) | 1;
        switch (d.f3378a[roundingMode.ordinal()]) {
            case 1:
                com.bumptech.glide.e.e(i9 == 0);
                return i8;
            case 2:
                return i8;
            case 3:
                if (i10 >= 0) {
                    return i8;
                }
                return i8 + i10;
            case 4:
                return i8 + i10;
            case 5:
                if (i10 <= 0) {
                    return i8;
                }
                return i8 + i10;
            case 6:
            case 7:
            case 8:
                int abs = Math.abs(i9);
                int abs2 = abs - (Math.abs(i7) - abs);
                if (abs2 == 0) {
                    if (roundingMode != RoundingMode.HALF_UP) {
                        if (!((roundingMode == RoundingMode.HALF_EVEN) & ((i8 & 1) != 0))) {
                            return i8;
                        }
                    }
                } else if (abs2 <= 0) {
                    return i8;
                }
                return i8 + i10;
            default:
                throw new AssertionError();
        }
    }

    public static boolean isPowerOfTwo(int i2) {
        return (i2 > 0) & ((i2 & (i2 + (-1))) == 0);
    }

    public static int log2(int i2, RoundingMode roundingMode) {
        if (i2 <= 0) {
            throw new IllegalArgumentException(i.g(i2, "x (", ") must be > 0"));
        }
        switch (d.f3378a[roundingMode.ordinal()]) {
            case 1:
                com.bumptech.glide.e.e(isPowerOfTwo(i2));
                break;
            case 2:
            case 3:
                break;
            case 4:
            case 5:
                return 32 - Integer.numberOfLeadingZeros(i2 - 1);
            case 6:
            case 7:
            case 8:
                int numberOfLeadingZeros = Integer.numberOfLeadingZeros(i2);
                return (31 - numberOfLeadingZeros) + ((~(~(((-1257966797) >>> numberOfLeadingZeros) - i2))) >>> 31);
            default:
                throw new AssertionError();
        }
        return 31 - Integer.numberOfLeadingZeros(i2);
    }

    public static int saturatedMultiply(int i2, int i7) {
        return com.google.common.primitives.a.saturatedCast(i2 * i7);
    }
}
