package androidx.media3.exoplayer.source;

import P3.v;
import android.net.Uri;
import android.os.Handler;
import androidx.media3.common.C;
import androidx.media3.common.DataReader;
import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.util.ConditionVariable;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSourceUtil;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.StatsDataSource;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.LoadingInfo;
import androidx.media3.exoplayer.SeekParameters;
import androidx.media3.exoplayer.drm.DrmSessionEventListener;
import androidx.media3.exoplayer.drm.DrmSessionManager;
import androidx.media3.exoplayer.source.IcyDataSource;
import androidx.media3.exoplayer.source.MediaPeriod;
import androidx.media3.exoplayer.source.MediaSourceEventListener;
import androidx.media3.exoplayer.source.SampleQueue;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.upstream.Allocator;
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy;
import androidx.media3.exoplayer.upstream.Loader;
import androidx.media3.exoplayer.util.ReleasableExecutor;
import com.google.common.collect.ImmutableMap;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import u0.C1665f;
import v0.C1740y;
import v0.F;
import v0.S;
import v0.T;
import v0.X;
import v0.c0;
import v0.e0;
import v0.f0;
import v0.g0;
import v0.q0;
import v0.r0;

/* loaded from: classes.dex */
final class ProgressiveMediaPeriod implements MediaPeriod, F, Loader.Callback<ExtractingLoadable>, Loader.ReleaseCallback, SampleQueue.UpstreamFormatChangedListener {
    private static final long DEFAULT_LAST_SAMPLE_DURATION_US = 10000;
    private static final String TAG = "ProgressiveMediaPeriod";
    private final Allocator allocator;
    private MediaPeriod.Callback callback;
    private final long continueLoadingCheckIntervalBytes;
    private ControlledTrackOutput[] controlledTrackOutputs;
    private final String customCacheKey;
    private final DataSource dataSource;
    private int dataType;
    private final DrmSessionEventListener.EventDispatcher drmEventDispatcher;
    private final DrmSessionManager drmSessionManager;
    private long durationUs;
    private int enabledTrackCount;
    private int extractedSamplesCountAtStartOfLoad;
    private final Handler handler;
    private boolean haveAudioVideoTracks;
    private I0.b icyHeaders;
    private boolean isLengthKnown;
    private boolean isLive;
    private boolean isSingleSample;
    private long lastSeekPositionUs;
    private final Listener listener;
    private final ConditionVariable loadCondition;
    private final LoadErrorHandlingPolicy loadErrorHandlingPolicy;
    private final boolean loadOnlySelectedTracks;
    private final Loader loader;
    private boolean loadingFinished;
    private final Runnable maybeFinishPrepareRunnable;
    private final MediaSourceEventListener.EventDispatcher mediaSourceEventDispatcher;
    private boolean notifyDiscontinuity;
    private final Runnable onContinueLoadingRequestedRunnable;
    private boolean pendingDeferredRetry;
    private boolean pendingInitialDiscontinuity;
    private long pendingResetPositionUs;
    private boolean prepared;
    private final ProgressiveMediaExtractor progressiveMediaExtractor;
    private boolean released;
    private TrackId[] sampleQueueTrackIds;
    private SampleQueue[] sampleQueues;
    private boolean sampleQueuesBuilt;
    private g0 seekMap;
    private boolean seenFirstTrackSelection;
    private final long singleSampleDurationUs;
    private final Format singleTrackFormat;
    private final int singleTrackId;
    private TrackState trackState;
    private final Uri uri;
    private static final Map<String, String> ICY_METADATA_HEADERS = createIcyMetadataHeaders();
    private static final Format ICY_FORMAT = new Format.Builder().setId("icy").setSampleMimeType(MimeTypes.APPLICATION_ICY).build();

    public static class ControlledTrackOutput extends T {
        private final C1740y discardingTrackOutput;
        private final AtomicReference<OutputMode> outputMode;
        private final SampleQueue sampleQueue;

        public enum OutputMode {
            PASS_THROUGH,
            DISCARD_AFTER_NEXT_SAMPLE_METADATA,
            DISCARDING
        }

        public ControlledTrackOutput(SampleQueue sampleQueue) {
            super(sampleQueue);
            this.sampleQueue = sampleQueue;
            this.discardingTrackOutput = new C1740y();
            this.outputMode = new AtomicReference<>(OutputMode.PASS_THROUGH);
        }

        private r0 getCurrentOutput() {
            return this.outputMode.get() == OutputMode.DISCARDING ? this.discardingTrackOutput : this.sampleQueue;
        }

        public boolean isSelected() {
            return this.outputMode.get() == OutputMode.PASS_THROUGH;
        }

        @Override // v0.r0
        public int sampleData(DataReader dataReader, int i2, boolean z6) throws IOException {
            return getCurrentOutput().sampleData(dataReader, i2, z6);
        }

        @Override // v0.r0
        public void sampleMetadata(long j7, int i2, int i7, int i8, q0 q0Var) {
            getCurrentOutput().sampleMetadata(j7, i2, i7, i8, q0Var);
            if (this.outputMode.get() == OutputMode.DISCARD_AFTER_NEXT_SAMPLE_METADATA) {
                this.sampleQueue.reset();
                this.outputMode.set(OutputMode.DISCARDING);
            }
        }

        public void updateSelectionState(boolean z6) {
            this.outputMode.set(z6 ? OutputMode.PASS_THROUGH : OutputMode.DISCARD_AFTER_NEXT_SAMPLE_METADATA);
            if (z6) {
                return;
            }
            this.sampleQueue.discardToEnd();
        }

        @Override // v0.r0
        public int sampleData(DataReader dataReader, int i2, boolean z6, int i7) throws IOException {
            return getCurrentOutput().sampleData(dataReader, i2, z6, i7);
        }

        @Override // v0.r0
        public void sampleData(ParsableByteArray parsableByteArray, int i2) {
            getCurrentOutput().sampleData(parsableByteArray, i2);
        }

        @Override // v0.r0
        public void sampleData(ParsableByteArray parsableByteArray, int i2, int i7) {
            getCurrentOutput().sampleData(parsableByteArray, i2, i7);
        }
    }

    public final class ExtractingLoadable implements Loader.Loadable, IcyDataSource.Listener {
        private final StatsDataSource dataSource;
        private final F extractorOutput;
        private r0 icyTrackOutput;
        private volatile boolean loadCanceled;
        private final ConditionVariable loadCondition;
        private final ProgressiveMediaExtractor progressiveMediaExtractor;
        private long seekTimeUs;
        private boolean seenIcyMetadata;
        private final Uri uri;
        private final c0 positionHolder = new c0();
        private boolean pendingExtractorSeek = true;
        private final long loadTaskId = LoadEventInfo.getNewId();
        private DataSpec dataSpec = buildDataSpec(0, null);

        public ExtractingLoadable(Uri uri, DataSource dataSource, ProgressiveMediaExtractor progressiveMediaExtractor, F f3, ConditionVariable conditionVariable) {
            this.uri = uri;
            this.dataSource = new StatsDataSource(dataSource);
            this.progressiveMediaExtractor = progressiveMediaExtractor;
            this.extractorOutput = f3;
            this.loadCondition = conditionVariable;
        }

        private DataSpec buildDataSpec(long j7, String str) {
            Map<String, String> map = ProgressiveMediaPeriod.ICY_METADATA_HEADERS;
            if (str != null && !str.startsWith("W/")) {
                map = ImmutableMap.builder().putAll(map).put("If-Range", str).buildKeepingLast();
            }
            return new DataSpec.Builder().setUri(this.uri).setPosition(j7).setKey(ProgressiveMediaPeriod.this.customCacheKey).setFlags(6).setHttpRequestHeaders(map).build();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setLoadPosition(long j7, long j8) {
            this.positionHolder.f20439a = j7;
            this.seekTimeUs = j8;
            this.pendingExtractorSeek = true;
            this.seenIcyMetadata = false;
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Loadable
        public void cancelLoad() {
            this.loadCanceled = true;
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Loadable
        public void load() throws IOException {
            int i2 = 0;
            String str = null;
            while (i2 == 0 && !this.loadCanceled) {
                try {
                    long j7 = this.positionHolder.f20439a;
                    DataSpec buildDataSpec = buildDataSpec(j7, str);
                    this.dataSpec = buildDataSpec;
                    long open = this.dataSource.open(buildDataSpec);
                    if (this.loadCanceled) {
                        if (i2 != 1 && this.progressiveMediaExtractor.getCurrentInputPosition() != -1) {
                            this.positionHolder.f20439a = this.progressiveMediaExtractor.getCurrentInputPosition();
                        }
                        DataSourceUtil.closeQuietly(this.dataSource);
                        return;
                    }
                    List<String> list = this.dataSource.getResponseHeaders().get("ETag");
                    str = (list == null || list.isEmpty()) ? null : list.get(0);
                    if (open != -1) {
                        open += j7;
                        ProgressiveMediaPeriod.this.onLengthKnown();
                    }
                    long j8 = open;
                    ProgressiveMediaPeriod.this.icyHeaders = I0.b.parse(this.dataSource.getResponseHeaders());
                    DataReader dataReader = this.dataSource;
                    if (ProgressiveMediaPeriod.this.icyHeaders != null && ProgressiveMediaPeriod.this.icyHeaders.f1238f != -1) {
                        dataReader = new IcyDataSource(this.dataSource, ProgressiveMediaPeriod.this.icyHeaders.f1238f, this);
                        r0 icyTrack = ProgressiveMediaPeriod.this.icyTrack();
                        this.icyTrackOutput = icyTrack;
                        icyTrack.format(ProgressiveMediaPeriod.ICY_FORMAT);
                    }
                    this.progressiveMediaExtractor.init(dataReader, this.uri, this.dataSource.getResponseHeaders(), j7, j8, this.extractorOutput);
                    if (ProgressiveMediaPeriod.this.icyHeaders != null) {
                        this.progressiveMediaExtractor.disableSeekingOnMp3Streams();
                    }
                    if (this.pendingExtractorSeek) {
                        this.progressiveMediaExtractor.seek(j7, this.seekTimeUs);
                        this.pendingExtractorSeek = false;
                    }
                    while (i2 == 0 && !this.loadCanceled) {
                        try {
                            this.loadCondition.block();
                            i2 = this.progressiveMediaExtractor.read(this.positionHolder);
                            long currentInputPosition = this.progressiveMediaExtractor.getCurrentInputPosition();
                            if (currentInputPosition > ProgressiveMediaPeriod.this.continueLoadingCheckIntervalBytes + j7) {
                                this.loadCondition.close();
                                ProgressiveMediaPeriod.this.handler.post(ProgressiveMediaPeriod.this.onContinueLoadingRequestedRunnable);
                                j7 = currentInputPosition;
                            }
                        } catch (InterruptedException unused) {
                            throw new InterruptedIOException();
                        }
                    }
                    if (i2 == 1) {
                        i2 = 0;
                    } else if (this.progressiveMediaExtractor.getCurrentInputPosition() != -1) {
                        this.positionHolder.f20439a = this.progressiveMediaExtractor.getCurrentInputPosition();
                    }
                    DataSourceUtil.closeQuietly(this.dataSource);
                } catch (Throwable th) {
                    if (i2 != 1 && this.progressiveMediaExtractor.getCurrentInputPosition() != -1) {
                        this.positionHolder.f20439a = this.progressiveMediaExtractor.getCurrentInputPosition();
                    }
                    DataSourceUtil.closeQuietly(this.dataSource);
                    throw th;
                }
            }
        }

        @Override // androidx.media3.exoplayer.source.IcyDataSource.Listener
        public void onIcyMetadata(ParsableByteArray parsableByteArray) {
            long max = !this.seenIcyMetadata ? this.seekTimeUs : Math.max(ProgressiveMediaPeriod.this.getLargestQueuedTimestampUs(true), this.seekTimeUs);
            int bytesLeft = parsableByteArray.bytesLeft();
            r0 r0Var = (r0) v.checkNotNull(this.icyTrackOutput);
            r0Var.sampleData(parsableByteArray, bytesLeft);
            r0Var.sampleMetadata(max, 1, bytesLeft, 0, null);
            this.seenIcyMetadata = true;
        }
    }

    public interface Listener {
        void onSourceInfoRefreshed(long j7, g0 g0Var, boolean z6);
    }

    public final class SampleStreamImpl implements SampleStream {
        private final int track;

        public SampleStreamImpl(int i2) {
            this.track = i2;
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public boolean isReady() {
            return ProgressiveMediaPeriod.this.isReady(this.track);
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public void maybeThrowError() throws IOException {
            ProgressiveMediaPeriod.this.maybeThrowError(this.track);
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public int readData(FormatHolder formatHolder, C1665f c1665f, int i2) {
            return ProgressiveMediaPeriod.this.readData(this.track, formatHolder, c1665f, i2);
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public int skipData(long j7) {
            return ProgressiveMediaPeriod.this.skipData(this.track, j7);
        }
    }

    public static final class TrackId {
        public final int id;
        public final boolean isIcyTrack;

        public TrackId(int i2, boolean z6) {
            this.id = i2;
            this.isIcyTrack = z6;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && TrackId.class == obj.getClass()) {
                TrackId trackId = (TrackId) obj;
                if (this.id == trackId.id && this.isIcyTrack == trackId.isIcyTrack) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            return (this.id * 31) + (this.isIcyTrack ? 1 : 0);
        }
    }

    public static final class TrackState {
        public final boolean[] trackEnabledStates;
        public final boolean[] trackIsAudioVideoFlags;
        public final boolean[] trackNotifiedDownstreamFormats;
        public final TrackGroupArray tracks;

        public TrackState(TrackGroupArray trackGroupArray, boolean[] zArr) {
            this.tracks = trackGroupArray;
            this.trackIsAudioVideoFlags = zArr;
            int i2 = trackGroupArray.length;
            this.trackEnabledStates = new boolean[i2];
            this.trackNotifiedDownstreamFormats = new boolean[i2];
        }
    }

    public ProgressiveMediaPeriod(Uri uri, DataSource dataSource, ProgressiveMediaExtractor progressiveMediaExtractor, DrmSessionManager drmSessionManager, DrmSessionEventListener.EventDispatcher eventDispatcher, LoadErrorHandlingPolicy loadErrorHandlingPolicy, MediaSourceEventListener.EventDispatcher eventDispatcher2, Listener listener, Allocator allocator, String str, int i2, boolean z6, int i7, Format format, long j7, ReleasableExecutor releasableExecutor) {
        this.uri = uri;
        this.dataSource = dataSource;
        this.drmSessionManager = drmSessionManager;
        this.drmEventDispatcher = eventDispatcher;
        this.loadErrorHandlingPolicy = loadErrorHandlingPolicy;
        this.mediaSourceEventDispatcher = eventDispatcher2;
        this.listener = listener;
        this.allocator = allocator;
        this.customCacheKey = str;
        this.continueLoadingCheckIntervalBytes = i2;
        this.loadOnlySelectedTracks = z6;
        this.singleTrackId = i7;
        this.singleTrackFormat = format;
        this.loader = releasableExecutor != null ? new Loader(releasableExecutor) : new Loader(TAG);
        this.progressiveMediaExtractor = progressiveMediaExtractor;
        this.singleSampleDurationUs = j7;
        this.loadCondition = new ConditionVariable();
        this.maybeFinishPrepareRunnable = new l(this, 1);
        this.onContinueLoadingRequestedRunnable = new l(this, 2);
        this.handler = Util.createHandlerForCurrentLooper();
        this.sampleQueueTrackIds = new TrackId[0];
        this.sampleQueues = new SampleQueue[0];
        this.controlledTrackOutputs = new ControlledTrackOutput[0];
        this.pendingResetPositionUs = C.TIME_UNSET;
        this.dataType = 1;
    }

    private void assertPrepared() {
        v.checkState(this.prepared);
        v.checkNotNull(this.trackState);
        v.checkNotNull(this.seekMap);
    }

    private boolean configureRetry(ExtractingLoadable extractingLoadable, int i2) {
        g0 g0Var;
        if (this.isLengthKnown || !((g0Var = this.seekMap) == null || g0Var.getDurationUs() == C.TIME_UNSET)) {
            this.extractedSamplesCountAtStartOfLoad = i2;
            return true;
        }
        if (this.prepared && !suppressRead()) {
            this.pendingDeferredRetry = true;
            return false;
        }
        this.notifyDiscontinuity = this.prepared;
        this.lastSeekPositionUs = 0L;
        this.extractedSamplesCountAtStartOfLoad = 0;
        for (SampleQueue sampleQueue : this.sampleQueues) {
            sampleQueue.reset();
        }
        extractingLoadable.setLoadPosition(0L, 0L);
        return true;
    }

    private static Map<String, String> createIcyMetadataHeaders() {
        HashMap hashMap = new HashMap();
        hashMap.put("Icy-MetaData", "1");
        return Collections.unmodifiableMap(hashMap);
    }

    private int getExtractedSamplesCount() {
        int i2 = 0;
        for (SampleQueue sampleQueue : this.sampleQueues) {
            i2 += sampleQueue.getWriteIndex();
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long getLargestQueuedTimestampUs(boolean z6) {
        long j7 = Long.MIN_VALUE;
        for (int i2 = 0; i2 < this.sampleQueues.length; i2++) {
            if (z6 || ((TrackState) v.checkNotNull(this.trackState)).trackEnabledStates[i2]) {
                j7 = Math.max(j7, this.sampleQueues[i2].getLargestQueuedTimestampUs());
            }
        }
        return j7;
    }

    private boolean isPendingReset() {
        return this.pendingResetPositionUs != C.TIME_UNSET;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        if (this.released) {
            return;
        }
        ((MediaPeriod.Callback) v.checkNotNull(this.callback)).onContinueLoadingRequested(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onLengthKnown$2() {
        this.isLengthKnown = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void maybeFinishPrepare() {
        int i2;
        if (this.released || this.prepared || !this.sampleQueuesBuilt || this.seekMap == null) {
            return;
        }
        for (SampleQueue sampleQueue : this.sampleQueues) {
            if (sampleQueue.getUpstreamFormat() == null) {
                return;
            }
        }
        this.loadCondition.close();
        int length = this.sampleQueues.length;
        TrackGroup[] trackGroupArr = new TrackGroup[length];
        boolean[] zArr = new boolean[length];
        for (int i7 = 0; i7 < length; i7++) {
            Format format = (Format) v.checkNotNull(this.sampleQueues[i7].getUpstreamFormat());
            String str = format.sampleMimeType;
            boolean isAudio = MimeTypes.isAudio(str);
            boolean z6 = isAudio || MimeTypes.isVideo(str);
            zArr[i7] = z6;
            this.haveAudioVideoTracks = z6 | this.haveAudioVideoTracks;
            this.isSingleSample = this.singleSampleDurationUs != C.TIME_UNSET && length == 1 && MimeTypes.isImage(str);
            I0.b bVar = this.icyHeaders;
            if (bVar != null) {
                if (isAudio || this.sampleQueueTrackIds[i7].isIcyTrack) {
                    Metadata metadata = format.metadata;
                    format = format.buildUpon().setMetadata(metadata == null ? new Metadata(bVar) : metadata.copyWithAppendedEntries(bVar)).build();
                }
                if (isAudio && format.averageBitrate == -1 && format.peakBitrate == -1 && (i2 = bVar.f1233a) != -1) {
                    format = format.buildUpon().setAverageBitrate(i2).build();
                }
            }
            Format copyWithCryptoType = format.copyWithCryptoType(this.drmSessionManager.getCryptoType(format));
            trackGroupArr[i7] = new TrackGroup(Integer.toString(i7), copyWithCryptoType);
            this.pendingInitialDiscontinuity = copyWithCryptoType.hasPrerollSamples | this.pendingInitialDiscontinuity;
        }
        this.trackState = new TrackState(new TrackGroupArray(trackGroupArr), zArr);
        if (this.isSingleSample && this.durationUs == C.TIME_UNSET) {
            this.durationUs = this.singleSampleDurationUs;
            this.seekMap = new S(this.seekMap) { // from class: androidx.media3.exoplayer.source.ProgressiveMediaPeriod.1
                @Override // v0.S, v0.g0
                public long getDurationUs() {
                    return ProgressiveMediaPeriod.this.durationUs;
                }
            };
        }
        this.listener.onSourceInfoRefreshed(this.durationUs, this.seekMap, this.isLive);
        this.prepared = true;
        ((MediaPeriod.Callback) v.checkNotNull(this.callback)).onPrepared(this);
    }

    private void maybeNotifyDownstreamFormat(int i2) {
        assertPrepared();
        TrackState trackState = this.trackState;
        boolean[] zArr = trackState.trackNotifiedDownstreamFormats;
        if (zArr[i2]) {
            return;
        }
        Format format = trackState.tracks.get(i2).getFormat(0);
        this.mediaSourceEventDispatcher.downstreamFormatChanged(MimeTypes.getTrackType(format.sampleMimeType), format, 0, null, this.lastSeekPositionUs);
        zArr[i2] = true;
    }

    private void maybeStartDeferredRetry(int i2) {
        assertPrepared();
        if (this.pendingDeferredRetry) {
            if (!this.haveAudioVideoTracks || this.trackState.trackIsAudioVideoFlags[i2]) {
                if (this.sampleQueues[i2].isReady(false)) {
                    return;
                }
                this.pendingResetPositionUs = 0L;
                this.pendingDeferredRetry = false;
                this.notifyDiscontinuity = true;
                this.lastSeekPositionUs = 0L;
                this.extractedSamplesCountAtStartOfLoad = 0;
                for (SampleQueue sampleQueue : this.sampleQueues) {
                    sampleQueue.reset();
                }
                ((MediaPeriod.Callback) v.checkNotNull(this.callback)).onContinueLoadingRequested(this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onLengthKnown() {
        this.handler.post(new l(this, 0));
    }

    private r0 prepareTrackOutput(TrackId trackId) {
        int length = this.sampleQueues.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (trackId.equals(this.sampleQueueTrackIds[i2])) {
                return this.sampleQueues[i2];
            }
        }
        if (this.sampleQueuesBuilt) {
            Log.w(TAG, "Extractor added new track (id=" + trackId.id + ") after finishing tracks.");
            return new C1740y();
        }
        SampleQueue createWithDrm = SampleQueue.createWithDrm(this.allocator, this.drmSessionManager, this.drmEventDispatcher);
        ControlledTrackOutput controlledTrackOutput = new ControlledTrackOutput(createWithDrm);
        createWithDrm.setUpstreamFormatChangeListener(this);
        int i7 = length + 1;
        TrackId[] trackIdArr = (TrackId[]) Arrays.copyOf(this.sampleQueueTrackIds, i7);
        trackIdArr[length] = trackId;
        this.sampleQueueTrackIds = (TrackId[]) Util.castNonNullTypeArray(trackIdArr);
        SampleQueue[] sampleQueueArr = (SampleQueue[]) Arrays.copyOf(this.sampleQueues, i7);
        sampleQueueArr[length] = createWithDrm;
        this.sampleQueues = (SampleQueue[]) Util.castNonNullTypeArray(sampleQueueArr);
        ControlledTrackOutput[] controlledTrackOutputArr = (ControlledTrackOutput[]) Arrays.copyOf(this.controlledTrackOutputs, i7);
        controlledTrackOutputArr[length] = controlledTrackOutput;
        this.controlledTrackOutputs = (ControlledTrackOutput[]) Util.castNonNullTypeArray(controlledTrackOutputArr);
        return controlledTrackOutput;
    }

    private boolean seekInsideBufferUs(boolean[] zArr, long j7, boolean z6) {
        int length = this.sampleQueues.length;
        for (int i2 = 0; i2 < length; i2++) {
            SampleQueue sampleQueue = this.sampleQueues[i2];
            if (this.controlledTrackOutputs[i2].isSelected() && (sampleQueue.getReadIndex() != 0 || !z6)) {
                if (!(this.isSingleSample ? sampleQueue.seekTo(sampleQueue.getFirstIndex()) : sampleQueue.seekTo(j7, this.loadingFinished)) && (zArr[i2] || !this.haveAudioVideoTracks)) {
                    return false;
                }
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setSeekMap, reason: merged with bridge method [inline-methods] */
    public void lambda$seekMap$1(g0 g0Var) {
        this.seekMap = this.icyHeaders == null ? g0Var : new f0(C.TIME_UNSET);
        this.durationUs = g0Var.getDurationUs();
        boolean z6 = !this.isLengthKnown && g0Var.getDurationUs() == C.TIME_UNSET;
        this.isLive = z6;
        this.dataType = z6 ? 7 : 1;
        if (this.prepared) {
            this.listener.onSourceInfoRefreshed(this.durationUs, g0Var, z6);
        } else {
            maybeFinishPrepare();
        }
    }

    private void startLoading() {
        ExtractingLoadable extractingLoadable = new ExtractingLoadable(this.uri, this.dataSource, this.progressiveMediaExtractor, this, this.loadCondition);
        if (this.prepared) {
            v.checkState(isPendingReset());
            long j7 = this.durationUs;
            if (j7 != C.TIME_UNSET && this.pendingResetPositionUs > j7) {
                this.loadingFinished = true;
                this.pendingResetPositionUs = C.TIME_UNSET;
                return;
            }
            extractingLoadable.setLoadPosition(((g0) v.checkNotNull(this.seekMap)).getSeekPoints(this.pendingResetPositionUs).f20453a.f20475b, this.pendingResetPositionUs);
            for (SampleQueue sampleQueue : this.sampleQueues) {
                sampleQueue.setStartTimeUs(this.pendingResetPositionUs);
            }
            this.pendingResetPositionUs = C.TIME_UNSET;
        }
        this.extractedSamplesCountAtStartOfLoad = getExtractedSamplesCount();
        this.loader.startLoading(extractingLoadable, this, this.loadErrorHandlingPolicy.getMinimumLoadableRetryCount(this.dataType));
    }

    private boolean suppressRead() {
        return this.notifyDiscontinuity || isPendingReset();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public boolean continueLoading(LoadingInfo loadingInfo) {
        if (this.loadingFinished || this.loader.hasFatalError() || this.pendingDeferredRetry) {
            return false;
        }
        if ((this.prepared || this.singleTrackFormat != null) && this.enabledTrackCount == 0) {
            return false;
        }
        boolean open = this.loadCondition.open();
        if (this.loader.isLoading()) {
            return open;
        }
        startLoading();
        return true;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public void discardBuffer(long j7, boolean z6) {
        if (this.isSingleSample) {
            return;
        }
        assertPrepared();
        if (isPendingReset()) {
            return;
        }
        boolean[] zArr = this.trackState.trackEnabledStates;
        int length = this.sampleQueues.length;
        for (int i2 = 0; i2 < length; i2++) {
            this.sampleQueues[i2].discardTo(j7, z6, zArr[i2]);
        }
    }

    @Override // v0.F
    public void endTracks() {
        this.sampleQueuesBuilt = true;
        this.handler.post(this.maybeFinishPrepareRunnable);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long getAdjustedSeekPositionUs(long j7, SeekParameters seekParameters) {
        assertPrepared();
        if (!this.seekMap.isSeekable()) {
            return 0L;
        }
        e0 seekPoints = this.seekMap.getSeekPoints(j7);
        return seekParameters.resolveSeekPositionUs(j7, seekPoints.f20453a.f20474a, seekPoints.f20454b.f20474a);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public long getBufferedPositionUs() {
        long j7;
        assertPrepared();
        if (this.loadingFinished || this.enabledTrackCount == 0) {
            return Long.MIN_VALUE;
        }
        if (isPendingReset()) {
            return this.pendingResetPositionUs;
        }
        if (this.haveAudioVideoTracks) {
            int length = this.sampleQueues.length;
            j7 = Long.MAX_VALUE;
            for (int i2 = 0; i2 < length; i2++) {
                TrackState trackState = this.trackState;
                if (trackState.trackIsAudioVideoFlags[i2] && trackState.trackEnabledStates[i2] && !this.sampleQueues[i2].isLastSampleQueued()) {
                    j7 = Math.min(j7, this.sampleQueues[i2].getLargestQueuedTimestampUs());
                }
            }
        } else {
            j7 = Long.MAX_VALUE;
        }
        if (j7 == Long.MAX_VALUE) {
            j7 = getLargestQueuedTimestampUs(false);
        }
        return j7 == Long.MIN_VALUE ? this.lastSeekPositionUs : j7;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public long getNextLoadPositionUs() {
        return getBufferedPositionUs();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final /* synthetic */ List getStreamKeys(List list) {
        return f.a(this, list);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public TrackGroupArray getTrackGroups() {
        assertPrepared();
        return this.trackState.tracks;
    }

    public r0 icyTrack() {
        return prepareTrackOutput(new TrackId(0, true));
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public boolean isLoading() {
        return this.loader.isLoading() && this.loadCondition.isOpen();
    }

    public boolean isReady(int i2) {
        return !suppressRead() && this.sampleQueues[i2].isReady(this.loadingFinished);
    }

    public void maybeThrowError(int i2) throws IOException {
        this.sampleQueues[i2].maybeThrowError();
        maybeThrowError();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public void maybeThrowPrepareError() throws IOException {
        maybeThrowError();
        if (this.loadingFinished && !this.prepared) {
            throw ParserException.createForMalformedContainer("Loading finished before preparation is complete.", null);
        }
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.ReleaseCallback
    public void onLoaderReleased() {
        for (SampleQueue sampleQueue : this.sampleQueues) {
            sampleQueue.release();
        }
        this.progressiveMediaExtractor.release();
    }

    @Override // androidx.media3.exoplayer.source.SampleQueue.UpstreamFormatChangedListener
    public void onUpstreamFormatChanged(Format format) {
        this.handler.post(this.maybeFinishPrepareRunnable);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public void prepare(MediaPeriod.Callback callback, long j7) {
        this.callback = callback;
        if (this.singleTrackFormat == null) {
            this.loadCondition.open();
            startLoading();
        } else {
            track(this.singleTrackId, 3).format(this.singleTrackFormat);
            lambda$seekMap$1(new X(new long[]{0}, new long[]{0}, C.TIME_UNSET));
            endTracks();
            this.pendingResetPositionUs = j7;
        }
    }

    public int readData(int i2, FormatHolder formatHolder, C1665f c1665f, int i7) {
        if (suppressRead()) {
            return -3;
        }
        maybeNotifyDownstreamFormat(i2);
        int read = this.sampleQueues[i2].read(formatHolder, c1665f, i7, this.loadingFinished);
        if (read == -3) {
            maybeStartDeferredRetry(i2);
        }
        return read;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long readDiscontinuity() {
        if (this.pendingInitialDiscontinuity) {
            this.pendingInitialDiscontinuity = false;
            return this.lastSeekPositionUs;
        }
        if (!this.notifyDiscontinuity) {
            return C.TIME_UNSET;
        }
        if (!this.loadingFinished && getExtractedSamplesCount() <= this.extractedSamplesCountAtStartOfLoad) {
            return C.TIME_UNSET;
        }
        this.notifyDiscontinuity = false;
        return this.lastSeekPositionUs;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public void reevaluateBuffer(long j7) {
    }

    public void release() {
        if (this.prepared) {
            for (SampleQueue sampleQueue : this.sampleQueues) {
                sampleQueue.preRelease();
            }
        }
        this.loader.release(this);
        this.handler.removeCallbacksAndMessages(null);
        this.callback = null;
        this.released = true;
    }

    @Override // v0.F
    public void seekMap(g0 g0Var) {
        this.handler.post(new m(0, this, g0Var));
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long seekToUs(long j7) {
        assertPrepared();
        boolean[] zArr = this.trackState.trackIsAudioVideoFlags;
        if (!this.seekMap.isSeekable()) {
            j7 = 0;
        }
        int i2 = 0;
        this.notifyDiscontinuity = false;
        boolean z6 = this.lastSeekPositionUs == j7;
        this.lastSeekPositionUs = j7;
        if (isPendingReset()) {
            this.pendingResetPositionUs = j7;
            return j7;
        }
        if (this.dataType == 7 || ((!this.loadingFinished && !this.loader.isLoading()) || !seekInsideBufferUs(zArr, j7, z6))) {
            this.pendingDeferredRetry = false;
            this.pendingResetPositionUs = j7;
            this.loadingFinished = false;
            this.pendingInitialDiscontinuity = false;
            if (this.loader.isLoading()) {
                SampleQueue[] sampleQueueArr = this.sampleQueues;
                int length = sampleQueueArr.length;
                while (i2 < length) {
                    sampleQueueArr[i2].discardToEnd();
                    i2++;
                }
                this.loader.cancelLoading();
                return j7;
            }
            this.loader.clearFatalError();
            SampleQueue[] sampleQueueArr2 = this.sampleQueues;
            int length2 = sampleQueueArr2.length;
            while (i2 < length2) {
                sampleQueueArr2[i2].reset();
                i2++;
            }
        }
        return j7;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long selectTracks(ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr, boolean[] zArr2, long j7) {
        ExoTrackSelection exoTrackSelection;
        assertPrepared();
        TrackState trackState = this.trackState;
        TrackGroupArray trackGroupArray = trackState.tracks;
        boolean[] zArr3 = trackState.trackEnabledStates;
        int i2 = this.enabledTrackCount;
        int i7 = 0;
        for (int i8 = 0; i8 < exoTrackSelectionArr.length; i8++) {
            SampleStream sampleStream = sampleStreamArr[i8];
            if (sampleStream != null && (exoTrackSelectionArr[i8] == null || !zArr[i8])) {
                int i9 = ((SampleStreamImpl) sampleStream).track;
                v.checkState(zArr3[i9]);
                this.enabledTrackCount--;
                zArr3[i9] = false;
                sampleStreamArr[i8] = null;
            }
        }
        boolean z6 = !this.seenFirstTrackSelection ? j7 == 0 || this.isSingleSample : i2 != 0;
        for (int i10 = 0; i10 < exoTrackSelectionArr.length; i10++) {
            if (sampleStreamArr[i10] == null && (exoTrackSelection = exoTrackSelectionArr[i10]) != null) {
                v.checkState(exoTrackSelection.length() == 1);
                v.checkState(exoTrackSelection.getIndexInTrackGroup(0) == 0);
                int indexOf = trackGroupArray.indexOf(exoTrackSelection.getTrackGroup());
                v.checkState(!zArr3[indexOf]);
                this.enabledTrackCount++;
                zArr3[indexOf] = true;
                this.pendingInitialDiscontinuity = exoTrackSelection.getSelectedFormat().hasPrerollSamples | this.pendingInitialDiscontinuity;
                sampleStreamArr[i10] = new SampleStreamImpl(indexOf);
                zArr2[i10] = true;
                if (this.loadOnlySelectedTracks) {
                    z6 |= this.seenFirstTrackSelection;
                } else if (!z6) {
                    SampleQueue sampleQueue = this.sampleQueues[indexOf];
                    z6 = (sampleQueue.getReadIndex() == 0 || sampleQueue.seekTo(j7, true)) ? false : true;
                }
            }
        }
        if (this.loadOnlySelectedTracks) {
            int i11 = 0;
            while (true) {
                ControlledTrackOutput[] controlledTrackOutputArr = this.controlledTrackOutputs;
                if (i11 >= controlledTrackOutputArr.length) {
                    break;
                }
                controlledTrackOutputArr[i11].updateSelectionState(zArr3[i11]);
                i11++;
            }
        }
        if (this.enabledTrackCount == 0) {
            this.pendingDeferredRetry = false;
            this.notifyDiscontinuity = false;
            this.pendingInitialDiscontinuity = false;
            if (this.loader.isLoading()) {
                SampleQueue[] sampleQueueArr = this.sampleQueues;
                int length = sampleQueueArr.length;
                while (i7 < length) {
                    sampleQueueArr[i7].discardToEnd();
                    i7++;
                }
                this.loader.cancelLoading();
            } else {
                this.loadingFinished = false;
                SampleQueue[] sampleQueueArr2 = this.sampleQueues;
                int length2 = sampleQueueArr2.length;
                while (i7 < length2) {
                    sampleQueueArr2[i7].reset();
                    i7++;
                }
            }
        } else if (z6) {
            j7 = seekToUs(j7);
            while (i7 < sampleStreamArr.length) {
                if (sampleStreamArr[i7] != null) {
                    zArr2[i7] = true;
                }
                i7++;
            }
        }
        this.seenFirstTrackSelection = true;
        return j7;
    }

    public int skipData(int i2, long j7) {
        if (suppressRead()) {
            return 0;
        }
        maybeNotifyDownstreamFormat(i2);
        SampleQueue sampleQueue = this.sampleQueues[i2];
        int skipCount = sampleQueue.getSkipCount(j7, this.loadingFinished);
        sampleQueue.skip(skipCount);
        if (skipCount == 0) {
            maybeStartDeferredRetry(i2);
        }
        return skipCount;
    }

    @Override // v0.F
    public r0 track(int i2, int i7) {
        return prepareTrackOutput(new TrackId(i2, false));
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Callback
    public void onLoadCanceled(ExtractingLoadable extractingLoadable, long j7, long j8, boolean z6) {
        StatsDataSource statsDataSource = extractingLoadable.dataSource;
        LoadEventInfo loadEventInfo = new LoadEventInfo(extractingLoadable.loadTaskId, extractingLoadable.dataSpec, statsDataSource.getLastOpenedUri(), statsDataSource.getLastResponseHeaders(), j7, j8, statsDataSource.getBytesRead());
        this.loadErrorHandlingPolicy.onLoadTaskConcluded(extractingLoadable.loadTaskId);
        this.mediaSourceEventDispatcher.loadCanceled(loadEventInfo, 1, -1, null, 0, null, extractingLoadable.seekTimeUs, this.durationUs);
        if (z6) {
            return;
        }
        for (SampleQueue sampleQueue : this.sampleQueues) {
            sampleQueue.reset();
        }
        if (this.enabledTrackCount > 0) {
            ((MediaPeriod.Callback) v.checkNotNull(this.callback)).onContinueLoadingRequested(this);
        }
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Callback
    public void onLoadCompleted(ExtractingLoadable extractingLoadable, long j7, long j8) {
        if (this.durationUs == C.TIME_UNSET && this.seekMap != null) {
            long largestQueuedTimestampUs = getLargestQueuedTimestampUs(true);
            long j9 = largestQueuedTimestampUs == Long.MIN_VALUE ? 0L : largestQueuedTimestampUs + 10000;
            this.durationUs = j9;
            this.listener.onSourceInfoRefreshed(j9, this.seekMap, this.isLive);
        }
        StatsDataSource statsDataSource = extractingLoadable.dataSource;
        LoadEventInfo loadEventInfo = new LoadEventInfo(extractingLoadable.loadTaskId, extractingLoadable.dataSpec, statsDataSource.getLastOpenedUri(), statsDataSource.getLastResponseHeaders(), j7, j8, statsDataSource.getBytesRead());
        this.loadErrorHandlingPolicy.onLoadTaskConcluded(extractingLoadable.loadTaskId);
        this.mediaSourceEventDispatcher.loadCompleted(loadEventInfo, 1, -1, null, 0, null, extractingLoadable.seekTimeUs, this.durationUs);
        this.loadingFinished = true;
        ((MediaPeriod.Callback) v.checkNotNull(this.callback)).onContinueLoadingRequested(this);
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Callback
    public Loader.LoadErrorAction onLoadError(ExtractingLoadable extractingLoadable, long j7, long j8, IOException iOException, int i2) {
        ExtractingLoadable extractingLoadable2;
        Loader.LoadErrorAction createRetryAction;
        StatsDataSource statsDataSource = extractingLoadable.dataSource;
        LoadEventInfo loadEventInfo = new LoadEventInfo(extractingLoadable.loadTaskId, extractingLoadable.dataSpec, statsDataSource.getLastOpenedUri(), statsDataSource.getLastResponseHeaders(), j7, j8, statsDataSource.getBytesRead());
        long retryDelayMsFor = this.loadErrorHandlingPolicy.getRetryDelayMsFor(new LoadErrorHandlingPolicy.LoadErrorInfo(loadEventInfo, new MediaLoadData(1, -1, null, 0, null, Util.usToMs(extractingLoadable.seekTimeUs), Util.usToMs(this.durationUs)), iOException, i2));
        if (retryDelayMsFor == C.TIME_UNSET) {
            createRetryAction = Loader.DONT_RETRY_FATAL;
            extractingLoadable2 = extractingLoadable;
        } else {
            int extractedSamplesCount = getExtractedSamplesCount();
            extractingLoadable2 = extractingLoadable;
            createRetryAction = configureRetry(extractingLoadable2, extractedSamplesCount) ? Loader.createRetryAction(extractedSamplesCount > this.extractedSamplesCountAtStartOfLoad, retryDelayMsFor) : Loader.DONT_RETRY;
        }
        boolean isRetry = createRetryAction.isRetry();
        this.mediaSourceEventDispatcher.loadError(loadEventInfo, 1, -1, null, 0, null, extractingLoadable2.seekTimeUs, this.durationUs, iOException, !isRetry);
        if (!isRetry) {
            this.loadErrorHandlingPolicy.onLoadTaskConcluded(extractingLoadable2.loadTaskId);
        }
        return createRetryAction;
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Callback
    public void onLoadStarted(ExtractingLoadable extractingLoadable, long j7, long j8, int i2) {
        StatsDataSource statsDataSource = extractingLoadable.dataSource;
        this.mediaSourceEventDispatcher.loadStarted(i2 == 0 ? new LoadEventInfo(extractingLoadable.loadTaskId, extractingLoadable.dataSpec, j7) : new LoadEventInfo(extractingLoadable.loadTaskId, extractingLoadable.dataSpec, statsDataSource.getLastOpenedUri(), statsDataSource.getLastResponseHeaders(), j7, j8, statsDataSource.getBytesRead()), 1, -1, null, 0, null, extractingLoadable.seekTimeUs, this.durationUs, i2);
    }

    public void maybeThrowError() throws IOException {
        this.loader.maybeThrowError(this.loadErrorHandlingPolicy.getMinimumLoadableRetryCount(this.dataType));
    }
}
