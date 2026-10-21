package com.google.firebase.components;

/* loaded from: classes2.dex */
public final class Preconditions {
    public static void checkArgument(boolean z6, String str) {
        if (!z6) {
            throw new IllegalArgumentException(str);
        }
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

    public static <T> T checkNotNull(T t6, String str) {
        if (t6 != null) {
            return t6;
        }
        throw new NullPointerException(str);
    }
}
