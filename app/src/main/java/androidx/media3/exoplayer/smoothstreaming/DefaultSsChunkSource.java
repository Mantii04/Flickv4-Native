package androidx.media3.exoplayer.smoothstreaming;

import A.i;
import P0.J;
import P0.K;
import P0.u;
import P3.v;
import S0.e;
import S0.q;
import android.net.Uri;
import android.os.SystemClock;
import androidx.media3.common.C;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.UriUtil;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.LoadingInfo;
import androidx.media3.exoplayer.SeekParameters;
import androidx.media3.exoplayer.smoothstreaming.SsChunkSource;
import androidx.media3.exoplayer.smoothstreaming.manifest.SsManifest;
import androidx.media3.exoplayer.source.BehindLiveWindowException;
import androidx.media3.exoplayer.source.chunk.BaseMediaChunkIterator;
import androidx.media3.exoplayer.source.chunk.BundledChunkExtractor;
import androidx.media3.exoplayer.source.chunk.Chunk;
import androidx.media3.exoplayer.source.chunk.ChunkExtractor;
import androidx.media3.exoplayer.source.chunk.ChunkHolder;
import androidx.media3.exoplayer.source.chunk.ContainerMediaChunk;
import androidx.media3.exoplayer.source.chunk.MediaChunk;
import androidx.media3.exoplayer.source.chunk.MediaChunkIterator;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.trackselection.TrackSelectionUtil;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy;
import androidx.media3.exoplayer.upstream.LoaderErrorThrower;
import com.google.common.collect.ImmutableList;
import java.io.IOException;
import java.util.List;
import org.apache.commons.lang3.StringUtils;

@UnstableApi
/* loaded from: classes.dex */
public class DefaultSsChunkSource implements SsChunkSource {
    private final ChunkExtractor[] chunkExtractors;
    private final CmcdConfiguration cmcdConfiguration;
    private int currentManifestChunkOffset;
    private final DataSource dataSource;
    private IOException fatalError;
    private long lastChunkRequestRealtimeMs = C.TIME_UNSET;
    private SsManifest manifest;
    private final LoaderErrorThrower manifestLoaderErrorThrower;
    private final int streamElementIndex;
    private ExoTrackSelection trackSelection;

    public static final class Factory implements SsChunkSource.Factory {
        private final DataSource.Factory dataSourceFactory;
        private boolean parseSubtitlesDuringExtraction;
        private q subtitleParserFactory = new e();

        public Factory(DataSource.Factory factory) {
            this.dataSourceFactory = factory;
        }

        @Override // androidx.media3.exoplayer.smoothstreaming.SsChunkSource.Factory
        public SsChunkSource createChunkSource(LoaderErrorThrower loaderErrorThrower, SsManifest ssManifest, int i2, ExoTrackSelection exoTrackSelection, TransferListener transferListener, CmcdConfiguration cmcdConfiguration) {
            DataSource createDataSource = this.dataSourceFactory.createDataSource();
            if (transferListener != null) {
                createDataSource.addTransferListener(transferListener);
            }
            return new DefaultSsChunkSource(loaderErrorThrower, ssManifest, i2, exoTrackSelection, createDataSource, cmcdConfiguration, this.subtitleParserFactory, this.parseSubtitlesDuringExtraction);
        }

        @Override // androidx.media3.exoplayer.smoothstreaming.SsChunkSource.Factory
        public Format getOutputTextFormat(Format format) {
            String str;
            if (!this.parseSubtitlesDuringExtraction || !this.subtitleParserFactory.supportsFormat(format)) {
                return format;
            }
            Format.Builder cueReplacementBehavior = format.buildUpon().setSampleMimeType(MimeTypes.APPLICATION_MEDIA3_CUES).setCueReplacementBehavior(this.subtitleParserFactory.getCueReplacementBehavior(format));
            StringBuilder sb = new StringBuilder();
            sb.append(format.sampleMimeType);
            if (format.codecs != null) {
                str = StringUtils.SPACE + format.codecs;
            } else {
                str = "";
            }
            sb.append(str);
            return cueReplacementBehavior.setCodecs(sb.toString()).setSubsampleOffsetUs(Long.MAX_VALUE).build();
        }

        @Override // androidx.media3.exoplayer.smoothstreaming.SsChunkSource.Factory
        public Factory experimentalParseSubtitlesDuringExtraction(boolean z6) {
            this.parseSubtitlesDuringExtraction = z6;
            return this;
        }

        @Override // androidx.media3.exoplayer.smoothstreaming.SsChunkSource.Factory
        public Factory setSubtitleParserFactory(q qVar) {
            this.subtitleParserFactory = qVar;
            return this;
        }
    }

    public static final class StreamElementIterator extends BaseMediaChunkIterator {
        private final SsManifest.StreamElement streamElement;
        private final int trackIndex;

        public StreamElementIterator(SsManifest.StreamElement streamElement, int i2, int i7) {
            super(i7, streamElement.chunkCount - 1);
            this.streamElement = streamElement;
            this.trackIndex = i2;
        }

        @Override // androidx.media3.exoplayer.source.chunk.MediaChunkIterator
        public long getChunkEndTimeUs() {
            return this.streamElement.getChunkDurationUs((int) getCurrentIndex()) + getChunkStartTimeUs();
        }

        @Override // androidx.media3.exoplayer.source.chunk.MediaChunkIterator
        public long getChunkStartTimeUs() {
            checkInBounds();
            return this.streamElement.getStartTimeUs((int) getCurrentIndex());
        }

        @Override // androidx.media3.exoplayer.source.chunk.MediaChunkIterator
        public DataSpec getDataSpec() {
            checkInBounds();
            return new DataSpec(this.streamElement.buildRequestUri(this.trackIndex, (int) getCurrentIndex()));
        }
    }

    public DefaultSsChunkSource(LoaderErrorThrower loaderErrorThrower, SsManifest ssManifest, int i2, ExoTrackSelection exoTrackSelection, DataSource dataSource, CmcdConfiguration cmcdConfiguration, q qVar, boolean z6) {
        this.manifestLoaderErrorThrower = loaderErrorThrower;
        this.manifest = ssManifest;
        this.streamElementIndex = i2;
        this.trackSelection = exoTrackSelection;
        this.dataSource = dataSource;
        this.cmcdConfiguration = cmcdConfiguration;
        SsManifest.StreamElement streamElement = ssManifest.streamElements[i2];
        this.chunkExtractors = new ChunkExtractor[exoTrackSelection.length()];
        for (int i7 = 0; i7 < this.chunkExtractors.length; i7++) {
            int indexInTrackGroup = exoTrackSelection.getIndexInTrackGroup(i7);
            Format format = streamElement.formats[indexInTrackGroup];
            K[] kArr = format.drmInitData != null ? ((SsManifest.ProtectionElement) v.checkNotNull(ssManifest.protectionElement)).trackEncryptionBoxes : null;
            int i8 = streamElement.type;
            int i9 = i8 == 2 ? 4 : 0;
            long j7 = streamElement.timescale;
            long j8 = ssManifest.durationUs;
            this.chunkExtractors[i7] = new BundledChunkExtractor(new u(qVar, !z6 ? 35 : 3, null, new J(indexInTrackGroup, i8, j7, C.TIME_UNSET, j8, j8, format, 0, kArr, i9, null, null), ImmutableList.of(), null), streamElement.type, format);
        }
    }

    private static MediaChunk newMediaChunk(Format format, DataSource dataSource, Uri uri, int i2, long j7, long j8, long j9, int i7, Object obj, ChunkExtractor chunkExtractor, CmcdData.Factory factory) {
        DataSpec build = new DataSpec.Builder().setUri(uri).build();
        if (factory != null) {
            build = factory.createCmcdData().addToDataSpec(build);
        }
        return new ContainerMediaChunk(dataSource, build, format, i7, obj, j7, j8, j9, C.TIME_UNSET, i2, 1, j7, chunkExtractor);
    }

    private long resolveTimeToLiveEdgeUs(long j7) {
        SsManifest ssManifest = this.manifest;
        if (!ssManifest.isLive) {
            return C.TIME_UNSET;
        }
        SsManifest.StreamElement streamElement = ssManifest.streamElements[this.streamElementIndex];
        int i2 = streamElement.chunkCount - 1;
        return (streamElement.getChunkDurationUs(i2) + streamElement.getStartTimeUs(i2)) - j7;
    }

    @Override // androidx.media3.exoplayer.source.chunk.ChunkSource
    public long getAdjustedSeekPositionUs(long j7, SeekParameters seekParameters) {
        SsManifest.StreamElement streamElement = this.manifest.streamElements[this.streamElementIndex];
        int chunkIndex = streamElement.getChunkIndex(j7);
        long startTimeUs = streamElement.getStartTimeUs(chunkIndex);
        return seekParameters.resolveSeekPositionUs(j7, startTimeUs, (startTimeUs >= j7 || chunkIndex >= streamElement.chunkCount + (-1)) ? startTimeUs : streamElement.getStartTimeUs(chunkIndex + 1));
    }

    @Override // androidx.media3.exoplayer.source.chunk.ChunkSource
    public final void getNextChunk(LoadingInfo loadingInfo, long j7, List<? extends MediaChunk> list, ChunkHolder chunkHolder) {
        List<? extends MediaChunk> list2;
        int nextChunkIndex;
        CmcdData.Factory factory;
        if (this.fatalError != null) {
            return;
        }
        SsManifest.StreamElement streamElement = this.manifest.streamElements[this.streamElementIndex];
        if (streamElement.chunkCount == 0) {
            chunkHolder.endOfStream = !r5.isLive;
            return;
        }
        if (list.isEmpty()) {
            nextChunkIndex = streamElement.getChunkIndex(j7);
            list2 = list;
        } else {
            list2 = list;
            nextChunkIndex = (int) (((MediaChunk) i.c(1, list2)).getNextChunkIndex() - this.currentManifestChunkOffset);
            if (nextChunkIndex < 0) {
                this.fatalError = new BehindLiveWindowException();
                return;
            }
        }
        if (nextChunkIndex >= streamElement.chunkCount) {
            chunkHolder.endOfStream = !this.manifest.isLive;
            return;
        }
        long j8 = loadingInfo.playbackPositionUs;
        long j9 = j7 - j8;
        long resolveTimeToLiveEdgeUs = resolveTimeToLiveEdgeUs(j8);
        int length = this.trackSelection.length();
        MediaChunkIterator[] mediaChunkIteratorArr = new MediaChunkIterator[length];
        int i2 = 0;
        while (i2 < length) {
            int i7 = i2;
            mediaChunkIteratorArr[i7] = new StreamElementIterator(streamElement, this.trackSelection.getIndexInTrackGroup(i2), nextChunkIndex);
            i2 = i7 + 1;
        }
        this.trackSelection.updateSelectedTrack(j8, j9, resolveTimeToLiveEdgeUs, list2, mediaChunkIteratorArr);
        long startTimeUs = streamElement.getStartTimeUs(nextChunkIndex);
        long chunkDurationUs = streamElement.getChunkDurationUs(nextChunkIndex) + startTimeUs;
        long j10 = list.isEmpty() ? j7 : -9223372036854775807L;
        int i8 = nextChunkIndex + this.currentManifestChunkOffset;
        int selectedIndex = this.trackSelection.getSelectedIndex();
        ChunkExtractor chunkExtractor = this.chunkExtractors[selectedIndex];
        int indexInTrackGroup = this.trackSelection.getIndexInTrackGroup(selectedIndex);
        Uri buildRequestUri = streamElement.buildRequestUri(indexInTrackGroup, nextChunkIndex);
        if (this.cmcdConfiguration != null) {
            factory = new CmcdData.Factory(this.cmcdConfiguration, CmcdData.STREAMING_FORMAT_SS).setTrackSelection(this.trackSelection).setBufferedDurationUs(Math.max(0L, j9)).setPlaybackRate(loadingInfo.playbackSpeed).setIsLive(this.manifest.isLive).setDidRebuffer(loadingInfo.rebufferedSince(this.lastChunkRequestRealtimeMs)).setIsBufferEmpty(list.isEmpty()).setChunkDurationUs(chunkDurationUs - startTimeUs);
            int i9 = nextChunkIndex + 1;
            if (i9 < streamElement.chunkCount) {
                factory.setNextObjectRequest(UriUtil.getRelativePath(buildRequestUri, streamElement.buildRequestUri(indexInTrackGroup, i9)));
            }
        } else {
            factory = null;
        }
        CmcdData.Factory factory2 = factory;
        this.lastChunkRequestRealtimeMs = SystemClock.elapsedRealtime();
        chunkHolder.chunk = newMediaChunk(this.trackSelection.getSelectedFormat(), this.dataSource, buildRequestUri, i8, startTimeUs, chunkDurationUs, j10, this.trackSelection.getSelectionReason(), this.trackSelection.getSelectionData(), chunkExtractor, factory2);
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

    @Override // androidx.media3.exoplayer.source.chunk.ChunkSource
    public void onChunkLoadCompleted(Chunk chunk) {
    }

    @Override // androidx.media3.exoplayer.source.chunk.ChunkSource
    public boolean onChunkLoadError(Chunk chunk, boolean z6, LoadErrorHandlingPolicy.LoadErrorInfo loadErrorInfo, LoadErrorHandlingPolicy loadErrorHandlingPolicy) {
        LoadErrorHandlingPolicy.FallbackSelection fallbackSelectionFor = loadErrorHandlingPolicy.getFallbackSelectionFor(TrackSelectionUtil.createFallbackOptions(this.trackSelection), loadErrorInfo);
        if (!z6 || fallbackSelectionFor == null || fallbackSelectionFor.type != 2) {
            return false;
        }
        ExoTrackSelection exoTrackSelection = this.trackSelection;
        return exoTrackSelection.excludeTrack(exoTrackSelection.indexOf(chunk.trackFormat), fallbackSelectionFor.exclusionDurationMs);
    }

    @Override // androidx.media3.exoplayer.source.chunk.ChunkSource
    public void release() {
        for (ChunkExtractor chunkExtractor : this.chunkExtractors) {
            chunkExtractor.release();
        }
    }

    @Override // androidx.media3.exoplayer.source.chunk.ChunkSource
    public boolean shouldCancelLoad(long j7, Chunk chunk, List<? extends MediaChunk> list) {
        if (this.fatalError != null) {
            return false;
        }
        return this.trackSelection.shouldCancelChunkLoad(j7, chunk, list);
    }

    @Override // androidx.media3.exoplayer.smoothstreaming.SsChunkSource
    public void updateManifest(SsManifest ssManifest) {
        SsManifest.StreamElement[] streamElementArr = this.manifest.streamElements;
        int i2 = this.streamElementIndex;
        SsManifest.StreamElement streamElement = streamElementArr[i2];
        int i7 = streamElement.chunkCount;
        SsManifest.StreamElement streamElement2 = ssManifest.streamElements[i2];
        if (i7 == 0 || streamElement2.chunkCount == 0) {
            this.currentManifestChunkOffset += i7;
        } else {
            int i8 = i7 - 1;
            long chunkDurationUs = streamElement.getChunkDurationUs(i8) + streamElement.getStartTimeUs(i8);
            long startTimeUs = streamElement2.getStartTimeUs(0);
            if (chunkDurationUs <= startTimeUs) {
                this.currentManifestChunkOffset += i7;
            } else {
                this.currentManifestChunkOffset = streamElement.getChunkIndex(startTimeUs) + this.currentManifestChunkOffset;
            }
        }
        this.manifest = ssManifest;
    }

    @Override // androidx.media3.exoplayer.smoothstreaming.SsChunkSource
    public void updateTrackSelection(ExoTrackSelection exoTrackSelection) {
        this.trackSelection = exoTrackSelection;
    }
}
