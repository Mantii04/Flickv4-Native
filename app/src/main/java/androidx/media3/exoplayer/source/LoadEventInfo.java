package androidx.media3.exoplayer.source;

import android.net.Uri;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.datasource.DataSpec;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;

@UnstableApi
/* loaded from: classes.dex */
public final class LoadEventInfo {
    private static final AtomicLong idSource = new AtomicLong();
    public final long bytesLoaded;
    public final DataSpec dataSpec;
    public final long elapsedRealtimeMs;
    public final long loadDurationMs;
    public final long loadTaskId;
    public final Map<String, List<String>> responseHeaders;
    public final Uri uri;

    public LoadEventInfo(long j7, DataSpec dataSpec, long j8) {
        this(j7, dataSpec, dataSpec.uri, Collections.EMPTY_MAP, j8, 0L, 0L);
    }

    public static long getNewId() {
        return idSource.getAndIncrement();
    }

    public LoadEventInfo copyWithTaskIdAndDurationMs(long j7, long j8) {
        return new LoadEventInfo(j7, this.dataSpec, this.uri, this.responseHeaders, this.elapsedRealtimeMs, j8, this.bytesLoaded);
    }

    public LoadEventInfo(long j7, DataSpec dataSpec, Uri uri, Map<String, List<String>> map, long j8, long j9, long j10) {
        this.loadTaskId = j7;
        this.dataSpec = dataSpec;
        this.uri = uri;
        this.responseHeaders = map;
        this.elapsedRealtimeMs = j8;
        this.loadDurationMs = j9;
        this.bytesLoaded = j10;
    }
}
