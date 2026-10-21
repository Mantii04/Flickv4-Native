package androidx.media3.exoplayer.smoothstreaming.offline;

import P3.v;
import androidx.media3.common.C;
import androidx.media3.common.MediaItem;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.cache.CacheDataSource;
import androidx.media3.exoplayer.dash.offline.a;
import androidx.media3.exoplayer.offline.SegmentDownloader;
import androidx.media3.exoplayer.smoothstreaming.manifest.SsManifest;
import androidx.media3.exoplayer.smoothstreaming.manifest.SsManifestParser;
import androidx.media3.exoplayer.upstream.ParsingLoadable;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;

@UnstableApi
/* loaded from: classes.dex */
public final class SsDownloader extends SegmentDownloader<SsManifest> {

    public static final class Factory extends SegmentDownloader.BaseFactory<SsManifest> {
        public Factory(CacheDataSource.Factory factory) {
            super(factory, new SsManifestParser());
        }

        public Factory setManifestParser(SsManifestParser ssManifestParser) {
            this.manifestParser = ssManifestParser;
            return this;
        }

        @Override // androidx.media3.exoplayer.offline.SegmentDownloaderFactory
        public SsDownloader create(MediaItem mediaItem) {
            return new SsDownloader(mediaItem.buildUpon().setUri(Util.fixSmoothStreamingIsmManifestUri(((MediaItem.LocalConfiguration) v.checkNotNull(mediaItem.localConfiguration)).uri)).build(), this.manifestParser, this.cacheDataSourceFactory, this.executor, this.maxMergedSegmentStartTimeDiffMs, this.startPositionUs, this.durationUs);
        }

        @Override // androidx.media3.exoplayer.offline.SegmentDownloader.BaseFactory, androidx.media3.exoplayer.offline.SegmentDownloaderFactory
        public Factory setDurationUs(long j7) {
            super.setDurationUs(j7);
            return this;
        }

        @Override // androidx.media3.exoplayer.offline.SegmentDownloader.BaseFactory, androidx.media3.exoplayer.offline.SegmentDownloaderFactory
        public Factory setExecutor(Executor executor) {
            super.setExecutor(executor);
            return this;
        }

        @Override // androidx.media3.exoplayer.offline.SegmentDownloader.BaseFactory, androidx.media3.exoplayer.offline.SegmentDownloaderFactory
        public Factory setMaxMergedSegmentStartTimeDiffMs(long j7) {
            super.setMaxMergedSegmentStartTimeDiffMs(j7);
            return this;
        }

        @Override // androidx.media3.exoplayer.offline.SegmentDownloader.BaseFactory, androidx.media3.exoplayer.offline.SegmentDownloaderFactory
        public Factory setStartPositionUs(long j7) {
            super.setStartPositionUs(j7);
            return this;
        }
    }

    @Deprecated
    public SsDownloader(MediaItem mediaItem, CacheDataSource.Factory factory) {
        this(mediaItem, factory, new a(0));
    }

    @Override // androidx.media3.exoplayer.offline.SegmentDownloader
    public List<SegmentDownloader.Segment> getSegments(DataSource dataSource, SsManifest ssManifest, boolean z6) {
        ArrayList arrayList = new ArrayList();
        long j7 = z6 ? 0L : this.startPositionUs;
        long j8 = C.TIME_UNSET;
        long j9 = z6 ? -9223372036854775807L : this.durationUs;
        SsManifest.StreamElement[] streamElementArr = ssManifest.streamElements;
        int length = streamElementArr.length;
        int i2 = 0;
        while (i2 < length) {
            SsManifest.StreamElement streamElement = streamElementArr[i2];
            int i7 = 0;
            while (i7 < streamElement.formats.length) {
                int i8 = 0;
                while (i8 < streamElement.chunkCount) {
                    long startTimeUs = streamElement.getStartTimeUs(i8);
                    if (streamElement.getChunkDurationUs(i8) + startTimeUs > j7) {
                        if (j9 == j8 || startTimeUs < j7 + j9) {
                            arrayList.add(new SegmentDownloader.Segment(streamElement.getStartTimeUs(i8), new DataSpec(streamElement.buildRequestUri(i7, i8))));
                        }
                    }
                    i8++;
                    j8 = C.TIME_UNSET;
                }
                i7++;
                j8 = C.TIME_UNSET;
            }
            i2++;
            j8 = C.TIME_UNSET;
        }
        return arrayList;
    }

    @Deprecated
    public SsDownloader(MediaItem mediaItem, CacheDataSource.Factory factory, Executor executor) {
        super(mediaItem.buildUpon().setUri(Util.fixSmoothStreamingIsmManifestUri(((MediaItem.LocalConfiguration) v.checkNotNull(mediaItem.localConfiguration)).uri)).build(), new SsManifestParser(), factory, executor, 20000L, 0L, C.TIME_UNSET);
    }

    private SsDownloader(MediaItem mediaItem, ParsingLoadable.Parser<SsManifest> parser, CacheDataSource.Factory factory, Executor executor, long j7, long j8, long j9) {
        super(mediaItem, parser, factory, executor, j7, j8, j9);
    }
}
