package P3;

import com.google.firebase.analytics.FirebaseAnalytics;

/* loaded from: classes2.dex */
public abstract class v {
    public static String a(int i2, int i7, String str) {
        if (i2 < 0) {
            return B.lenientFormat("%s (%s) must not be negative", str, Integer.valueOf(i2));
        }
        if (i7 >= 0) {
            return B.lenientFormat("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i2), Integer.valueOf(i7));
        }
        throw new IllegalArgumentException(A.i.f(i7, "negative size: "));
    }

    public static void checkArgument(boolean z6) {
        if (!z6) {
            throw new IllegalArgumentException();
        }
    }

    public static int checkElementIndex(int i2, int i7) {
        return checkElementIndex(i2, i7, FirebaseAnalytics.Param.INDEX);
    }

    public static <T> T checkNotNull(T t6) {
        t6.getClass();
        return t6;
    }

    public static int checkPositionIndex(int i2, int i7) {
        return checkPositionIndex(i2, i7, FirebaseAnalytics.Param.INDEX);
    }

    public static void checkPositionIndexes(int i2, int i7, int i8) {
        if (i2 < 0 || i7 < i2 || i7 > i8) {
            throw new IndexOutOfBoundsException((i2 < 0 || i2 > i8) ? a(i2, i8, "start index") : (i7 < 0 || i7 > i8) ? a(i7, i8, "end index") : B.lenientFormat("end index (%s) must not be less than start index (%s)", Integer.valueOf(i7), Integer.valueOf(i2)));
        }
    }

    public static void checkState(boolean z6) {
        if (!z6) {
            throw new IllegalStateException();
        }
    }

    public static void checkArgument(boolean z6, Object obj) {
        if (!z6) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    public static int checkElementIndex(int i2, int i7, String str) {
        String lenientFormat;
        if (i2 >= 0 && i2 < i7) {
            return i2;
        }
        if (i2 < 0) {
            lenientFormat = B.lenientFormat("%s (%s) must not be negative", str, Integer.valueOf(i2));
        } else {
            if (i7 < 0) {
                throw new IllegalArgumentException(A.i.f(i7, "negative size: "));
            }
            lenientFormat = B.lenientFormat("%s (%s) must be less than size (%s)", str, Integer.valueOf(i2), Integer.valueOf(i7));
        }
        throw new IndexOutOfBoundsException(lenientFormat);
    }

    public static <T> T checkNotNull(T t6, Object obj) {
        if (t6 != null) {
            return t6;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    public static int checkPositionIndex(int i2, int i7, String str) {
        if (i2 < 0 || i2 > i7) {
            throw new IndexOutOfBoundsException(a(i2, i7, str));
        }
        return i2;
    }

    public static void checkState(boolean z6, Object obj) {
        if (!z6) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }

    public static void checkArgument(boolean z6, String str, Object... objArr) {
        if (!z6) {
            throw new IllegalArgumentException(B.lenientFormat(str, objArr));
        }
    }

    public static void checkState(boolean z6, String str, int i2) {
        if (!z6) {
            throw new IllegalStateException(B.lenientFormat(str, Integer.valueOf(i2)));
        }
    }

    public static void checkArgument(boolean z6, String str, char c7) {
        if (!z6) {
            throw new IllegalArgumentException(B.lenientFormat(str, Character.valueOf(c7)));
        }
    }

    public static void checkState(boolean z6, String str, Object obj) {
        if (!z6) {
            throw new IllegalStateException(B.lenientFormat(str, obj));
        }
    }

    public static void checkArgument(boolean z6, String str, int i2) {
        if (!z6) {
            throw new IllegalArgumentException(B.lenientFormat(str, Integer.valueOf(i2)));
        }
    }

    public static void checkState(boolean z6, String str, char c7, char c8) {
        if (!z6) {
            throw new IllegalStateException(B.lenientFormat(str, Character.valueOf(c7), Character.valueOf(c8)));
        }
    }

    public static void checkArgument(boolean z6, String str, long j7) {
        if (!z6) {
            throw new IllegalArgumentException(B.lenientFormat(str, Long.valueOf(j7)));
        }
    }

    public static void checkState(boolean z6, String str, Object obj, Object obj2) {
        if (!z6) {
            throw new IllegalStateException(B.lenientFormat(str, obj, obj2));
        }
    }

    public static void checkArgument(boolean z6, String str, Object obj) {
        if (!z6) {
            throw new IllegalArgumentException(B.lenientFormat(str, obj));
        }
    }

    public static void checkArgument(boolean z6, String str, int i2, int i7) {
        if (!z6) {
            throw new IllegalArgumentException(B.lenientFormat(str, Integer.valueOf(i2), Integer.valueOf(i7)));
        }
    }

    public static void checkArgument(boolean z6, String str, long j7, long j8) {
        if (!z6) {
            throw new IllegalArgumentException(B.lenientFormat(str, Long.valueOf(j7), Long.valueOf(j8)));
        }
    }

    public static void checkArgument(boolean z6, String str, Object obj, Object obj2) {
        if (!z6) {
            throw new IllegalArgumentException(B.lenientFormat(str, obj, obj2));
        }
    }
}
