package androidx.media3.common.util;

import P3.v;
import android.os.Looper;
import android.text.TextUtils;

@UnstableApi
/* loaded from: classes.dex */
public final class Assertions {
    private Assertions() {
    }

    @Deprecated
    public static void checkArgument(boolean z6) {
        v.checkArgument(z6);
    }

    @Deprecated
    public static int checkIndex(int i2, int i7, int i8) {
        if (i2 < i7 || i2 >= i8) {
            throw new IndexOutOfBoundsException();
        }
        return i2;
    }

    @Deprecated
    public static void checkMainThread() {
        v.checkState(Looper.myLooper() == Looper.getMainLooper(), "Not in application's main thread");
    }

    @Deprecated
    public static String checkNotEmpty(String str) {
        v.checkArgument(!TextUtils.isEmpty(str));
        return str;
    }

    @Deprecated
    public static <T> T checkNotNull(T t6) {
        return (T) v.checkNotNull(t6);
    }

    @Deprecated
    public static void checkState(boolean z6) {
        v.checkState(z6);
    }

    @Deprecated
    public static <T> T checkStateNotNull(T t6) {
        return (T) v.checkNotNull(t6);
    }

    @Deprecated
    public static void checkArgument(boolean z6, Object obj) {
        v.checkArgument(z6, obj);
    }

    @Deprecated
    public static String checkNotEmpty(String str, Object obj) {
        v.checkArgument(!TextUtils.isEmpty(str), obj);
        return str;
    }

    @Deprecated
    public static <T> T checkNotNull(T t6, Object obj) {
        return (T) v.checkNotNull(t6, obj);
    }

    @Deprecated
    public static void checkState(boolean z6, Object obj) {
        v.checkState(z6, obj);
    }

    @Deprecated
    public static <T> T checkStateNotNull(T t6, Object obj) {
        return (T) v.checkNotNull(t6, obj);
    }
}
