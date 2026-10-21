package S3;

import A.i;
import P3.v;
import androidx.media3.exoplayer.upstream.CmcdData;
import java.math.RoundingMode;

/* loaded from: classes2.dex */
public abstract class g {
    public static long checkedAdd(long j7, long j8) {
        long j9 = j7 + j8;
        if (((j7 ^ j8) < 0) || ((j7 ^ j9) >= 0)) {
            return j9;
        }
        throw new ArithmeticException(i.n(i.r(j7, "overflow: checkedAdd(", ", "), j8, ")"));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static long divide(long j7, long j8, RoundingMode roundingMode) {
        v.checkNotNull(roundingMode);
        long j9 = j7 / j8;
        long j10 = j7 - (j8 * j9);
        if (j10 == 0) {
            return j9;
        }
        int i2 = ((int) ((j7 ^ j8) >> 63)) | 1;
        switch (f.f3379a[roundingMode.ordinal()]) {
            case 1:
                com.bumptech.glide.e.e(j10 == 0);
                return j9;
            case 2:
                return j9;
            case 3:
                if (i2 >= 0) {
                    return j9;
                }
                return j9 + i2;
            case 4:
                return j9 + i2;
            case 5:
                if (i2 <= 0) {
                    return j9;
                }
                return j9 + i2;
            case 6:
            case 7:
            case 8:
                long abs = Math.abs(j10);
                long abs2 = abs - (Math.abs(j8) - abs);
                if (abs2 == 0) {
                    if (roundingMode != RoundingMode.HALF_UP && (roundingMode != RoundingMode.HALF_EVEN || (1 & j9) == 0)) {
                        return j9;
                    }
                } else if (abs2 <= 0) {
                    return j9;
                }
                return j9 + i2;
            default:
                throw new AssertionError();
        }
    }

    public static long gcd(long j7, long j8) {
        com.bumptech.glide.e.d(CmcdData.OBJECT_TYPE_AUDIO_ONLY, j7);
        com.bumptech.glide.e.d("b", j8);
        if (j7 == 0) {
            return j8;
        }
        if (j8 == 0) {
            return j7;
        }
        int numberOfTrailingZeros = Long.numberOfTrailingZeros(j7);
        long j9 = j7 >> numberOfTrailingZeros;
        int numberOfTrailingZeros2 = Long.numberOfTrailingZeros(j8);
        long j10 = j8 >> numberOfTrailingZeros2;
        while (j9 != j10) {
            long j11 = j9 - j10;
            long j12 = (j11 >> 63) & j11;
            long j13 = (j11 - j12) - j12;
            j10 += j12;
            j9 = j13 >> Long.numberOfTrailingZeros(j13);
        }
        return j9 << Math.min(numberOfTrailingZeros, numberOfTrailingZeros2);
    }

    public static long saturatedAdd(long j7, long j8) {
        long j9 = j7 + j8;
        return (((j8 ^ j7) > 0L ? 1 : ((j8 ^ j7) == 0L ? 0 : -1)) < 0) | ((j7 ^ j9) >= 0) ? j9 : ((j9 >>> 63) ^ 1) + Long.MAX_VALUE;
    }

    public static long saturatedMultiply(long j7, long j8) {
        int numberOfLeadingZeros = Long.numberOfLeadingZeros(~j8) + Long.numberOfLeadingZeros(j8) + Long.numberOfLeadingZeros(~j7) + Long.numberOfLeadingZeros(j7);
        if (numberOfLeadingZeros > 65) {
            return j7 * j8;
        }
        long j9 = ((j7 ^ j8) >>> 63) + Long.MAX_VALUE;
        if (!((numberOfLeadingZeros < 64) | ((j8 == Long.MIN_VALUE) & (j7 < 0)))) {
            long j10 = j7 * j8;
            if (j7 == 0 || j10 / j7 == j8) {
                return j10;
            }
        }
        return j9;
    }

    public static long saturatedSubtract(long j7, long j8) {
        long j9 = j7 - j8;
        return (((j8 ^ j7) > 0L ? 1 : ((j8 ^ j7) == 0L ? 0 : -1)) >= 0) | ((j7 ^ j9) >= 0) ? j9 : ((j9 >>> 63) ^ 1) + Long.MAX_VALUE;
    }
}
