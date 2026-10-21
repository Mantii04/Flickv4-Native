package androidx.media3.exoplayer.analytics;

import android.media.metrics.LogSessionId;
import android.os.Build;
import androidx.media3.common.util.UnstableApi;

@UnstableApi
/* loaded from: classes.dex */
public final class PlayerId {
    private final LogSessionIdApi31 logSessionIdApi31;
    public final String name;
    public static final PlayerId UNSET = new PlayerId("");
    public static final PlayerId PRELOAD = new PlayerId("preload");

    public static final class LogSessionIdApi31 {
        public LogSessionId logSessionId;

        public LogSessionIdApi31() {
            LogSessionId logSessionId;
            logSessionId = LogSessionId.LOG_SESSION_ID_NONE;
            this.logSessionId = logSessionId;
        }

        public void setLogSessionId(LogSessionId logSessionId) {
            boolean equals;
            LogSessionId unused;
            LogSessionId logSessionId2 = this.logSessionId;
            unused = LogSessionId.LOG_SESSION_ID_NONE;
            equals = logSessionId2.equals(LogSessionId.LOG_SESSION_ID_NONE);
            P3.v.checkState(equals);
            this.logSessionId = logSessionId;
        }
    }

    public PlayerId(String str) {
        this.name = str;
        this.logSessionIdApi31 = Build.VERSION.SDK_INT >= 31 ? new LogSessionIdApi31() : null;
    }

    public synchronized LogSessionId getLogSessionId() {
        return ((LogSessionIdApi31) P3.v.checkNotNull(this.logSessionIdApi31)).logSessionId;
    }

    public synchronized void setLogSessionId(LogSessionId logSessionId) {
        ((LogSessionIdApi31) P3.v.checkNotNull(this.logSessionIdApi31)).setLogSessionId(logSessionId);
    }
}
