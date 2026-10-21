package androidx.media3.exoplayer.source.chunk;

import androidx.media3.common.C;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSourceUtil;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.StatsDataSource;
import androidx.media3.exoplayer.source.chunk.ChunkExtractor;
import java.io.IOException;
import v0.C1736u;
import v0.r0;

@UnstableApi
/* loaded from: classes.dex */
public class ContainerMediaChunk extends BaseMediaChunk {
    private final int chunkCount;
    private final ChunkExtractor chunkExtractor;
    private volatile boolean loadCanceled;
    private boolean loadCompleted;
    private long nextLoadPosition;
    private final long sampleOffsetUs;

    public ContainerMediaChunk(DataSource dataSource, DataSpec dataSpec, Format format, int i2, Object obj, long j7, long j8, long j9, long j10, long j11, int i7, long j12, ChunkExtractor chunkExtractor) {
        super(dataSource, dataSpec, format, i2, obj, j7, j8, j9, j10, j11);
        this.chunkCount = i7;
        this.sampleOffsetUs = j12;
        this.chunkExtractor = chunkExtractor;
    }

    private void maybeWriteEmptySamples(BaseMediaChunkOutput baseMediaChunkOutput) {
        if (MimeTypes.isImage(this.trackFormat.containerMimeType)) {
            Format format = this.trackFormat;
            int i2 = format.tileCountHorizontal;
            if ((i2 <= 1 && format.tileCountVertical <= 1) || i2 == -1 || format.tileCountVertical == -1) {
                return;
            }
            r0 track = baseMediaChunkOutput.track(0, 4);
            Format format2 = this.trackFormat;
            int i7 = format2.tileCountHorizontal * format2.tileCountVertical;
            long j7 = (this.endTimeUs - this.startTimeUs) / i7;
            for (int i8 = 1; i8 < i7; i8++) {
                track.sampleData(new ParsableByteArray(), 0);
                track.sampleMetadata(i8 * j7, 0, 0, 0, null);
            }
        }
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Loadable
    public final void cancelLoad() {
        this.loadCanceled = true;
    }

    @Override // androidx.media3.exoplayer.source.chunk.MediaChunk
    public long getNextChunkIndex() {
        return this.chunkIndex + this.chunkCount;
    }

    public final long getNextLoadPosition() {
        return this.nextLoadPosition;
    }

    public ChunkExtractor.TrackOutputProvider getTrackOutputProvider(BaseMediaChunkOutput baseMediaChunkOutput) {
        return baseMediaChunkOutput;
    }

    public final boolean isLoadCanceled() {
        return this.loadCanceled;
    }

    @Override // androidx.media3.exoplayer.source.chunk.MediaChunk
    public boolean isLoadCompleted() {
        return this.loadCompleted;
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Loadable
    public final void load() throws IOException {
        BaseMediaChunkOutput output = getOutput();
        if (this.nextLoadPosition == 0) {
            output.setSampleOffsetUs(this.sampleOffsetUs);
            ChunkExtractor chunkExtractor = this.chunkExtractor;
            ChunkExtractor.TrackOutputProvider trackOutputProvider = getTrackOutputProvider(output);
            long j7 = this.clippedStartTimeUs;
            long j8 = C.TIME_UNSET;
            long j9 = j7 == C.TIME_UNSET ? -9223372036854775807L : j7 - this.sampleOffsetUs;
            long j10 = this.clippedEndTimeUs;
            if (j10 != C.TIME_UNSET) {
                j8 = j10 - this.sampleOffsetUs;
            }
            chunkExtractor.init(trackOutputProvider, j9, j8);
        }
        try {
            DataSpec subrange = this.dataSpec.subrange(this.nextLoadPosition);
            StatsDataSource statsDataSource = this.dataSource;
            C1736u c1736u = new C1736u(statsDataSource, subrange.position, statsDataSource.open(subrange));
            do {
                try {
                    if (this.loadCanceled) {
                        break;
                    }
                } finally {
                    this.nextLoadPosition = c1736u.getPosition() - this.dataSpec.position;
                }
            } while (this.chunkExtractor.read(c1736u));
            maybeWriteEmptySamples(output);
            this.nextLoadPosition = c1736u.getPosition() - this.dataSpec.position;
            onLoadEnded();
            DataSourceUtil.closeQuietly(this.dataSource);
            this.loadCompleted = !this.loadCanceled;
        } catch (Throwable th) {
            onLoadEnded();
            DataSourceUtil.closeQuietly(this.dataSource);
            throw th;
        }
    }

    public void onLoadEnded() {
    }
}
