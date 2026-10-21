package androidx.media3.exoplayer.source.chunk;

import P3.v;
import android.net.Uri;
import androidx.media3.common.Format;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.StatsDataSource;
import androidx.media3.exoplayer.source.LoadEventInfo;
import androidx.media3.exoplayer.upstream.Loader;
import java.util.List;
import java.util.Map;

@UnstableApi
/* loaded from: classes.dex */
public abstract class Chunk implements Loader.Loadable {
    protected final StatsDataSource dataSource;
    public final DataSpec dataSpec;
    public final long endTimeUs;
    public final long loadTaskId = LoadEventInfo.getNewId();
    public final long startTimeUs;
    public final Format trackFormat;
    public final Object trackSelectionData;
    public final int trackSelectionReason;
    public final int type;

    public Chunk(DataSource dataSource, DataSpec dataSpec, int i2, Format format, int i7, Object obj, long j7, long j8) {
        this.dataSource = new StatsDataSource(dataSource);
        this.dataSpec = (DataSpec) v.checkNotNull(dataSpec);
        this.type = i2;
        this.trackFormat = format;
        this.trackSelectionReason = i7;
        this.trackSelectionData = obj;
        this.startTimeUs = j7;
        this.endTimeUs = j8;
    }

    public final long bytesLoaded() {
        return this.dataSource.getBytesRead();
    }

    public final long getDurationUs() {
        return this.endTimeUs - this.startTimeUs;
    }

    public final Map<String, List<String>> getResponseHeaders() {
        return this.dataSource.getLastResponseHeaders();
    }

    public final Uri getUri() {
        return this.dataSource.getLastOpenedUri();
    }
}
