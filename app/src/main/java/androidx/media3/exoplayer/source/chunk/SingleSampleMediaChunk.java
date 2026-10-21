package androidx.media3.exoplayer.source.chunk;

import androidx.media3.common.C;
import androidx.media3.common.DataReader;
import androidx.media3.common.Format;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSourceUtil;
import androidx.media3.datasource.DataSpec;
import java.io.IOException;
import v0.C1736u;
import v0.r0;

@UnstableApi
@Deprecated
/* loaded from: classes.dex */
public final class SingleSampleMediaChunk extends BaseMediaChunk {
    private boolean loadCompleted;
    private long nextLoadPosition;
    private final Format sampleFormat;
    private final int trackType;

    public SingleSampleMediaChunk(DataSource dataSource, DataSpec dataSpec, Format format, int i2, Object obj, long j7, long j8, long j9, int i7, Format format2) {
        super(dataSource, dataSpec, format, i2, obj, j7, j8, C.TIME_UNSET, C.TIME_UNSET, j9);
        this.trackType = i7;
        this.sampleFormat = format2;
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Loadable
    public void cancelLoad() {
    }

    @Override // androidx.media3.exoplayer.source.chunk.MediaChunk
    public boolean isLoadCompleted() {
        return this.loadCompleted;
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Loadable
    public void load() throws IOException {
        BaseMediaChunkOutput output = getOutput();
        output.setSampleOffsetUs(0L);
        r0 track = output.track(0, this.trackType);
        track.format(this.sampleFormat);
        try {
            long open = this.dataSource.open(this.dataSpec.subrange(this.nextLoadPosition));
            if (open != -1) {
                open += this.nextLoadPosition;
            }
            C1736u c1736u = new C1736u(this.dataSource, this.nextLoadPosition, open);
            for (int i2 = 0; i2 != -1; i2 = track.sampleData((DataReader) c1736u, Log.LOG_LEVEL_OFF, true)) {
                this.nextLoadPosition += i2;
            }
            track.sampleMetadata(this.startTimeUs, 1, (int) this.nextLoadPosition, 0, null);
            DataSourceUtil.closeQuietly(this.dataSource);
            this.loadCompleted = true;
        } catch (Throwable th) {
            DataSourceUtil.closeQuietly(this.dataSource);
            throw th;
        }
    }
}
