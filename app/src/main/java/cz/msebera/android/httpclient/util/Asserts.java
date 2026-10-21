package cz.msebera.android.httpclient.util;

import A.i;

/* loaded from: classes2.dex */
public class Asserts {
    public static void check(boolean z6, String str) {
        if (!z6) {
            throw new IllegalStateException(str);
        }
    }

    public static void notBlank(CharSequence charSequence, String str) {
        if (TextUtils.isBlank(charSequence)) {
            throw new IllegalStateException(i.B(str, " is blank"));
        }
    }

    public static void notEmpty(CharSequence charSequence, String str) {
        if (TextUtils.isEmpty(charSequence)) {
            throw new IllegalStateException(i.B(str, " is empty"));
        }
    }

    public static void notNull(Object obj, String str) {
        if (obj == null) {
            throw new IllegalStateException(i.B(str, " is null"));
        }
    }

    public static void check(boolean z6, String str, Object... objArr) {
        if (!z6) {
            throw new IllegalStateException(String.format(str, objArr));
        }
    }

    public static void check(boolean z6, String str, Object obj) {
        if (!z6) {
            throw new IllegalStateException(String.format(str, obj));
        }
    }
}
