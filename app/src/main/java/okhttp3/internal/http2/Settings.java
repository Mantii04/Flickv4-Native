package okhttp3.internal.http2;

import androidx.media3.common.util.Log;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.j;
import v5.m;

/* loaded from: classes2.dex */
public final class Settings {
    public static final int COUNT = 10;
    public static final Companion Companion = new Companion(null);
    public static final int DEFAULT_INITIAL_WINDOW_SIZE = 65535;
    public static final int ENABLE_PUSH = 2;
    public static final int HEADER_TABLE_SIZE = 1;
    public static final int INITIAL_WINDOW_SIZE = 7;
    public static final int MAX_CONCURRENT_STREAMS = 4;
    public static final int MAX_FRAME_SIZE = 5;
    public static final int MAX_HEADER_LIST_SIZE = 6;
    private int set;
    private final int[] values = new int[10];

    public static final class Companion {
        public /* synthetic */ Companion(g gVar) {
            this();
        }

        private Companion() {
        }
    }

    public final void clear() {
        this.set = 0;
        m.fill$default(this.values, 0, 0, 0, 6, (Object) null);
    }

    public final int get(int i2) {
        return this.values[i2];
    }

    public final boolean getEnablePush(boolean z6) {
        return (this.set & 4) != 0 ? this.values[2] == 1 : z6;
    }

    public final int getHeaderTableSize() {
        if ((this.set & 2) != 0) {
            return this.values[1];
        }
        return -1;
    }

    public final int getInitialWindowSize() {
        return (this.set & 128) != 0 ? this.values[7] : DEFAULT_INITIAL_WINDOW_SIZE;
    }

    public final int getMaxConcurrentStreams() {
        return (this.set & 16) != 0 ? this.values[4] : Log.LOG_LEVEL_OFF;
    }

    public final int getMaxFrameSize(int i2) {
        return (this.set & 32) != 0 ? this.values[5] : i2;
    }

    public final int getMaxHeaderListSize(int i2) {
        return (this.set & 64) != 0 ? this.values[6] : i2;
    }

    public final boolean isSet(int i2) {
        return ((1 << i2) & this.set) != 0;
    }

    public final void merge(Settings other) {
        j.checkNotNullParameter(other, "other");
        for (int i2 = 0; i2 < 10; i2++) {
            if (other.isSet(i2)) {
                set(i2, other.get(i2));
            }
        }
    }

    public final Settings set(int i2, int i7) {
        if (i2 >= 0) {
            int[] iArr = this.values;
            if (i2 < iArr.length) {
                this.set = (1 << i2) | this.set;
                iArr[i2] = i7;
            }
        }
        return this;
    }

    public final int size() {
        return Integer.bitCount(this.set);
    }
}
