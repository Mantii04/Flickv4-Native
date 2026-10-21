package androidx.media3.common.util;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@UnstableApi
/* loaded from: classes.dex */
public final class RepeatModeUtil {
    public static final int REPEAT_TOGGLE_MODE_ALL = 2;
    public static final int REPEAT_TOGGLE_MODE_NONE = 0;
    public static final int REPEAT_TOGGLE_MODE_ONE = 1;

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface RepeatToggleModes {
    }

    private RepeatModeUtil() {
    }

    public static int getNextRepeatMode(int i2, int i7) {
        for (int i8 = 1; i8 <= 2; i8++) {
            int i9 = (i2 + i8) % 3;
            if (isRepeatModeEnabled(i9, i7)) {
                return i9;
            }
        }
        return i2;
    }

    public static boolean isRepeatModeEnabled(int i2, int i7) {
        if (i2 != 0) {
            return i2 != 1 ? i2 == 2 && (i7 & 2) != 0 : (i7 & 1) != 0;
        }
        return true;
    }
}
