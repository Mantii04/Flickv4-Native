package androidx.media3.exoplayer.dash.offline;

import androidx.media3.common.C;
import androidx.media3.common.MediaItem;
import androidx.media3.common.q;
import androidx.media3.common.util.RunnableFutureTask;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.cache.CacheDataSource;
import androidx.media3.exoplayer.dash.BaseUrlExclusionList;
import androidx.media3.exoplayer.dash.DashSegmentIndex;
import androidx.media3.exoplayer.dash.DashUtil;
import androidx.media3.exoplayer.dash.DashWrappingSegmentIndex;
import androidx.media3.exoplayer.dash.manifest.AdaptationSet;
import androidx.media3.exoplayer.dash.manifest.BaseUrl;
import androidx.media3.exoplayer.dash.manifest.DashManifest;
import androidx.media3.exoplayer.dash.manifest.DashManifestParser;
import androidx.media3.exoplayer.dash.manifest.Period;
import androidx.media3.exoplayer.dash.manifest.RangedUri;
import androidx.media3.exoplayer.dash.manifest.Representation;
import androidx.media3.exoplayer.offline.DownloadException;
import androidx.media3.exoplayer.offline.SegmentDownloader;
import androidx.media3.exoplayer.upstream.ParsingLoadable;
import com.google.common.collect.ImmutableMap;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
import v0.r;

@UnstableApi
/* loaded from: classes.dex */
public final class DashDownloader extends SegmentDownloader<DashManifest> {
    private final BaseUrlExclusionList baseUrlExclusionList;

    public static final class Factory extends SegmentDownloader.BaseFactory<DashManifest> {
        public Factory(CacheDataSource.Factory factory) {
            super(factory, new DashManifestParser());
        }

        public Factory setManifestParser(DashManifestParser dashManifestParser) {
            this.manifestParser = dashManifestParser;
            return this;
        }

        @Override // androidx.media3.exoplayer.offline.SegmentDownloaderFactory
        public DashDownloader create(MediaItem mediaItem) {
            return new DashDownloader(mediaItem, this.manifestParser, this.cacheDataSourceFactory, this.executor, this.maxMergedSegmentStartTimeDiffMs, this.startPositionUs, this.durationUs);
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

    private void addSegmentsForAdaptationSet(DataSource dataSource, AdaptationSet adaptationSet, long j7, long j8, boolean z6, ArrayList<SegmentDownloader.Segment> arrayList) throws IOException, InterruptedException {
        DashSegmentIndex segmentIndex;
        DashDownloader dashDownloader = this;
        int i2 = 0;
        while (i2 < adaptationSet.representations.size()) {
            Representation representation = adaptationSet.representations.get(i2);
            try {
            } catch (IOException e3) {
                e = e3;
            }
            try {
                segmentIndex = dashDownloader.getSegmentIndex(dataSource, adaptationSet.type, representation, z6);
            } catch (IOException e7) {
                e = e7;
                if (!z6) {
                    throw e;
                }
                i2++;
                dashDownloader = this;
            }
            if (segmentIndex == null) {
                throw new DownloadException("Missing segment index");
            }
            long segmentCount = segmentIndex.getSegmentCount(j8);
            if (segmentCount == -1) {
                throw new DownloadException("Unbounded segment index");
            }
            String str = ((BaseUrl) Util.castNonNull(dashDownloader.baseUrlExclusionList.selectBaseUrl(representation.baseUrls))).url;
            RangedUri initializationUri = representation.getInitializationUri();
            if (initializationUri != null) {
                arrayList.add(dashDownloader.createSegment(representation, str, j7, initializationUri));
            }
            RangedUri indexUri = representation.getIndexUri();
            DashDownloader dashDownloader2 = this;
            if (indexUri != null) {
                arrayList.add(dashDownloader2.createSegment(representation, str, j7, indexUri));
            }
            long j9 = dashDownloader2.startPositionUs - j7;
            Representation representation2 = representation;
            String str2 = str;
            long j10 = dashDownloader2.durationUs;
            long j11 = j10 != C.TIME_UNSET ? j10 + j9 : -9223372036854775807L;
            long firstSegmentNum = (z6 || j9 <= 0) ? segmentIndex.getFirstSegmentNum() : segmentIndex.getSegmentNum(j9, j8);
            long firstSegmentNum2 = (j11 == C.TIME_UNSET || z6 || j11 >= j7 + j8) ? (segmentIndex.getFirstSegmentNum() + segmentCount) - 1 : segmentIndex.getSegmentNum(j11, j8);
            while (true) {
                long j12 = firstSegmentNum;
                if (j12 <= firstSegmentNum2) {
                    Representation representation3 = representation2;
                    String str3 = str2;
                    arrayList.add(dashDownloader2.createSegment(representation3, str3, segmentIndex.getTimeUs(j12) + j7, segmentIndex.getSegmentUrl(j12)));
                    firstSegmentNum = j12 + 1;
                    dashDownloader2 = this;
                    representation2 = representation3;
                    str2 = str3;
                }
            }
            i2++;
            dashDownloader = this;
        }
    }

    private SegmentDownloader.Segment createSegment(Representation representation, String str, long j7, RangedUri rangedUri) {
        return new SegmentDownloader.Segment(j7, DashUtil.buildDataSpec(representation, str, rangedUri, 0, ImmutableMap.of()));
    }

    private DashSegmentIndex getSegmentIndex(DataSource dataSource, int i2, Representation representation, boolean z6) throws IOException, InterruptedException {
        DashSegmentIndex index = representation.getIndex();
        if (index != null) {
            return index;
        }
        r rVar = (r) execute(new q(this, dataSource, i2, representation), z6);
        if (rVar == null) {
            return null;
        }
        return new DashWrappingSegmentIndex(rVar, representation.presentationTimeOffsetUs);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ RunnableFutureTask lambda$getSegmentIndex$0(final DataSource dataSource, final int i2, final Representation representation) {
        return new RunnableFutureTask<r, IOException>() { // from class: androidx.media3.exoplayer.dash.offline.DashDownloader.1
            @Override // androidx.media3.common.util.RunnableFutureTask
            public r doWork() throws IOException {
                return DashUtil.loadChunkIndex(dataSource, i2, representation);
            }
        };
    }

    @Deprecated
    public DashDownloader(MediaItem mediaItem, CacheDataSource.Factory factory) {
        this(mediaItem, factory, new a(0));
    }

    @Override // androidx.media3.exoplayer.offline.SegmentDownloader
    public List<SegmentDownloader.Segment> getSegments(DataSource dataSource, DashManifest dashManifest, boolean z6) throws IOException, InterruptedException {
        int i2;
        DashDownloader dashDownloader = this;
        ArrayList<SegmentDownloader.Segment> arrayList = new ArrayList<>();
        int i7 = 0;
        while (i7 < dashManifest.getPeriodCount()) {
            Period period = dashManifest.getPeriod(i7);
            long msToUs = Util.msToUs(period.startMs);
            long periodDurationUs = dashManifest.getPeriodDurationUs(i7);
            if (periodDurationUs != C.TIME_UNSET) {
                i2 = i7;
                if (msToUs + periodDurationUs <= dashDownloader.startPositionUs) {
                    continue;
                    i7 = i2 + 1;
                    dashDownloader = this;
                }
            } else {
                i2 = i7;
            }
            long j7 = dashDownloader.durationUs;
            if (j7 != C.TIME_UNSET && msToUs >= dashDownloader.startPositionUs + j7) {
                break;
            }
            List<AdaptationSet> list = period.adaptationSets;
            int i8 = 0;
            while (i8 < list.size()) {
                dashDownloader.addSegmentsForAdaptationSet(dataSource, list.get(i8), msToUs, periodDurationUs, z6, arrayList);
                i8++;
                dashDownloader = this;
            }
            i7 = i2 + 1;
            dashDownloader = this;
        }
        return arrayList;
    }

    @Deprecated
    public DashDownloader(MediaItem mediaItem, CacheDataSource.Factory factory, Executor executor) {
        this(mediaItem, new DashManifestParser(), factory, executor, 20000L, 0L, C.TIME_UNSET);
    }

    private DashDownloader(MediaItem mediaItem, ParsingLoadable.Parser<DashManifest> parser, CacheDataSource.Factory factory, Executor executor, long j7, long j8, long j9) {
        super(mediaItem, parser, factory, executor, j7, j8, j9);
        this.baseUrlExclusionList = new BaseUrlExclusionList();
    }
}
