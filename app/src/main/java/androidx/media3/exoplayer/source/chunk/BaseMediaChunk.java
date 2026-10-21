package androidx.media3.exoplayer.source.chunk;

import P3.v;
import androidx.media3.common.Format;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSpec;

@UnstableApi
/* loaded from: classes.dex */
public abstract class BaseMediaChunk extends MediaChunk {
    public final long clippedEndTimeUs;
    public final long clippedStartTimeUs;
    private int[] firstSampleIndices;
    private BaseMediaChunkOutput output;

    public BaseMediaChunk(DataSource dataSource, DataSpec dataSpec, Format format, int i2, Object obj, long j7, long j8, long j9, long j10, long j11) {
        super(dataSource, dataSpec, format, i2, obj, j7, j8, j11);
        this.clippedStartTimeUs = j9;
        this.clippedEndTimeUs = j10;
    }

    public final int getFirstSampleIndex(int i2) {
        return ((int[]) v.checkNotNull(this.firstSampleIndices))[i2];
    }

    public final BaseMediaChunkOutput getOutput() {
        return (BaseMediaChunkOutput) v.checkNotNull(this.output);
    }

    public void init(BaseMediaChunkOutput baseMediaChunkOutput) {
        this.output = baseMediaChunkOutput;
        this.firstSampleIndices = baseMediaChunkOutput.getWriteIndices();
    }
}
