package com.loopj.android.http;

import A.i;

/* loaded from: classes2.dex */
class Utils {
    private Utils() {
    }

    public static void asserts(boolean z6, String str) {
        if (!z6) {
            throw new AssertionError(str);
        }
    }

    public static <T> T notNull(T t6, String str) {
        if (t6 != null) {
            return t6;
        }
        throw new IllegalArgumentException(i.B(str, " should not be null!"));
    }
}
