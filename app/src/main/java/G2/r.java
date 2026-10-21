package G2;

import android.text.TextUtils;
import java.util.Collection;

/* loaded from: classes.dex */
public abstract class r {
    public static void checkArgument(boolean z6, String str) {
        if (!z6) {
            throw new IllegalArgumentException(str);
        }
    }

    public static String checkNotEmpty(String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Must not be null or empty");
        }
        return str;
    }

    public static <T> T checkNotNull(T t6) {
        return (T) checkNotNull(t6, "Argument must not be null");
    }

    public static <T> T checkNotNull(T t6, String str) {
        if (t6 != null) {
            return t6;
        }
        throw new NullPointerException(str);
    }

    public static <T extends Collection<Y>, Y> T checkNotEmpty(T t6) {
        if (t6.isEmpty()) {
            throw new IllegalArgumentException("Must not be empty.");
        }
        return t6;
    }
}
