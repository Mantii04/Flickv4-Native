package androidx.media3.exoplayer.dash;

import A.i;
import P3.v;
import S0.q;
import android.os.SystemClock;
import android.util.Pair;
import androidx.media3.common.C;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.UriUtil;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.HttpDataSource;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.LoadingInfo;
import androidx.media3.exoplayer.SeekParameters;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.dash.DashChunkSource;
import androidx.media3.exoplayer.dash.PlayerEmsgHandler;
import androidx.media3.exoplayer.dash.manifest.AdaptationSet;
import androidx.media3.exoplayer.dash.manifest.BaseUrl;
import androidx.media3.exoplayer.dash.manifest.DashManifest;
import androidx.media3.exoplayer.dash.manifest.RangedUri;
import androidx.media3.exoplayer.dash.manifest.Representation;
import androidx.media3.exoplayer.source.BehindLiveWindowException;
import androidx.media3.exoplayer.source.chunk.BaseMediaChunkIterator;
import androidx.media3.exoplayer.source.chunk.BundledChunkExtractor;
import androidx.media3.exoplayer.source.chunk.Chunk;
import androidx.media3.exoplayer.source.chunk.ChunkExtractor;
import androidx.media3.exoplayer.source.chunk.ChunkHolder;
import androidx.media3.exoplayer.source.chunk.ContainerMediaChunk;
import androidx.media3.exoplayer.source.chunk.InitializationChunk;
import androidx.media3.exoplayer.source.chunk.MediaChunk;
import androidx.media3.exoplayer.source.chunk.MediaChunkIterator;
import androidx.media3.exoplayer.source.chunk.SingleSampleMediaChunk;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy;
import androidx.media3.exoplayer.upstream.LoaderErrorThrower;
import com.google.common.collect.ImmutableMap;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import v0.r;

@UnstableApi
/* loaded from: classes.dex */
public class DefaultDashChunkSource implements DashChunkSource {
    private final int[] adaptationSetIndices;
    private final BaseUrlExclusionList baseUrlExclusionList;
    private final CmcdConfiguration cmcdConfiguration;
    private final DataSource dataSource;
    private final long elapsedRealtimeOffsetMs;
    private IOException fatalError;
    private long lastChunkRequestRealtimeMs = C.TIME_UNSET;
    private DashManifest manifest;
    private final LoaderErrorThrower manifestLoaderErrorThrower;
    private final int maxSegmentsPerLoad;
    private boolean missingLastSegment;
    private int periodIndex;
    private final PlayerEmsgHandler.PlayerTrackEmsgHandler playerTrackEmsgHandler;
    protected final RepresentationHolder[] representationHolders;
    private ExoTrackSelection trackSelection;
    private final int trackType;

    public static final class Factory implements DashChunkSource.Factory {
        private final ChunkExtractor.Factory chunkExtractorFactory;
        private final DataSource.Factory dataSourceFactory;
        private final int maxSegmentsPerLoad;

        public Factory(DataSource.Factory factory) {
            this(factory, 1);
        }

        @Override // androidx.media3.exoplayer.dash.DashChunkSource.Factory
        public DashChunkSource createDashChunkSource(LoaderErrorThrower loaderErrorThrower, DashManifest dashManifest, BaseUrlExclusionList baseUrlExclusionList, int i2, int[] iArr, ExoTrackSelection exoTrackSelection, int i7, long j7, boolean z6, List<Format> list, PlayerEmsgHandler.PlayerTrackEmsgHandler playerTrackEmsgHandler, TransferListener transferListener, PlayerId playerId, CmcdConfiguration cmcdConfiguration) {
            DataSource createDataSource = this.dataSourceFactory.createDataSource();
            if (transferListener != null) {
                createDataSource.addTransferListener(transferListener);
            }
            return new DefaultDashChunkSource(this.chunkExtractorFactory, loaderErrorThrower, dashManifest, baseUrlExclusionList, i2, iArr, exoTrackSelection, i7, createDataSource, j7, this.maxSegmentsPerLoad, z6, list, playerTrackEmsgHandler, playerId, cmcdConfiguration);
        }

        @Override // androidx.media3.exoplayer.dash.DashChunkSource.Factory
        public Format getOutputTextFormat(Format format) {
            return this.chunkExtractorFactory.getOutputTextFormat(format);
        }

        public Factory(DataSource.Factory factory, int i2) {
            this(new BundledChunkExtractor.Factory(), factory, i2);
        }

        @Override // androidx.media3.exoplayer.dash.DashChunkSource.Factory
        public Factory experimentalParseSubtitlesDuringExtraction(boolean z6) {
            this.chunkExtractorFactory.experimentalParseSubtitlesDuringExtraction(z6);
            return this;
        }

        @Override // androidx.media3.exoplayer.dash.DashChunkSource.Factory
        public Factory experimentalSetCodecsToParseWithinGopSampleDependencies(int i2) {
            this.chunkExtractorFactory.experimentalSetCodecsToParseWithinGopSampleDependencies(i2);
            return this;
        }

        @Override // androidx.media3.exoplayer.dash.DashChunkSource.Factory
        public Factory setSubtitleParserFactory(q qVar) {
            this.chunkExtractorFactory.setSubtitleParserFactory(qVar);
            return this;
        }

        public Factory(ChunkExtractor.Factory factory, DataSource.Factory factory2, int i2) {
            this.chunkExtractorFactory = factory;
            this.dataSourceFactory = factory2;
            this.maxSegmentsPerLoad = i2;
        }
    }

    public static final class RepresentationHolder {
        final ChunkExtractor chunkExtractor;
        private final long periodDurationUs;
        public final Representation representation;
        public final DashSegmentIndex segmentIndex;
        private final long segmentNumShift;
        public final BaseUrl selectedBaseUrl;

        public RepresentationHolder(long j7, Representation representation, BaseUrl baseUrl, ChunkExtractor chunkExtractor, long j8, DashSegmentIndex dashSegmentIndex) {
            this.periodDurationUs = j7;
            this.representation = representation;
            this.selectedBaseUrl = baseUrl;
            this.segmentNumShift = j8;
            this.chunkExtractor = chunkExtractor;
            this.segmentIndex = dashSegmentIndex;
        }

        public RepresentationHolder copyWithNewRepresentation(long j7, Representation representation) throws BehindLiveWindowException {
            long segmentNum;
            long segmentNum2;
            DashSegmentIndex index = this.representation.getIndex();
            DashSegmentIndex index2 = representation.getIndex();
            if (index == null) {
                return new RepresentationHolder(j7, representation, this.selectedBaseUrl, this.chunkExtractor, this.segmentNumShift, index);
            }
            if (!index.isExplicit()) {
                return new RepresentationHolder(j7, representation, this.selectedBaseUrl, this.chunkExtractor, this.segmentNumShift, index2);
            }
            long segmentCount = index.getSegmentCount(j7);
            if (segmentCount == 0) {
                return new RepresentationHolder(j7, representation, this.selectedBaseUrl, this.chunkExtractor, this.segmentNumShift, index2);
            }
            v.checkNotNull(index2);
            long firstSegmentNum = index.getFirstSegmentNum();
            long timeUs = index.getTimeUs(firstSegmentNum);
            long j8 = segmentCount + firstSegmentNum;
            long j9 = j8 - 1;
            long durationUs = index.getDurationUs(j9, j7) + index.getTimeUs(j9);
            long firstSegmentNum2 = index2.getFirstSegmentNum();
            long timeUs2 = index2.getTimeUs(firstSegmentNum2);
            long j10 = this.segmentNumShift;
            if (durationUs == timeUs2) {
                segmentNum = j8 - firstSegmentNum2;
            } else {
                if (durationUs < timeUs2) {
                    throw new BehindLiveWindowException();
                }
                if (timeUs2 < timeUs) {
                    segmentNum2 = j10 - (index2.getSegmentNum(timeUs, j7) - firstSegmentNum);
                    return new RepresentationHolder(j7, representation, this.selectedBaseUrl, this.chunkExtractor, segmentNum2, index2);
                }
                segmentNum = index.getSegmentNum(timeUs2, j7) - firstSegmentNum2;
            }
            segmentNum2 = segmentNum + j10;
            return new RepresentationHolder(j7, representation, this.selectedBaseUrl, this.chunkExtractor, segmentNum2, index2);
        }

        public RepresentationHolder copyWithNewSegmentIndex(DashSegmentIndex dashSegmentIndex) {
            return new RepresentationHolder(this.periodDurationUs, this.representation, this.selectedBaseUrl, this.chunkExtractor, this.segmentNumShift, dashSegmentIndex);
        }

        public RepresentationHolder copyWithNewSelectedBaseUrl(BaseUrl baseUrl) {
            return new RepresentationHolder(this.periodDurationUs, this.representation, baseUrl, this.chunkExtractor, this.segmentNumShift, this.segmentIndex);
        }

        public long getFirstAvailableSegmentNum(long j7) {
            return ((DashSegmentIndex) v.checkNotNull(this.segmentIndex)).getFirstAvailableSegmentNum(this.periodDurationUs, j7) + this.segmentNumShift;
        }

        public long getFirstSegmentNum() {
            return ((DashSegmentIndex) v.checkNotNull(this.segmentIndex)).getFirstSegmentNum() + this.segmentNumShift;
        }

        public long getLastAvailableSegmentNum(long j7) {
            return (((DashSegmentIndex) v.checkNotNull(this.segmentIndex)).getAvailableSegmentCount(this.periodDurationUs, j7) + getFirstAvailableSegmentNum(j7)) - 1;
        }

        public long getSegmentCount() {
            return ((DashSegmentIndex) v.checkNotNull(this.segmentIndex)).getSegmentCount(this.periodDurationUs);
        }

        public long getSegmentEndTimeUs(long j7) {
            return ((DashSegmentIndex) v.checkNotNull(this.segmentIndex)).getDurationUs(j7 - this.segmentNumShift, this.periodDurationUs) + getSegmentStartTimeUs(j7);
        }

        public long getSegmentNum(long j7) {
            return ((DashSegmentIndex) v.checkNotNull(this.segmentIndex)).getSegmentNum(j7, this.periodDurationUs) + this.segmentNumShift;
        }

        public long getSegmentStartTimeUs(long j7) {
            return ((DashSegmentIndex) v.checkNotNull(this.segmentIndex)).getTimeUs(j7 - this.segmentNumShift);
        }

        public RangedUri getSegmentUrl(long j7) {
            return ((DashSegmentIndex) v.checkNotNull(this.segmentIndex)).getSegmentUrl(j7 - this.segmentNumShift);
        }

        public boolean isSegmentAvailableAtFullNetworkSpeed(long j7, long j8) {
            return ((DashSegmentIndex) v.checkNotNull(this.segmentIndex)).isExplicit() || j8 == C.TIME_UNSET || getSegmentEndTimeUs(j7) <= j8;
        }
    }

    public static final class RepresentationSegmentIterator extends BaseMediaChunkIterator {
        private final long nowPeriodTimeUs;
        private final RepresentationHolder representationHolder;

        public RepresentationSegmentIterator(RepresentationHolder representationHolder, long j7, long j8, long j9) {
            super(j7, j8);
            this.representationHolder = representationHolder;
            this.nowPeriodTimeUs = j9;
        }

        @Override // androidx.media3.exoplayer.source.chunk.MediaChunkIterator
        public long getChunkEndTimeUs() {
            checkInBounds();
            return this.representationHolder.getSegmentEndTimeUs(getCurrentIndex());
        }

        @Override // androidx.media3.exoplayer.source.chunk.MediaChunkIterator
        public long getChunkStartTimeUs() {
            checkInBounds();
            return this.representationHolder.getSegmentStartTimeUs(getCurrentIndex());
        }

        @Override // androidx.media3.exoplayer.source.chunk.MediaChunkIterator
        public DataSpec getDataSpec() {
            checkInBounds();
            long currentIndex = getCurrentIndex();
            RangedUri segmentUrl = this.representationHolder.getSegmentUrl(currentIndex);
            int i2 = this.representationHolder.isSegmentAvailableAtFullNetworkSpeed(currentIndex, this.nowPeriodTimeUs) ? 0 : 8;
            RepresentationHolder representationHolder = this.representationHolder;
            return DashUtil.buildDataSpec(representationHolder.representation, representationHolder.selectedBaseUrl.url, segmentUrl, i2, ImmutableMap.of());
        }
    }

    public DefaultDashChunkSource(ChunkExtractor.Factory factory, LoaderErrorThrower loaderErrorThrower, DashManifest dashManifest, BaseUrlExclusionList baseUrlExclusionList, int i2, int[] iArr, ExoTrackSelection exoTrackSelection, int i7, DataSource dataSource, long j7, int i8, boolean z6, List<Format> list, PlayerEmsgHandler.PlayerTrackEmsgHandler playerTrackEmsgHandler, PlayerId playerId, CmcdConfiguration cmcdConfiguration) {
        this.manifestLoaderErrorThrower = loaderErrorThrower;
        this.manifest = dashManifest;
        this.baseUrlExclusionList = baseUrlExclusionList;
        this.adaptationSetIndices = iArr;
        this.trackSelection = exoTrackSelection;
        int i9 = i7;
        this.trackType = i9;
        this.dataSource = dataSource;
        this.periodIndex = i2;
        this.elapsedRealtimeOffsetMs = j7;
        this.maxSegmentsPerLoad = i8;
        PlayerEmsgHandler.PlayerTrackEmsgHandler playerTrackEmsgHandler2 = playerTrackEmsgHandler;
        this.playerTrackEmsgHandler = playerTrackEmsgHandler2;
        this.cmcdConfiguration = cmcdConfiguration;
        long periodDurationUs = dashManifest.getPeriodDurationUs(i2);
        ArrayList<Representation> representations = getRepresentations();
        this.representationHolders = new RepresentationHolder[exoTrackSelection.length()];
        int i10 = 0;
        while (i10 < this.representationHolders.length) {
            Representation representation = representations.get(exoTrackSelection.getIndexInTrackGroup(i10));
            BaseUrl selectBaseUrl = baseUrlExclusionList.selectBaseUrl(representation.baseUrls);
            RepresentationHolder[] representationHolderArr = this.representationHolders;
            BaseUrl baseUrl = selectBaseUrl == null ? representation.baseUrls.get(0) : selectBaseUrl;
            ChunkExtractor createProgressiveMediaExtractor = factory.createProgressiveMediaExtractor(i9, representation.format, z6, list, playerTrackEmsgHandler2, playerId);
            long j8 = periodDurationUs;
            int i11 = i10;
            representationHolderArr[i11] = new RepresentationHolder(j8, representation, baseUrl, createProgressiveMediaExtractor, 0L, representation.getIndex());
            i10 = i11 + 1;
            i9 = i7;
            periodDurationUs = j8;
            playerTrackEmsgHandler2 = playerTrackEmsgHandler;
        }
    }

    private LoadErrorHandlingPolicy.FallbackOptions createFallbackOptions(ExoTrackSelection exoTrackSelection, List<BaseUrl> list) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        int length = exoTrackSelection.length();
        int i2 = 0;
        for (int i7 = 0; i7 < length; i7++) {
            if (exoTrackSelection.isTrackExcluded(i7, elapsedRealtime)) {
                i2++;
            }
        }
        int priorityCount = BaseUrlExclusionList.getPriorityCount(list);
        return new LoadErrorHandlingPolicy.FallbackOptions(priorityCount, priorityCount - this.baseUrlExclusionList.getPriorityCountAfterExclusion(list), length, i2);
    }

    private long getAvailableLiveDurationUs(long j7, long j8) {
        if (!this.manifest.dynamic || this.representationHolders[0].getSegmentCount() == 0) {
            return C.TIME_UNSET;
        }
        return Math.max(0L, Math.min(getNowPeriodTimeUs(j7), this.representationHolders[0].getSegmentEndTimeUs(this.representationHolders[0].getLastAvailableSegmentNum(j7))) - j8);
    }

    private Pair<String, String> getNextObjectAndRangeRequest(long j7, RangedUri rangedUri, RepresentationHolder representationHolder) {
        long j8 = j7 + 1;
        if (j8 >= representationHolder.getSegmentCount()) {
            return null;
        }
        RangedUri segmentUrl = representationHolder.getSegmentUrl(j8);
        String relativePath = UriUtil.getRelativePath(rangedUri.resolveUri(representationHolder.selectedBaseUrl.url), segmentUrl.resolveUri(representationHolder.selectedBaseUrl.url));
        String n7 = i.n(new StringBuilder(), segmentUrl.start, "-");
        if (segmentUrl.length != -1) {
            StringBuilder o6 = b.c.o(n7);
            o6.append(segmentUrl.start + segmentUrl.length);
            n7 = o6.toString();
        }
        return new Pair<>(relativePath, n7);
    }

    private long getNowPeriodTimeUs(long j7) {
        DashManifest dashManifest = this.manifest;
        long j8 = dashManifest.availabilityStartTimeMs;
        return j8 == C.TIME_UNSET ? C.TIME_UNSET : j7 - Util.msToUs(j8 + dashManifest.getPeriod(this.periodIndex).startMs);
    }

    private ArrayList<Representation> getRepresentations() {
        List<AdaptationSet> list = this.manifest.getPeriod(this.periodIndex).adaptationSets;
        ArrayList<Representation> arrayList = new ArrayList<>();
        for (int i2 : this.adaptationSetIndices) {
            arrayList.addAll(list.get(i2).representations);
        }
        return arrayList;
    }

    private long getSegmentNum(RepresentationHolder representationHolder, MediaChunk mediaChunk, long j7, long j8, long j9) {
        return mediaChunk != null ? mediaChunk.getNextChunkIndex() : Util.constrainValue(representationHolder.getSegmentNum(j7), j8, j9);
    }

    private RepresentationHolder updateSelectedBaseUrl(int i2) {
        RepresentationHolder representationHolder = this.representationHolders[i2];
        BaseUrl selectBaseUrl = this.baseUrlExclusionList.selectBaseUrl(representationHolder.representation.baseUrls);
        if (selectBaseUrl == null || selectBaseUrl.equals(representationHolder.selectedBaseUrl)) {
            return representationHolder;
        }
        RepresentationHolder copyWithNewSelectedBaseUrl = representationHolder.copyWithNewSelectedBaseUrl(selectBaseUrl);
        this.representationHolders[i2] = copyWithNewSelectedBaseUrl;
        return copyWithNewSelectedBaseUrl;
    }

    @Override // androidx.media3.exoplayer.source.chunk.ChunkSource
    public long getAdjustedSeekPositionUs(long j7, SeekParameters seekParameters) {
        long j8 = j7;
        RepresentationHolder[] representationHolderArr = this.representationHolders;
        int length = representationHolderArr.length;
        int i2 = 0;
        while (i2 < length) {
            RepresentationHolder representationHolder = representationHolderArr[i2];
            if (representationHolder.segmentIndex != null) {
                long segmentCount = representationHolder.getSegmentCount();
                if (segmentCount != 0) {
                    long segmentNum = representationHolder.getSegmentNum(j8);
                    long segmentStartTimeUs = representationHolder.getSegmentStartTimeUs(segmentNum);
                    return seekParameters.resolveSeekPositionUs(j8, segmentStartTimeUs, (segmentStartTimeUs >= j8 || (segmentCount != -1 && segmentNum >= (representationHolder.getFirstSegmentNum() + segmentCount) - 1)) ? segmentStartTimeUs : representationHolder.getSegmentStartTimeUs(segmentNum + 1));
                }
            }
            i2++;
            j8 = j7;
        }
        return j7;
    }

    @Override // androidx.media3.exoplayer.source.chunk.ChunkSource
    public void getNextChunk(LoadingInfo loadingInfo, long j7, List<? extends MediaChunk> list, ChunkHolder chunkHolder) {
        MediaChunkIterator[] mediaChunkIteratorArr;
        boolean z6;
        int i2;
        int i7;
        DefaultDashChunkSource defaultDashChunkSource;
        MediaChunk mediaChunk;
        long j8;
        DefaultDashChunkSource defaultDashChunkSource2 = this;
        if (defaultDashChunkSource2.fatalError != null) {
            return;
        }
        long j9 = loadingInfo.playbackPositionUs;
        long j10 = j7 - j9;
        long msToUs = Util.msToUs(defaultDashChunkSource2.manifest.getPeriod(defaultDashChunkSource2.periodIndex).startMs) + Util.msToUs(defaultDashChunkSource2.manifest.availabilityStartTimeMs) + j7;
        PlayerEmsgHandler.PlayerTrackEmsgHandler playerTrackEmsgHandler = defaultDashChunkSource2.playerTrackEmsgHandler;
        if (playerTrackEmsgHandler == null || !playerTrackEmsgHandler.maybeRefreshManifestBeforeLoadingNextChunk(msToUs)) {
            long msToUs2 = Util.msToUs(Util.getNowUnixTimeMs(defaultDashChunkSource2.elapsedRealtimeOffsetMs));
            long nowPeriodTimeUs = defaultDashChunkSource2.getNowPeriodTimeUs(msToUs2);
            boolean z7 = true;
            MediaChunk mediaChunk2 = list.isEmpty() ? null : (MediaChunk) i.c(1, list);
            int length = defaultDashChunkSource2.trackSelection.length();
            MediaChunkIterator[] mediaChunkIteratorArr2 = new MediaChunkIterator[length];
            int i8 = 0;
            while (i8 < length) {
                RepresentationHolder representationHolder = defaultDashChunkSource2.representationHolders[i8];
                if (representationHolder.segmentIndex == null) {
                    mediaChunkIteratorArr2[i8] = MediaChunkIterator.EMPTY;
                    defaultDashChunkSource = defaultDashChunkSource2;
                    z6 = z7;
                    mediaChunk = mediaChunk2;
                    i7 = length;
                    mediaChunkIteratorArr = mediaChunkIteratorArr2;
                    i2 = i8;
                } else {
                    mediaChunkIteratorArr = mediaChunkIteratorArr2;
                    long firstAvailableSegmentNum = representationHolder.getFirstAvailableSegmentNum(msToUs2);
                    long lastAvailableSegmentNum = representationHolder.getLastAvailableSegmentNum(msToUs2);
                    z6 = z7;
                    MediaChunk mediaChunk3 = mediaChunk2;
                    i2 = i8;
                    i7 = length;
                    long segmentNum = defaultDashChunkSource2.getSegmentNum(representationHolder, mediaChunk3, j7, firstAvailableSegmentNum, lastAvailableSegmentNum);
                    defaultDashChunkSource = defaultDashChunkSource2;
                    mediaChunk = mediaChunk3;
                    if (segmentNum < firstAvailableSegmentNum) {
                        mediaChunkIteratorArr[i2] = MediaChunkIterator.EMPTY;
                    } else {
                        long j11 = nowPeriodTimeUs;
                        j8 = j11;
                        mediaChunkIteratorArr[i2] = new RepresentationSegmentIterator(defaultDashChunkSource.updateSelectedBaseUrl(i2), segmentNum, lastAvailableSegmentNum, j11);
                        i8 = i2 + 1;
                        defaultDashChunkSource2 = defaultDashChunkSource;
                        length = i7;
                        mediaChunkIteratorArr2 = mediaChunkIteratorArr;
                        z7 = z6;
                        mediaChunk2 = mediaChunk;
                        nowPeriodTimeUs = j8;
                    }
                }
                j8 = nowPeriodTimeUs;
                i8 = i2 + 1;
                defaultDashChunkSource2 = defaultDashChunkSource;
                length = i7;
                mediaChunkIteratorArr2 = mediaChunkIteratorArr;
                z7 = z6;
                mediaChunk2 = mediaChunk;
                nowPeriodTimeUs = j8;
            }
            DefaultDashChunkSource defaultDashChunkSource3 = defaultDashChunkSource2;
            boolean z8 = z7;
            MediaChunk mediaChunk4 = mediaChunk2;
            long j12 = nowPeriodTimeUs;
            defaultDashChunkSource3.trackSelection.updateSelectedTrack(j9, j10, defaultDashChunkSource3.getAvailableLiveDurationUs(msToUs2, j9), list, mediaChunkIteratorArr2);
            int selectedIndex = defaultDashChunkSource3.trackSelection.getSelectedIndex();
            CmcdData.Factory isBufferEmpty = defaultDashChunkSource3.cmcdConfiguration == null ? null : new CmcdData.Factory(defaultDashChunkSource3.cmcdConfiguration, "d").setTrackSelection(defaultDashChunkSource3.trackSelection).setBufferedDurationUs(Math.max(0L, j10)).setPlaybackRate(loadingInfo.playbackSpeed).setIsLive(defaultDashChunkSource3.manifest.dynamic).setDidRebuffer(loadingInfo.rebufferedSince(defaultDashChunkSource3.lastChunkRequestRealtimeMs)).setIsBufferEmpty(list.isEmpty());
            defaultDashChunkSource3.lastChunkRequestRealtimeMs = SystemClock.elapsedRealtime();
            RepresentationHolder updateSelectedBaseUrl = defaultDashChunkSource3.updateSelectedBaseUrl(selectedIndex);
            ChunkExtractor chunkExtractor = updateSelectedBaseUrl.chunkExtractor;
            if (chunkExtractor != null) {
                Representation representation = updateSelectedBaseUrl.representation;
                RangedUri initializationUri = chunkExtractor.getSampleFormats() == null ? representation.getInitializationUri() : null;
                RangedUri indexUri = updateSelectedBaseUrl.segmentIndex == null ? representation.getIndexUri() : null;
                if (initializationUri != null || indexUri != null) {
                    chunkHolder.chunk = defaultDashChunkSource3.newInitializationChunk(updateSelectedBaseUrl, defaultDashChunkSource3.dataSource, defaultDashChunkSource3.trackSelection.getSelectedFormat(), defaultDashChunkSource3.trackSelection.getSelectionReason(), defaultDashChunkSource3.trackSelection.getSelectionData(), initializationUri, indexUri, isBufferEmpty);
                    return;
                }
            }
            long j13 = updateSelectedBaseUrl.periodDurationUs;
            DashManifest dashManifest = defaultDashChunkSource3.manifest;
            boolean z9 = (dashManifest.dynamic && defaultDashChunkSource3.periodIndex == dashManifest.getPeriodCount() + (-1)) ? z8 : false;
            boolean z10 = (z9 && j13 == C.TIME_UNSET) ? false : z8;
            if (updateSelectedBaseUrl.getSegmentCount() == 0) {
                chunkHolder.endOfStream = z10;
                return;
            }
            long firstAvailableSegmentNum2 = updateSelectedBaseUrl.getFirstAvailableSegmentNum(msToUs2);
            long lastAvailableSegmentNum2 = updateSelectedBaseUrl.getLastAvailableSegmentNum(msToUs2);
            if (z9) {
                long segmentEndTimeUs = updateSelectedBaseUrl.getSegmentEndTimeUs(lastAvailableSegmentNum2);
                z10 &= (segmentEndTimeUs - updateSelectedBaseUrl.getSegmentStartTimeUs(lastAvailableSegmentNum2)) + segmentEndTimeUs >= j13 ? z8 : false;
            }
            boolean z11 = z10;
            long segmentNum2 = defaultDashChunkSource3.getSegmentNum(updateSelectedBaseUrl, mediaChunk4, j7, firstAvailableSegmentNum2, lastAvailableSegmentNum2);
            if (segmentNum2 < firstAvailableSegmentNum2) {
                defaultDashChunkSource3.fatalError = new BehindLiveWindowException();
                return;
            }
            if (segmentNum2 > lastAvailableSegmentNum2 || (defaultDashChunkSource3.missingLastSegment && segmentNum2 >= lastAvailableSegmentNum2)) {
                chunkHolder.endOfStream = z11;
                return;
            }
            if (z11 && updateSelectedBaseUrl.getSegmentStartTimeUs(segmentNum2) >= j13) {
                chunkHolder.endOfStream = z8;
                return;
            }
            int min = (int) Math.min(defaultDashChunkSource3.maxSegmentsPerLoad, (lastAvailableSegmentNum2 - segmentNum2) + 1);
            if (j13 != C.TIME_UNSET) {
                while (min > 1 && updateSelectedBaseUrl.getSegmentStartTimeUs((min + segmentNum2) - 1) >= j13) {
                    min--;
                }
            }
            chunkHolder.chunk = defaultDashChunkSource3.newMediaChunk(updateSelectedBaseUrl, defaultDashChunkSource3.dataSource, defaultDashChunkSource3.trackType, defaultDashChunkSource3.trackSelection.getSelectedFormat(), defaultDashChunkSource3.trackSelection.getSelectionReason(), defaultDashChunkSource3.trackSelection.getSelectionData(), segmentNum2, min, list.isEmpty() ? j7 : -9223372036854775807L, j12, isBufferEmpty);
        }
    }

    @Override // androidx.media3.exoplayer.source.chunk.ChunkSource
    public int getPreferredQueueSize(long j7, List<? extends MediaChunk> list) {
        return (this.fatalError != null || this.trackSelection.length() < 2) ? list.size() : this.trackSelection.evaluateQueueSize(j7, list);
    }

    @Override // androidx.media3.exoplayer.source.chunk.ChunkSource
    public void maybeThrowError() throws IOException {
        IOException iOException = this.fatalError;
        if (iOException != null) {
            throw iOException;
        }
        this.manifestLoaderErrorThrower.maybeThrowError();
    }

    public Chunk newInitializationChunk(RepresentationHolder representationHolder, DataSource dataSource, Format format, int i2, Object obj, RangedUri rangedUri, RangedUri rangedUri2, CmcdData.Factory factory) {
        Representation representation = representationHolder.representation;
        if (rangedUri != null) {
            RangedUri attemptMerge = rangedUri.attemptMerge(rangedUri2, representationHolder.selectedBaseUrl.url);
            if (attemptMerge != null) {
                rangedUri = attemptMerge;
            }
        } else {
            rangedUri = (RangedUri) v.checkNotNull(rangedUri2);
        }
        DataSpec buildDataSpec = DashUtil.buildDataSpec(representation, representationHolder.selectedBaseUrl.url, rangedUri, 0, ImmutableMap.of());
        if (factory != null) {
            buildDataSpec = factory.setObjectType(CmcdData.OBJECT_TYPE_INIT_SEGMENT).createCmcdData().addToDataSpec(buildDataSpec);
        }
        return new InitializationChunk(dataSource, buildDataSpec, format, i2, obj, representationHolder.chunkExtractor);
    }

    public Chunk newMediaChunk(RepresentationHolder representationHolder, DataSource dataSource, int i2, Format format, int i7, Object obj, long j7, int i8, long j8, long j9, CmcdData.Factory factory) {
        Representation representation = representationHolder.representation;
        long segmentStartTimeUs = representationHolder.getSegmentStartTimeUs(j7);
        RangedUri segmentUrl = representationHolder.getSegmentUrl(j7);
        if (representationHolder.chunkExtractor == null) {
            long segmentEndTimeUs = representationHolder.getSegmentEndTimeUs(j7);
            DataSpec buildDataSpec = DashUtil.buildDataSpec(representation, representationHolder.selectedBaseUrl.url, segmentUrl, representationHolder.isSegmentAvailableAtFullNetworkSpeed(j7, j9) ? 0 : 8, ImmutableMap.of());
            if (factory != null) {
                factory.setChunkDurationUs(segmentEndTimeUs - segmentStartTimeUs);
                Pair<String, String> nextObjectAndRangeRequest = getNextObjectAndRangeRequest(j7, segmentUrl, representationHolder);
                if (nextObjectAndRangeRequest != null) {
                    factory.setNextObjectRequest((String) nextObjectAndRangeRequest.first).setNextRangeRequest((String) nextObjectAndRangeRequest.second);
                }
                buildDataSpec = factory.createCmcdData().addToDataSpec(buildDataSpec);
            }
            return new SingleSampleMediaChunk(dataSource, buildDataSpec, format, i7, obj, segmentStartTimeUs, segmentEndTimeUs, j7, i2, format);
        }
        int i9 = 1;
        int i10 = 1;
        while (i9 < i8) {
            RangedUri attemptMerge = segmentUrl.attemptMerge(representationHolder.getSegmentUrl(i9 + j7), representationHolder.selectedBaseUrl.url);
            if (attemptMerge == null) {
                break;
            }
            i10++;
            i9++;
            segmentUrl = attemptMerge;
        }
        long j10 = (i10 + j7) - 1;
        int i11 = i10;
        long segmentEndTimeUs2 = representationHolder.getSegmentEndTimeUs(j10);
        long j11 = representationHolder.periodDurationUs;
        if (j11 == C.TIME_UNSET || j11 > segmentEndTimeUs2) {
            j11 = -9223372036854775807L;
        }
        DataSpec buildDataSpec2 = DashUtil.buildDataSpec(representation, representationHolder.selectedBaseUrl.url, segmentUrl, representationHolder.isSegmentAvailableAtFullNetworkSpeed(j10, j9) ? 0 : 8, ImmutableMap.of());
        if (factory != null) {
            factory.setChunkDurationUs(segmentEndTimeUs2 - segmentStartTimeUs);
            Pair<String, String> nextObjectAndRangeRequest2 = getNextObjectAndRangeRequest(j7, segmentUrl, representationHolder);
            if (nextObjectAndRangeRequest2 != null) {
                factory.setNextObjectRequest((String) nextObjectAndRangeRequest2.first).setNextRangeRequest((String) nextObjectAndRangeRequest2.second);
            }
            buildDataSpec2 = factory.createCmcdData().addToDataSpec(buildDataSpec2);
        }
        DataSpec dataSpec = buildDataSpec2;
        long j12 = -representation.presentationTimeOffsetUs;
        if (MimeTypes.isImage(format.sampleMimeType)) {
            j12 += segmentStartTimeUs;
        }
        return new ContainerMediaChunk(dataSource, dataSpec, format, i7, obj, segmentStartTimeUs, segmentEndTimeUs2, j8, j11, j7, i11, j12, representationHolder.chunkExtractor);
    }

    @Override // androidx.media3.exoplayer.source.chunk.ChunkSource
    public void onChunkLoadCompleted(Chunk chunk) {
        r chunkIndex;
        if (chunk instanceof InitializationChunk) {
            int indexOf = this.trackSelection.indexOf(((InitializationChunk) chunk).trackFormat);
            RepresentationHolder representationHolder = this.representationHolders[indexOf];
            if (representationHolder.segmentIndex == null && (chunkIndex = ((ChunkExtractor) v.checkNotNull(representationHolder.chunkExtractor)).getChunkIndex()) != null) {
                this.representationHolders[indexOf] = representationHolder.copyWithNewSegmentIndex(new DashWrappingSegmentIndex(chunkIndex, representationHolder.representation.presentationTimeOffsetUs));
            }
        }
        PlayerEmsgHandler.PlayerTrackEmsgHandler playerTrackEmsgHandler = this.playerTrackEmsgHandler;
        if (playerTrackEmsgHandler != null) {
            playerTrackEmsgHandler.onChunkLoadCompleted(chunk);
        }
    }

    @Override // androidx.media3.exoplayer.source.chunk.ChunkSource
    public boolean onChunkLoadError(Chunk chunk, boolean z6, LoadErrorHandlingPolicy.LoadErrorInfo loadErrorInfo, LoadErrorHandlingPolicy loadErrorHandlingPolicy) {
        LoadErrorHandlingPolicy.FallbackSelection fallbackSelectionFor;
        if (!z6) {
            return false;
        }
        PlayerEmsgHandler.PlayerTrackEmsgHandler playerTrackEmsgHandler = this.playerTrackEmsgHandler;
        if (playerTrackEmsgHandler != null && playerTrackEmsgHandler.onChunkLoadError(chunk)) {
            return true;
        }
        if (!this.manifest.dynamic && (chunk instanceof MediaChunk)) {
            IOException iOException = loadErrorInfo.exception;
            if ((iOException instanceof HttpDataSource.InvalidResponseCodeException) && ((HttpDataSource.InvalidResponseCodeException) iOException).responseCode == 404) {
                RepresentationHolder representationHolder = this.representationHolders[this.trackSelection.indexOf(chunk.trackFormat)];
                long segmentCount = representationHolder.getSegmentCount();
                if (segmentCount != -1 && segmentCount != 0) {
                    if (((MediaChunk) chunk).getNextChunkIndex() > (representationHolder.getFirstSegmentNum() + segmentCount) - 1) {
                        this.missingLastSegment = true;
                        return true;
                    }
                }
            }
        }
        RepresentationHolder representationHolder2 = this.representationHolders[this.trackSelection.indexOf(chunk.trackFormat)];
        BaseUrl selectBaseUrl = this.baseUrlExclusionList.selectBaseUrl(representationHolder2.representation.baseUrls);
        if (selectBaseUrl != null && !representationHolder2.selectedBaseUrl.equals(selectBaseUrl)) {
            return true;
        }
        LoadErrorHandlingPolicy.FallbackOptions createFallbackOptions = createFallbackOptions(this.trackSelection, representationHolder2.representation.baseUrls);
        if ((createFallbackOptions.isFallbackAvailable(2) || createFallbackOptions.isFallbackAvailable(1)) && (fallbackSelectionFor = loadErrorHandlingPolicy.getFallbackSelectionFor(createFallbackOptions, loadErrorInfo)) != null && createFallbackOptions.isFallbackAvailable(fallbackSelectionFor.type)) {
            int i2 = fallbackSelectionFor.type;
            if (i2 == 2) {
                ExoTrackSelection exoTrackSelection = this.trackSelection;
                return exoTrackSelection.excludeTrack(exoTrackSelection.indexOf(chunk.trackFormat), fallbackSelectionFor.exclusionDurationMs);
            }
            if (i2 == 1) {
                this.baseUrlExclusionList.exclude(representationHolder2.selectedBaseUrl, fallbackSelectionFor.exclusionDurationMs);
                return true;
            }
        }
        return false;
    }

    @Override // androidx.media3.exoplayer.source.chunk.ChunkSource
    public void release() {
        for (RepresentationHolder representationHolder : this.representationHolders) {
            ChunkExtractor chunkExtractor = representationHolder.chunkExtractor;
            if (chunkExtractor != null) {
                chunkExtractor.release();
            }
        }
    }

    @Override // androidx.media3.exoplayer.source.chunk.ChunkSource
    public boolean shouldCancelLoad(long j7, Chunk chunk, List<? extends MediaChunk> list) {
        if (this.fatalError != null) {
            return false;
        }
        return this.trackSelection.shouldCancelChunkLoad(j7, chunk, list);
    }

    @Override // androidx.media3.exoplayer.dash.DashChunkSource
    public void updateManifest(DashManifest dashManifest, int i2) {
        try {
            this.manifest = dashManifest;
            this.periodIndex = i2;
            long periodDurationUs = dashManifest.getPeriodDurationUs(i2);
            ArrayList<Representation> representations = getRepresentations();
            for (int i7 = 0; i7 < this.representationHolders.length; i7++) {
                Representation representation = representations.get(this.trackSelection.getIndexInTrackGroup(i7));
                RepresentationHolder[] representationHolderArr = this.representationHolders;
                representationHolderArr[i7] = representationHolderArr[i7].copyWithNewRepresentation(periodDurationUs, representation);
            }
        } catch (BehindLiveWindowException e3) {
            this.fatalError = e3;
        }
    }

    @Override // androidx.media3.exoplayer.dash.DashChunkSource
    public void updateTrackSelection(ExoTrackSelection exoTrackSelection) {
        this.trackSelection = exoTrackSelection;
    }
}
