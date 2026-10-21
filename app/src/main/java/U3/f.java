package U3;

import A.i;
import P3.v;

/* loaded from: classes2.dex */
public abstract class f {
    public static long[] concat(long[]... jArr) {
        long j7 = 0;
        for (long[] jArr2 : jArr) {
            j7 += jArr2.length;
        }
        int i2 = (int) j7;
        v.checkArgument(j7 == ((long) i2), "the total number of elements (%s) in the arrays must fit in an int", j7);
        long[] jArr3 = new long[i2];
        int i7 = 0;
        for (long[] jArr4 : jArr) {
            System.arraycopy(jArr4, 0, jArr3, i7, jArr4.length);
            i7 += jArr4.length;
        }
        return jArr3;
    }

    public static int hashCode(long j7) {
        return (int) (j7 ^ (j7 >>> 32));
    }

    public static long max(long... jArr) {
        v.checkArgument(jArr.length > 0);
        long j7 = jArr[0];
        for (int i2 = 1; i2 < jArr.length; i2++) {
            long j8 = jArr[i2];
            if (j8 > j7) {
                j7 = j8;
            }
        }
        return j7;
    }

    public static long min(long... jArr) {
        v.checkArgument(jArr.length > 0);
        long j7 = jArr[0];
        for (int i2 = 1; i2 < jArr.length; i2++) {
            long j8 = jArr[i2];
            if (j8 < j7) {
                j7 = j8;
            }
        }
        return j7;
    }

    public static Long tryParse(String str, int i2) {
        byte b7;
        byte b8;
        if (((String) v.checkNotNull(str)).isEmpty()) {
            return null;
        }
        if (i2 < 2 || i2 > 36) {
            throw new IllegalArgumentException(i.f(i2, "radix must be between MIN_RADIX and MAX_RADIX but was "));
        }
        int i7 = str.charAt(0) == '-' ? 1 : 0;
        if (i7 == str.length()) {
            return null;
        }
        int i8 = i7 + 1;
        char charAt = str.charAt(i7);
        if (charAt < 128) {
            b7 = e.f3796a[charAt];
        } else {
            byte[] bArr = e.f3796a;
            b7 = -1;
        }
        if (b7 < 0 || b7 >= i2) {
            return null;
        }
        long j7 = -b7;
        long j8 = i2;
        long j9 = Long.MIN_VALUE / j8;
        while (i8 < str.length()) {
            int i9 = i8 + 1;
            char charAt2 = str.charAt(i8);
            if (charAt2 < 128) {
                b8 = e.f3796a[charAt2];
            } else {
                byte[] bArr2 = e.f3796a;
                b8 = -1;
            }
            if (b8 < 0 || b8 >= i2 || j7 < j9) {
                return null;
            }
            long j10 = j7 * j8;
            int i10 = i7;
            long j11 = b8;
            if (j10 < j11 - Long.MIN_VALUE) {
                return null;
            }
            j7 = j10 - j11;
            i8 = i9;
            i7 = i10;
        }
        if (i7 != 0) {
            return Long.valueOf(j7);
        }
        if (j7 == Long.MIN_VALUE) {
            return null;
        }
        return Long.valueOf(-j7);
    }
}
