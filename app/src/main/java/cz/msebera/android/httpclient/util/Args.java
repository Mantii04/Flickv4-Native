package cz.msebera.android.httpclient.util;

import A.i;
import java.util.Collection;

/* loaded from: classes2.dex */
public class Args {
    public static void check(boolean z6, String str) {
        if (!z6) {
            throw new IllegalArgumentException(str);
        }
    }

    public static <T extends CharSequence> T containsNoBlanks(T t6, String str) {
        if (t6 == null) {
            throw new IllegalArgumentException(i.B(str, " may not be null"));
        }
        if (t6.length() == 0) {
            throw new IllegalArgumentException(i.B(str, " may not be empty"));
        }
        if (TextUtils.containsBlanks(t6)) {
            throw new IllegalArgumentException(i.B(str, " may not contain blanks"));
        }
        return t6;
    }

    public static <T extends CharSequence> T notBlank(T t6, String str) {
        if (t6 == null) {
            throw new IllegalArgumentException(i.B(str, " may not be null"));
        }
        if (TextUtils.isBlank(t6)) {
            throw new IllegalArgumentException(i.B(str, " may not be blank"));
        }
        return t6;
    }

    public static <T extends CharSequence> T notEmpty(T t6, String str) {
        if (t6 == null) {
            throw new IllegalArgumentException(i.B(str, " may not be null"));
        }
        if (TextUtils.isEmpty(t6)) {
            throw new IllegalArgumentException(i.B(str, " may not be empty"));
        }
        return t6;
    }

    public static int notNegative(int i2, String str) {
        if (i2 >= 0) {
            return i2;
        }
        throw new IllegalArgumentException(i.B(str, " may not be negative"));
    }

    public static <T> T notNull(T t6, String str) {
        if (t6 != null) {
            return t6;
        }
        throw new IllegalArgumentException(i.B(str, " may not be null"));
    }

    public static int positive(int i2, String str) {
        if (i2 > 0) {
            return i2;
        }
        throw new IllegalArgumentException(i.B(str, " may not be negative or zero"));
    }

    public static void check(boolean z6, String str, Object... objArr) {
        if (!z6) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
    }

    public static void check(boolean z6, String str, Object obj) {
        if (!z6) {
            throw new IllegalArgumentException(String.format(str, obj));
        }
    }

    public static long notNegative(long j7, String str) {
        if (j7 >= 0) {
            return j7;
        }
        throw new IllegalArgumentException(i.B(str, " may not be negative"));
    }

    public static long positive(long j7, String str) {
        if (j7 > 0) {
            return j7;
        }
        throw new IllegalArgumentException(i.B(str, " may not be negative or zero"));
    }

    public static <E, T extends Collection<E>> T notEmpty(T t6, String str) {
        if (t6 != null) {
            if (t6.isEmpty()) {
                throw new IllegalArgumentException(i.B(str, " may not be empty"));
            }
            return t6;
        }
        throw new IllegalArgumentException(i.B(str, " may not be null"));
    }
}
