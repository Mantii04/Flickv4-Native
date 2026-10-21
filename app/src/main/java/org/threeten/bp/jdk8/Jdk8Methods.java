package org.threeten.bp.jdk8;

import A.i;

/* loaded from: classes2.dex */
public final class Jdk8Methods {
    private Jdk8Methods() {
    }

    public static int compareInts(int i2, int i7) {
        if (i2 < i7) {
            return -1;
        }
        return i2 > i7 ? 1 : 0;
    }

    public static int compareLongs(long j7, long j8) {
        if (j7 < j8) {
            return -1;
        }
        return j7 > j8 ? 1 : 0;
    }

    public static boolean equals(Object obj, Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        if (obj2 == null) {
            return false;
        }
        return obj.equals(obj2);
    }

    public static long floorDiv(long j7, long j8) {
        return j7 >= 0 ? j7 / j8 : ((j7 + 1) / j8) - 1;
    }

    public static long floorMod(long j7, long j8) {
        return ((j7 % j8) + j8) % j8;
    }

    public static <T> T requireNonNull(T t6) {
        if (t6 != null) {
            return t6;
        }
        throw new NullPointerException("Value must not be null");
    }

    public static int safeAdd(int i2, int i7) {
        int i8 = i2 + i7;
        if ((i2 ^ i8) >= 0 || (i2 ^ i7) < 0) {
            return i8;
        }
        throw new ArithmeticException(i.e(i2, i7, "Addition overflows an int: ", " + "));
    }

    public static int safeMultiply(int i2, int i7) {
        long j7 = i2 * i7;
        if (j7 < -2147483648L || j7 > 2147483647L) {
            throw new ArithmeticException(i.e(i2, i7, "Multiplication overflows an int: ", " * "));
        }
        return (int) j7;
    }

    public static int safeSubtract(int i2, int i7) {
        int i8 = i2 - i7;
        if ((i2 ^ i8) >= 0 || (i2 ^ i7) >= 0) {
            return i8;
        }
        throw new ArithmeticException(i.e(i2, i7, "Subtraction overflows an int: ", " - "));
    }

    public static int safeToInt(long j7) {
        if (j7 > 2147483647L || j7 < -2147483648L) {
            throw new ArithmeticException(i.i("Calculation overflows an int: ", j7));
        }
        return (int) j7;
    }

    public static int floorDiv(int i2, int i7) {
        return i2 >= 0 ? i2 / i7 : ((i2 + 1) / i7) - 1;
    }

    public static int floorMod(long j7, int i2) {
        long j8 = i2;
        return (int) (((j7 % j8) + j8) % j8);
    }

    public static <T> T requireNonNull(T t6, String str) {
        if (t6 != null) {
            return t6;
        }
        throw new NullPointerException(i.B(str, " must not be null"));
    }

    public static int floorMod(int i2, int i7) {
        return ((i2 % i7) + i7) % i7;
    }

    public static long safeAdd(long j7, long j8) {
        long j9 = j7 + j8;
        if ((j7 ^ j9) >= 0 || (j7 ^ j8) < 0) {
            return j9;
        }
        StringBuilder r6 = i.r(j7, "Addition overflows a long: ", " + ");
        r6.append(j8);
        throw new ArithmeticException(r6.toString());
    }

    public static long safeMultiply(long j7, int i2) {
        if (i2 == -1) {
            if (j7 != Long.MIN_VALUE) {
                return -j7;
            }
            throw new ArithmeticException("Multiplication overflows a long: " + j7 + " * " + i2);
        }
        if (i2 == 0) {
            return 0L;
        }
        if (i2 == 1) {
            return j7;
        }
        long j8 = i2;
        long j9 = j7 * j8;
        if (j9 / j8 == j7) {
            return j9;
        }
        throw new ArithmeticException("Multiplication overflows a long: " + j7 + " * " + i2);
    }

    public static long safeSubtract(long j7, long j8) {
        long j9 = j7 - j8;
        if ((j7 ^ j9) >= 0 || (j7 ^ j8) >= 0) {
            return j9;
        }
        StringBuilder r6 = i.r(j7, "Subtraction overflows a long: ", " - ");
        r6.append(j8);
        throw new ArithmeticException(r6.toString());
    }

    public static long safeMultiply(long j7, long j8) {
        if (j8 == 1) {
            return j7;
        }
        if (j7 == 1) {
            return j8;
        }
        if (j7 == 0 || j8 == 0) {
            return 0L;
        }
        long j9 = j7 * j8;
        if (j9 / j8 == j7 && ((j7 != Long.MIN_VALUE || j8 != -1) && (j8 != Long.MIN_VALUE || j7 != -1))) {
            return j9;
        }
        StringBuilder r6 = i.r(j7, "Multiplication overflows a long: ", " * ");
        r6.append(j8);
        throw new ArithmeticException(r6.toString());
    }
}
