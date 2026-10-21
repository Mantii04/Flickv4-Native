package androidx.media3.exoplayer.source.chunk;

import P3.v;
import androidx.media3.common.Format;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSpec;

@UnstableApi
/* loaded from: classes.dex */
public abstract class MediaChunk extends Chunk {
    public final long chunkIndex;

    public MediaChunk(DataSource dataSource, DataSpec dataSpec, Format format, int i2, Object obj, long j7, long j8, long j9) {
        super(dataSource, dataSpec, 1, format, i2, obj, j7, j8);
        v.checkNotNull(format);
        this.chunkIndex = j9;
    }

    public long getNextChunkIndex() {
        long j7 = this.chunkIndex;
        if (j7 != -1) {
            return j7 + 1;
        }
        return -1L;
    }

    public abstract boolean isLoadCompleted();
}
