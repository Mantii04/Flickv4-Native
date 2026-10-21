package P5;

import androidx.media3.common.C;

/* loaded from: classes2.dex */
public abstract class o extends n {
    public static Integer toIntOrNull(String str) {
        kotlin.jvm.internal.j.checkNotNullParameter(str, "<this>");
        return toIntOrNull(str, 10);
    }

    public static Long toLongOrNull(String str) {
        kotlin.jvm.internal.j.checkNotNullParameter(str, "<this>");
        return toLongOrNull(str, 10);
    }

    public static final Integer toIntOrNull(String str, int i2) {
        boolean z6;
        int i7;
        int i8;
        kotlin.jvm.internal.j.checkNotNullParameter(str, "<this>");
        a.checkRadix(i2);
        int length = str.length();
        if (length == 0) {
            return null;
        }
        int i9 = 0;
        char charAt = str.charAt(0);
        int compare = kotlin.jvm.internal.j.compare((int) charAt, 48);
        int i10 = C.RATE_UNSET_INT;
        if (compare < 0) {
            i7 = 1;
            if (length == 1) {
                return null;
            }
            if (charAt == '+') {
                z6 = false;
            } else {
                if (charAt != '-') {
                    return null;
                }
                i10 = Integer.MIN_VALUE;
                z6 = true;
            }
        } else {
            z6 = false;
            i7 = 0;
        }
        int i11 = -59652323;
        while (i7 < length) {
            int digitOf = a.digitOf(str.charAt(i7), i2);
            if (digitOf < 0) {
                return null;
            }
            if ((i9 < i11 && (i11 != -59652323 || i9 < (i11 = i10 / i2))) || (i8 = i9 * i2) < i10 + digitOf) {
                return null;
            }
            i9 = i8 - digitOf;
            i7++;
        }
        return z6 ? Integer.valueOf(i9) : Integer.valueOf(-i9);
    }

    public static final Long toLongOrNull(String str, int i2) {
        boolean z6;
        kotlin.jvm.internal.j.checkNotNullParameter(str, "<this>");
        a.checkRadix(i2);
        int length = str.length();
        Long l7 = null;
        if (length == 0) {
            return null;
        }
        int i7 = 0;
        char charAt = str.charAt(0);
        int compare = kotlin.jvm.internal.j.compare((int) charAt, 48);
        long j7 = C.TIME_UNSET;
        if (compare < 0) {
            z6 = true;
            if (length == 1) {
                return null;
            }
            if (charAt == '+') {
                z6 = false;
                i7 = 1;
            } else {
                if (charAt != '-') {
                    return null;
                }
                j7 = Long.MIN_VALUE;
                i7 = 1;
            }
        } else {
            z6 = false;
        }
        long j8 = 0;
        long j9 = -256204778801521550L;
        while (i7 < length) {
            int digitOf = a.digitOf(str.charAt(i7), i2);
            if (digitOf < 0) {
                return l7;
            }
            if (j8 < j9) {
                if (j9 != -256204778801521550L) {
                    return l7;
                }
                j9 = j7 / i2;
                if (j8 < j9) {
                    return l7;
                }
            }
            Long l8 = l7;
            int i8 = i7;
            long j10 = j8 * i2;
            long j11 = digitOf;
            if (j10 < j7 + j11) {
                return l8;
            }
            j8 = j10 - j11;
            i7 = i8 + 1;
            l7 = l8;
        }
        return z6 ? Long.valueOf(j8) : Long.valueOf(-j8);
    }
}
