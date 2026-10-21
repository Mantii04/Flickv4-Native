package L;

import java.util.Locale;

/* loaded from: classes.dex */
public abstract class h {
    public static void checkArgument(boolean z6) {
        if (!z6) {
            throw new IllegalArgumentException();
        }
    }

    public static int checkArgumentInRange(int i2, int i7, int i8, String str) {
        if (i2 < i7) {
            Locale locale = Locale.US;
            throw new IllegalArgumentException(str + " is out of range of [" + i7 + ", " + i8 + "] (too low)");
        }
        if (i2 <= i8) {
            return i2;
        }
        Locale locale2 = Locale.US;
        throw new IllegalArgumentException(str + " is out of range of [" + i7 + ", " + i8 + "] (too high)");
    }

    public static int checkArgumentNonnegative(int i2, String str) {
        if (i2 >= 0) {
            return i2;
        }
        throw new IllegalArgumentException(str);
    }

    public static int checkFlagsArgument(int i2, int i7) {
        if ((i2 & i7) == i2) {
            return i2;
        }
        throw new IllegalArgumentException("Requested flags 0x" + Integer.toHexString(i2) + ", but only 0x" + Integer.toHexString(i7) + " are allowed");
    }

    public static <T> T checkNotNull(T t6) {
        t6.getClass();
        return t6;
    }

    public static void checkState(boolean z6, String str) {
        if (!z6) {
            throw new IllegalStateException(str);
        }
    }

    public static void checkArgument(boolean z6, Object obj) {
        if (!z6) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    public static int checkArgumentNonnegative(int i2) {
        if (i2 >= 0) {
            return i2;
        }
        throw new IllegalArgumentException();
    }

    public static <T> T checkNotNull(T t6, Object obj) {
        if (t6 != null) {
            return t6;
        }
        throw new NullPointerException(String.valueOf(obj));
    }
}
