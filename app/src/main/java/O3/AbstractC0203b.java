package O3;

import android.text.TextUtils;

/* renamed from: O3.b, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0203b {
    public static <T> T a(T t6) {
        if (t6 != null) {
            return t6;
        }
        throw new NullPointerException("null reference");
    }

    public static <T> T a(T t6, Object obj) {
        if (t6 != null) {
            return t6;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    public static String a(String str, Object obj) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
        return str;
    }

    public static void a(boolean z6) {
        if (!z6) {
            throw new IllegalStateException();
        }
    }
}
