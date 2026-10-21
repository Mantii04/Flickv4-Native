package androidx.media3.common.util;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@UnstableApi
/* loaded from: classes.dex */
public final class StuckPlayerException extends IllegalStateException {
    public static final int STUCK_BUFFERING_NOT_LOADING = 0;
    public static final int STUCK_BUFFERING_NO_PROGRESS = 1;
    public static final int STUCK_PLAYING_NOT_ENDING = 3;
    public static final int STUCK_PLAYING_NO_PROGRESS = 2;
    public static final int STUCK_SUPPRESSED = 4;
    public final int stuckType;
    public final int timeoutMs;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface StuckType {
    }

    public StuckPlayerException(int i2, int i7) {
        super(getMessage(i2, i7));
        this.stuckType = i2;
        this.timeoutMs = i7;
    }

    private static String getMessage(int i2, int i7) {
        if (i2 == 0) {
            return A.i.g(i7, "Player stuck buffering and not loading for ", " ms");
        }
        if (i2 == 1) {
            return A.i.g(i7, "Player stuck buffering with no progress for ", " ms");
        }
        if (i2 == 2) {
            return A.i.g(i7, "Player stuck playing with no progress for ", " ms");
        }
        if (i2 == 3) {
            return A.i.g(i7, "Player stuck playing without ending for ", " ms");
        }
        if (i2 == 4) {
            return A.i.g(i7, "Player stuck suppressed for ", " ms");
        }
        throw new IllegalStateException();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && StuckPlayerException.class == obj.getClass()) {
            StuckPlayerException stuckPlayerException = (StuckPlayerException) obj;
            if (this.stuckType == stuckPlayerException.stuckType && this.timeoutMs == stuckPlayerException.timeoutMs) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((527 + this.stuckType) * 31) + this.timeoutMs;
    }
}
