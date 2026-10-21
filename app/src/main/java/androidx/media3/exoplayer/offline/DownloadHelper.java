package androidx.media3.exoplayer.offline;

import P3.C;
import P3.v;
import Q3.x0;
import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.util.SparseIntArray;
import androidx.media3.common.Format;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Timeline;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.TrackSelectionOverride;
import androidx.media3.common.TrackSelectionParameters;
import androidx.media3.common.Tracks;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.DefaultRendererCapabilitiesList;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.LoadingInfo;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.exoplayer.RendererCapabilitiesList;
import androidx.media3.exoplayer.RenderersFactory;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.drm.DrmSessionManager;
import androidx.media3.exoplayer.drm.DrmSessionManagerProvider;
import androidx.media3.exoplayer.offline.DownloadRequest;
import androidx.media3.exoplayer.source.DefaultMediaSourceFactory;
import androidx.media3.exoplayer.source.MediaPeriod;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.ProgressiveMediaSource;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.exoplayer.source.chunk.MediaChunk;
import androidx.media3.exoplayer.source.chunk.MediaChunkIterator;
import androidx.media3.exoplayer.trackselection.BaseTrackSelection;
import androidx.media3.exoplayer.trackselection.DefaultTrackSelector;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.trackselection.MappingTrackSelector;
import androidx.media3.exoplayer.trackselection.TrackSelectionUtil;
import androidx.media3.exoplayer.trackselection.TrackSelectorResult;
import androidx.media3.exoplayer.upstream.Allocator;
import androidx.media3.exoplayer.upstream.BandwidthMeter;
import androidx.media3.exoplayer.upstream.DefaultAllocator;
import com.google.common.collect.ImmutableList;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import v0.I;
import v0.g0;

@UnstableApi
/* loaded from: classes.dex */
public final class DownloadHelper {
    public static final DefaultTrackSelector.Parameters DEFAULT_TRACK_SELECTOR_PARAMETERS;

    @Deprecated
    public static final DefaultTrackSelector.Parameters DEFAULT_TRACK_SELECTOR_PARAMETERS_WITHOUT_CONTEXT;
    private static final int MODE_NOT_PREPARE = 0;
    private static final int MODE_PREPARE_NON_PROGRESSIVE_SOURCE_AND_SELECT_TRACKS = 2;
    private static final int MODE_PREPARE_PROGRESSIVE_SOURCE = 1;
    private static final String TAG = "DownloadHelper";
    private boolean areTracksSelected;
    private Callback callback;
    private final Handler callbackHandler;
    private final boolean debugLoggingEnabled;
    private List<ExoTrackSelection>[][] immutableTrackSelectionsByPeriodAndRenderer;
    private boolean isPreparedWithMedia;
    private final MediaItem.LocalConfiguration localConfiguration;
    private MappingTrackSelector.MappedTrackInfo[] mappedTrackInfos;
    private MediaPreparer mediaPreparer;
    private final MediaSource mediaSource;
    private final int mode;
    private final RendererCapabilitiesList rendererCapabilities;
    private final SparseIntArray scratchSet;
    private TrackGroupArray[] trackGroupArrays;
    private List<ExoTrackSelection>[][] trackSelectionsByPeriodAndRenderer;
    private final DefaultTrackSelector trackSelector;
    private final Timeline.Window window;

    public interface Callback {
        void onPrepareError(DownloadHelper downloadHelper, IOException iOException);

        void onPrepared(DownloadHelper downloadHelper, boolean z6);
    }

    public static final class DownloadTrackSelection extends BaseTrackSelection {

        public static final class Factory implements ExoTrackSelection.Factory {
            private Factory() {
            }

            @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection.Factory
            public ExoTrackSelection[] createTrackSelections(ExoTrackSelection.Definition[] definitionArr, BandwidthMeter bandwidthMeter, MediaSource.MediaPeriodId mediaPeriodId, Timeline timeline) {
                ExoTrackSelection[] exoTrackSelectionArr = new ExoTrackSelection[definitionArr.length];
                for (int i2 = 0; i2 < definitionArr.length; i2++) {
                    ExoTrackSelection.Definition definition = definitionArr[i2];
                    exoTrackSelectionArr[i2] = definition == null ? null : new DownloadTrackSelection(definition.group, definition.tracks);
                }
                return exoTrackSelectionArr;
            }
        }

        public DownloadTrackSelection(TrackGroup trackGroup, int[] iArr) {
            super(trackGroup, iArr);
        }

        @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
        public int getSelectedIndex() {
            return 0;
        }

        @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
        public Object getSelectionData() {
            return null;
        }

        @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
        public int getSelectionReason() {
            return 0;
        }

        @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
        public void updateSelectedTrack(long j7, long j8, long j9, List<? extends MediaChunk> list, MediaChunkIterator[] mediaChunkIteratorArr) {
        }
    }

    public static final class FakeBandwidthMeter implements BandwidthMeter {
        private FakeBandwidthMeter() {
        }

        @Override // androidx.media3.exoplayer.upstream.BandwidthMeter
        public void addEventListener(Handler handler, BandwidthMeter.EventListener eventListener) {
        }

        @Override // androidx.media3.exoplayer.upstream.BandwidthMeter
        public long getBitrateEstimate() {
            return 0L;
        }

        @Override // androidx.media3.exoplayer.upstream.BandwidthMeter
        public final /* synthetic */ long getTimeToFirstByteEstimateUs() {
            return androidx.media3.exoplayer.upstream.a.a(this);
        }

        @Override // androidx.media3.exoplayer.upstream.BandwidthMeter
        public TransferListener getTransferListener() {
            return null;
        }

        @Override // androidx.media3.exoplayer.upstream.BandwidthMeter
        public void removeEventListener(BandwidthMeter.EventListener eventListener) {
        }
    }

    public static class LiveContentUnsupportedException extends IOException {
    }

    public static final class MediaPreparer implements MediaSource.MediaSourceCaller, ProgressiveMediaSource.Listener, MediaPeriod.Callback, Handler.Callback {
        private static final int DOWNLOAD_HELPER_CALLBACK_MESSAGE_FAILED = 2;
        private static final int DOWNLOAD_HELPER_CALLBACK_MESSAGE_PREPARED = 1;
        private static final int MESSAGE_CHECK_FOR_FAILURE = 2;
        private static final int MESSAGE_CONTINUE_LOADING = 3;
        private static final int MESSAGE_PREPARE_SOURCE = 1;
        private static final int MESSAGE_RELEASE = 4;
        private final DownloadHelper downloadHelper;
        public MediaPeriod[] mediaPeriods;
        private final MediaSource mediaSource;
        private final Handler mediaSourceHandler;
        private final HandlerThread mediaSourceThread;
        private boolean released;
        public g0 seekMap;
        public Timeline timeline;
        private final Allocator allocator = new DefaultAllocator(true, 65536);
        private final ArrayList<MediaPeriod> pendingMediaPeriods = new ArrayList<>();
        private final Handler downloadHelperHandler = Util.createHandlerForCurrentOrMainLooper(new d(this, 0));

        public MediaPreparer(MediaSource mediaSource, DownloadHelper downloadHelper) {
            this.mediaSource = mediaSource;
            this.downloadHelper = downloadHelper;
            HandlerThread handlerThread = new HandlerThread("ExoPlayer:DownloadHelper");
            this.mediaSourceThread = handlerThread;
            handlerThread.start();
            Handler createHandler = Util.createHandler(handlerThread.getLooper(), this);
            this.mediaSourceHandler = createHandler;
            createHandler.sendEmptyMessage(1);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean handleDownloadHelperCallbackMessage(Message message) {
            if (this.released) {
                return false;
            }
            int i2 = message.what;
            if (i2 == 1) {
                try {
                    this.downloadHelper.onMediaPrepared();
                } catch (ExoPlaybackException e3) {
                    this.downloadHelperHandler.obtainMessage(2, new IOException(e3)).sendToTarget();
                }
                return true;
            }
            if (i2 != 2) {
                return false;
            }
            release();
            this.downloadHelper.onMediaPreparationFailed((IOException) Util.castNonNull(message.obj));
            return true;
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i2 = message.what;
            if (i2 == 1) {
                MediaSource mediaSource = this.mediaSource;
                if (mediaSource instanceof ProgressiveMediaSource) {
                    ((ProgressiveMediaSource) mediaSource).setListener(this);
                }
                this.mediaSource.prepareSource(this, null, PlayerId.UNSET);
                this.mediaSourceHandler.sendEmptyMessage(2);
                return true;
            }
            int i7 = 0;
            if (i2 == 2) {
                try {
                    if (this.mediaPeriods == null) {
                        this.mediaSource.maybeThrowSourceInfoRefreshError();
                    } else {
                        while (i7 < this.pendingMediaPeriods.size()) {
                            this.pendingMediaPeriods.get(i7).maybeThrowPrepareError();
                            i7++;
                        }
                    }
                    this.mediaSourceHandler.sendEmptyMessageDelayed(2, 100L);
                } catch (IOException e3) {
                    this.downloadHelperHandler.obtainMessage(2, e3).sendToTarget();
                }
                return true;
            }
            if (i2 == 3) {
                MediaPeriod mediaPeriod = (MediaPeriod) message.obj;
                if (this.pendingMediaPeriods.contains(mediaPeriod)) {
                    mediaPeriod.continueLoading(new LoadingInfo.Builder().setPlaybackPositionUs(0L).build());
                }
                return true;
            }
            if (i2 != 4) {
                return false;
            }
            MediaPeriod[] mediaPeriodArr = this.mediaPeriods;
            if (mediaPeriodArr != null) {
                int length = mediaPeriodArr.length;
                while (i7 < length) {
                    this.mediaSource.releasePeriod(mediaPeriodArr[i7]);
                    i7++;
                }
            }
            MediaSource mediaSource2 = this.mediaSource;
            if (mediaSource2 instanceof ProgressiveMediaSource) {
                ((ProgressiveMediaSource) mediaSource2).clearListener();
            }
            this.mediaSource.releaseSource(this);
            this.mediaSourceHandler.removeCallbacksAndMessages(null);
            this.mediaSourceThread.quit();
            return true;
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod.Callback
        public void onPrepared(MediaPeriod mediaPeriod) {
            this.pendingMediaPeriods.remove(mediaPeriod);
            if (this.pendingMediaPeriods.isEmpty()) {
                this.mediaSourceHandler.removeMessages(2);
                this.downloadHelperHandler.sendEmptyMessage(1);
            }
        }

        @Override // androidx.media3.exoplayer.source.ProgressiveMediaSource.Listener
        public void onSeekMap(MediaSource mediaSource, g0 g0Var) {
            this.seekMap = g0Var;
        }

        @Override // androidx.media3.exoplayer.source.MediaSource.MediaSourceCaller
        public void onSourceInfoRefreshed(MediaSource mediaSource, Timeline timeline) {
            MediaPeriod[] mediaPeriodArr;
            if (this.timeline != null) {
                return;
            }
            if (timeline.getWindow(0, new Timeline.Window()).isLive()) {
                this.downloadHelperHandler.obtainMessage(2, new LiveContentUnsupportedException()).sendToTarget();
                return;
            }
            this.timeline = timeline;
            this.mediaPeriods = new MediaPeriod[timeline.getPeriodCount()];
            int i2 = 0;
            while (true) {
                mediaPeriodArr = this.mediaPeriods;
                if (i2 >= mediaPeriodArr.length) {
                    break;
                }
                MediaPeriod createPeriod = this.mediaSource.createPeriod(new MediaSource.MediaPeriodId(timeline.getUidOfPeriod(i2)), this.allocator, 0L);
                this.mediaPeriods[i2] = createPeriod;
                this.pendingMediaPeriods.add(createPeriod);
                i2++;
            }
            for (MediaPeriod mediaPeriod : mediaPeriodArr) {
                mediaPeriod.prepare(this, 0L);
            }
        }

        public void release() {
            if (this.released) {
                return;
            }
            this.released = true;
            this.mediaSourceHandler.sendEmptyMessage(4);
        }

        @Override // androidx.media3.exoplayer.source.SequenceableLoader.Callback
        public void onContinueLoadingRequested(MediaPeriod mediaPeriod) {
            if (this.pendingMediaPeriods.contains(mediaPeriod)) {
                this.mediaSourceHandler.obtainMessage(3, mediaPeriod).sendToTarget();
            }
        }
    }

    public static final class UnreleaseableRendererCapabilitiesList implements RendererCapabilitiesList {
        private final RendererCapabilities[] rendererCapabilities;

        @Override // androidx.media3.exoplayer.RendererCapabilitiesList
        public RendererCapabilities[] getRendererCapabilities() {
            return this.rendererCapabilities;
        }

        @Override // androidx.media3.exoplayer.RendererCapabilitiesList
        public void release() {
        }

        @Override // androidx.media3.exoplayer.RendererCapabilitiesList
        public int size() {
            return this.rendererCapabilities.length;
        }

        private UnreleaseableRendererCapabilitiesList(RendererCapabilities[] rendererCapabilitiesArr) {
            this.rendererCapabilities = rendererCapabilitiesArr;
        }
    }

    static {
        DefaultTrackSelector.Parameters build = DefaultTrackSelector.Parameters.DEFAULT.buildUpon().setForceHighestSupportedBitrate(true).setConstrainAudioChannelCountToDeviceCapabilities(false).build();
        DEFAULT_TRACK_SELECTOR_PARAMETERS = build;
        DEFAULT_TRACK_SELECTOR_PARAMETERS_WITHOUT_CONTEXT = build;
    }

    public DownloadHelper(MediaItem mediaItem, MediaSource mediaSource, TrackSelectionParameters trackSelectionParameters, RendererCapabilitiesList rendererCapabilitiesList) {
        this(mediaItem, mediaSource, trackSelectionParameters, rendererCapabilitiesList, false);
    }

    private void addTrackSelectionInternal(int i2, TrackSelectionParameters trackSelectionParameters) throws ExoPlaybackException {
        this.trackSelector.setParameters(trackSelectionParameters);
        runTrackSelection(i2);
        x0 it = trackSelectionParameters.overrides.values().iterator();
        while (it.hasNext()) {
            this.trackSelector.setParameters(trackSelectionParameters.buildUpon().setOverrideForType((TrackSelectionOverride) it.next()).build());
            runTrackSelection(i2);
        }
    }

    private void assertPreparedWithMedia() {
        v.checkState(this.mode != 0);
        v.checkState(this.isPreparedWithMedia);
    }

    private void assertPreparedWithNonProgressiveSourceAndTracksSelected() {
        v.checkState(this.mode == 2);
        v.checkState(this.isPreparedWithMedia);
        v.checkState(this.areTracksSelected);
    }

    private void assertPreparedWithProgressiveSource() {
        v.checkState(this.mode == 1);
        v.checkState(this.isPreparedWithMedia);
    }

    public static MediaSource createMediaSource(DownloadRequest downloadRequest, DataSource.Factory factory) {
        return createMediaSource(downloadRequest, factory, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static MediaSource createMediaSourceInternal(MediaItem mediaItem, DataSource.Factory factory, final DrmSessionManager drmSessionManager, C c7) {
        MediaSource.Factory factory2 = isProgressive((MediaItem.LocalConfiguration) v.checkNotNull(mediaItem.localConfiguration)) ? new ProgressiveMediaSource.Factory(factory) : new DefaultMediaSourceFactory(factory, I.f20372g);
        if (c7 != null) {
            factory2.setDownloadExecutor(c7);
        }
        if (drmSessionManager != null) {
            factory2.setDrmSessionManagerProvider(new DrmSessionManagerProvider() { // from class: androidx.media3.exoplayer.offline.b
                @Override // androidx.media3.exoplayer.drm.DrmSessionManagerProvider
                public final DrmSessionManager get(MediaItem mediaItem2) {
                    DrmSessionManager lambda$createMediaSourceInternal$4;
                    lambda$createMediaSourceInternal$4 = DownloadHelper.lambda$createMediaSourceInternal$4(DrmSessionManager.this, mediaItem2);
                    return lambda$createMediaSourceInternal$4;
                }
            });
        }
        return factory2.createMediaSource(mediaItem);
    }

    @Deprecated
    public static DownloadHelper forMediaItem(Context context, MediaItem mediaItem) {
        v.checkArgument(isProgressive((MediaItem.LocalConfiguration) v.checkNotNull(mediaItem.localConfiguration)));
        return new Factory().create(mediaItem);
    }

    @Deprecated
    public static DefaultTrackSelector.Parameters getDefaultTrackSelectorParameters(Context context) {
        return DEFAULT_TRACK_SELECTOR_PARAMETERS;
    }

    private DownloadRequest.Builder getDownloadRequestBuilder(String str, byte[] bArr) {
        DownloadRequest.Builder mimeType = new DownloadRequest.Builder(str, this.localConfiguration.uri).setMimeType(this.localConfiguration.mimeType);
        MediaItem.DrmConfiguration drmConfiguration = this.localConfiguration.drmConfiguration;
        DownloadRequest.Builder data = mimeType.setKeySetId(drmConfiguration != null ? drmConfiguration.getKeySetId() : null).setCustomCacheKey(this.localConfiguration.customCacheKey).setData(bArr);
        if (this.mode == 2) {
            assertPreparedWithNonProgressiveSourceAndTracksSelected();
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int length = this.trackSelectionsByPeriodAndRenderer.length;
            for (int i2 = 0; i2 < length; i2++) {
                arrayList2.clear();
                int length2 = this.trackSelectionsByPeriodAndRenderer[i2].length;
                for (int i7 = 0; i7 < length2; i7++) {
                    arrayList2.addAll(this.trackSelectionsByPeriodAndRenderer[i2][i7]);
                }
                arrayList.addAll(this.mediaPreparer.mediaPeriods[i2].getStreamKeys(arrayList2));
            }
            data.setStreamKeys(arrayList);
        }
        return data;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isProgressive(MediaItem.LocalConfiguration localConfiguration) {
        return Util.inferContentTypeForUriAndMimeType(localConfiguration.uri, localConfiguration.mimeType) == 4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ DrmSessionManager lambda$createMediaSourceInternal$4(DrmSessionManager drmSessionManager, MediaItem mediaItem) {
        return drmSessionManager;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$new$0() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onMediaPreparationFailed$3(IOException iOException) {
        ((Callback) v.checkNotNull(this.callback)).onPrepareError(this, iOException);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onMediaPrepared$2(boolean z6) {
        ((Callback) v.checkNotNull(this.callback)).onPrepared(this, z6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$prepare$1(Callback callback) {
        callback.onPrepared(this, false);
    }

    private static void logTrackSelectorResult(int i2, TrackSelectorResult trackSelectorResult) {
        Log.d(TAG, "Track selections changed, period index: " + i2 + ", tracks [");
        ImmutableList<Tracks.Group> groups = trackSelectorResult.tracks.getGroups();
        for (int i7 = 0; i7 < groups.size(); i7++) {
            Tracks.Group group = groups.get(i7);
            Log.d(TAG, "  group [");
            for (int i8 = 0; i8 < group.length; i8++) {
                String str = group.isTrackSelected(i8) ? "[X]" : "[ ]";
                Log.d(TAG, "    " + str + " Track:" + i8 + ", " + Format.toLogString(group.getTrackFormat(i8)) + ", supported=" + Util.getFormatSupportString(group.getTrackSupport(i8)));
            }
            Log.d(TAG, "  ]");
        }
        Log.d(TAG, "]");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onMediaPreparationFailed(IOException iOException) {
        ((Handler) v.checkNotNull(this.callbackHandler)).post(new h(1, this, iOException));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onMediaPrepared() throws ExoPlaybackException {
        v.checkNotNull(this.mediaPreparer);
        v.checkNotNull(this.mediaPreparer.mediaPeriods);
        v.checkNotNull(this.mediaPreparer.timeline);
        int i2 = this.mode;
        boolean z6 = false;
        if (i2 == 2) {
            int length = this.mediaPreparer.mediaPeriods.length;
            int size = this.rendererCapabilities.size();
            this.trackSelectionsByPeriodAndRenderer = (List[][]) Array.newInstance((Class<?>) List.class, length, size);
            this.immutableTrackSelectionsByPeriodAndRenderer = (List[][]) Array.newInstance((Class<?>) List.class, length, size);
            for (int i7 = 0; i7 < length; i7++) {
                for (int i8 = 0; i8 < size; i8++) {
                    this.trackSelectionsByPeriodAndRenderer[i7][i8] = new ArrayList();
                    this.immutableTrackSelectionsByPeriodAndRenderer[i7][i8] = Collections.unmodifiableList(this.trackSelectionsByPeriodAndRenderer[i7][i8]);
                }
            }
            this.trackGroupArrays = new TrackGroupArray[length];
            this.mappedTrackInfos = new MappingTrackSelector.MappedTrackInfo[length];
            for (int i9 = 0; i9 < length; i9++) {
                this.trackGroupArrays[i9] = this.mediaPreparer.mediaPeriods[i9].getTrackGroups();
                this.trackSelector.onSelectionActivated(runTrackSelection(i9).info);
                this.mappedTrackInfos[i9] = (MappingTrackSelector.MappedTrackInfo) v.checkNotNull(this.trackSelector.getCurrentMappedTrackInfo());
            }
            setPreparedWithNonProgressiveSourceAndTracksSelected();
            z6 = true;
        } else {
            v.checkState(i2 == 1);
            v.checkNotNull(this.mediaPreparer.seekMap);
            setPreparedWithProgressiveSource();
        }
        ((Handler) v.checkNotNull(this.callbackHandler)).post(new androidx.media3.exoplayer.audio.i(1, this, z6));
    }

    private void populateDownloadRequestBuilderWithByteRange(DownloadRequest.Builder builder, long j7, long j8) {
        long j9;
        assertPreparedWithProgressiveSource();
        Timeline timeline = this.mediaPreparer.timeline;
        Timeline.Window window = new Timeline.Window();
        Timeline.Period period = new Timeline.Period();
        long longValue = ((Long) timeline.getPeriodPositionUs(window, period, 0, Util.msToUs(j7)).second).longValue();
        if (j8 != androidx.media3.common.C.TIME_UNSET) {
            j9 = Util.msToUs(j8) + longValue;
            long j10 = period.durationUs;
            if (j10 != androidx.media3.common.C.TIME_UNSET) {
                j9 = Math.min(j9, j10 - 1);
            }
        } else {
            j9 = -9223372036854775807L;
        }
        g0 g0Var = this.mediaPreparer.seekMap;
        if (!g0Var.isSeekable()) {
            Log.w(TAG, "Cannot set download byte range for progressive stream that is unseekable");
            return;
        }
        long j11 = g0Var.getSeekPoints(longValue).f20453a.f20475b;
        long j12 = -1;
        if (j9 != androidx.media3.common.C.TIME_UNSET) {
            long j13 = g0Var.getSeekPoints(j9).f20454b.f20475b;
            if (longValue == j9 || j11 != j13) {
                j12 = j13 - j11;
            }
        }
        builder.setByteRange(j11, j12);
    }

    private void populateDownloadRequestBuilderWithDownloadRange(DownloadRequest.Builder builder, long j7, long j8) {
        int i2 = this.mode;
        if (i2 == 1) {
            populateDownloadRequestBuilderWithByteRange(builder, j7, j8);
        } else {
            if (i2 != 2) {
                return;
            }
            populateDownloadRequestBuilderWithTimeRange(builder, j7, j8);
        }
    }

    private void populateDownloadRequestBuilderWithTimeRange(DownloadRequest.Builder builder, long j7, long j8) {
        assertPreparedWithNonProgressiveSourceAndTracksSelected();
        Timeline.Window window = this.mediaPreparer.timeline.getWindow(0, new Timeline.Window());
        long defaultPositionUs = j7 == androidx.media3.common.C.TIME_UNSET ? window.getDefaultPositionUs() : Util.msToUs(j7);
        long durationUs = window.getDurationUs();
        long msToUs = j8 == androidx.media3.common.C.TIME_UNSET ? durationUs : Util.msToUs(j8);
        if (durationUs != androidx.media3.common.C.TIME_UNSET) {
            defaultPositionUs = Math.min(defaultPositionUs, durationUs);
            msToUs = Math.min(msToUs, durationUs - defaultPositionUs);
        }
        builder.setTimeRange(defaultPositionUs, msToUs);
    }

    private TrackSelectorResult runTrackSelection(int i2) throws ExoPlaybackException {
        TrackSelectorResult selectTracks = this.trackSelector.selectTracks(this.rendererCapabilities.getRendererCapabilities(), this.trackGroupArrays[i2], new MediaSource.MediaPeriodId(this.mediaPreparer.timeline.getUidOfPeriod(i2)), this.mediaPreparer.timeline);
        for (int i7 = 0; i7 < selectTracks.length; i7++) {
            ExoTrackSelection exoTrackSelection = selectTracks.selections[i7];
            if (exoTrackSelection != null) {
                List<ExoTrackSelection> list = this.trackSelectionsByPeriodAndRenderer[i2][i7];
                int i8 = 0;
                while (true) {
                    if (i8 >= list.size()) {
                        list.add(exoTrackSelection);
                        break;
                    }
                    ExoTrackSelection exoTrackSelection2 = list.get(i8);
                    if (exoTrackSelection2.getTrackGroup().equals(exoTrackSelection.getTrackGroup())) {
                        this.scratchSet.clear();
                        for (int i9 = 0; i9 < exoTrackSelection2.length(); i9++) {
                            this.scratchSet.put(exoTrackSelection2.getIndexInTrackGroup(i9), 0);
                        }
                        for (int i10 = 0; i10 < exoTrackSelection.length(); i10++) {
                            this.scratchSet.put(exoTrackSelection.getIndexInTrackGroup(i10), 0);
                        }
                        int[] iArr = new int[this.scratchSet.size()];
                        for (int i11 = 0; i11 < this.scratchSet.size(); i11++) {
                            iArr[i11] = this.scratchSet.keyAt(i11);
                        }
                        list.set(i8, new DownloadTrackSelection(exoTrackSelection2.getTrackGroup(), iArr));
                    } else {
                        i8++;
                    }
                }
            }
        }
        if (this.debugLoggingEnabled) {
            logTrackSelectorResult(i2, selectTracks);
        }
        return selectTracks;
    }

    private void setPreparedWithNonProgressiveSourceAndTracksSelected() {
        this.isPreparedWithMedia = true;
        this.areTracksSelected = true;
    }

    private void setPreparedWithProgressiveSource() {
        this.isPreparedWithMedia = true;
    }

    public void addAudioLanguagesToSelection(String... strArr) {
        try {
            assertPreparedWithNonProgressiveSourceAndTracksSelected();
            DefaultTrackSelector.Parameters.Builder buildUpon = DEFAULT_TRACK_SELECTOR_PARAMETERS.buildUpon();
            buildUpon.setForceHighestSupportedBitrate(true);
            for (RendererCapabilities rendererCapabilities : this.rendererCapabilities.getRendererCapabilities()) {
                int trackType = rendererCapabilities.getTrackType();
                buildUpon.setTrackTypeDisabled(trackType, trackType != 1);
            }
            int periodCount = getPeriodCount();
            for (String str : strArr) {
                TrackSelectionParameters build = buildUpon.setPreferredAudioLanguage(str).build();
                for (int i2 = 0; i2 < periodCount; i2++) {
                    addTrackSelectionInternal(i2, build);
                }
            }
        } catch (ExoPlaybackException e3) {
            throw new IllegalStateException(e3);
        }
    }

    public void addTextLanguagesToSelection(boolean z6, String... strArr) {
        try {
            assertPreparedWithNonProgressiveSourceAndTracksSelected();
            DefaultTrackSelector.Parameters.Builder buildUpon = DEFAULT_TRACK_SELECTOR_PARAMETERS.buildUpon();
            buildUpon.setSelectUndeterminedTextLanguage(z6);
            buildUpon.setForceHighestSupportedBitrate(true);
            for (RendererCapabilities rendererCapabilities : this.rendererCapabilities.getRendererCapabilities()) {
                int trackType = rendererCapabilities.getTrackType();
                buildUpon.setTrackTypeDisabled(trackType, trackType != 3);
            }
            int periodCount = getPeriodCount();
            for (String str : strArr) {
                TrackSelectionParameters build = buildUpon.setPreferredTextLanguage(str).build();
                for (int i2 = 0; i2 < periodCount; i2++) {
                    addTrackSelectionInternal(i2, build);
                }
            }
        } catch (ExoPlaybackException e3) {
            throw new IllegalStateException(e3);
        }
    }

    public void addTrackSelection(int i2, TrackSelectionParameters trackSelectionParameters) {
        try {
            assertPreparedWithNonProgressiveSourceAndTracksSelected();
            addTrackSelectionInternal(i2, trackSelectionParameters);
        } catch (ExoPlaybackException e3) {
            throw new IllegalStateException(e3);
        }
    }

    public void addTrackSelectionForSingleRenderer(int i2, int i7, DefaultTrackSelector.Parameters parameters, List<DefaultTrackSelector.SelectionOverride> list) {
        try {
            assertPreparedWithNonProgressiveSourceAndTracksSelected();
            DefaultTrackSelector.Parameters.Builder buildUpon = parameters.buildUpon();
            int i8 = 0;
            while (i8 < this.mappedTrackInfos[i2].getRendererCount()) {
                buildUpon.setRendererDisabled(i8, i8 != i7);
                i8++;
            }
            if (list.isEmpty()) {
                addTrackSelectionInternal(i2, buildUpon.build());
                return;
            }
            TrackGroupArray trackGroups = this.mappedTrackInfos[i2].getTrackGroups(i7);
            for (int i9 = 0; i9 < list.size(); i9++) {
                buildUpon.setSelectionOverride(i7, trackGroups, list.get(i9));
                addTrackSelectionInternal(i2, buildUpon.build());
            }
        } catch (ExoPlaybackException e3) {
            throw new IllegalStateException(e3);
        }
    }

    public void clearTrackSelections(int i2) {
        assertPreparedWithNonProgressiveSourceAndTracksSelected();
        for (int i7 = 0; i7 < this.rendererCapabilities.size(); i7++) {
            this.trackSelectionsByPeriodAndRenderer[i2][i7].clear();
        }
    }

    public DownloadRequest getDownloadRequest(byte[] bArr) {
        return getDownloadRequest(this.localConfiguration.uri.toString(), bArr);
    }

    public Object getManifest() {
        if (this.mode == 0) {
            return null;
        }
        assertPreparedWithMedia();
        if (this.mediaPreparer.timeline.getWindowCount() > 0) {
            return this.mediaPreparer.timeline.getWindow(0, this.window).manifest;
        }
        return null;
    }

    public MappingTrackSelector.MappedTrackInfo getMappedTrackInfo(int i2) {
        assertPreparedWithNonProgressiveSourceAndTracksSelected();
        return this.mappedTrackInfos[i2];
    }

    public int getPeriodCount() {
        if (this.mode == 0) {
            return 0;
        }
        assertPreparedWithMedia();
        return this.mediaPreparer.mediaPeriods.length;
    }

    public TrackGroupArray getTrackGroups(int i2) {
        assertPreparedWithNonProgressiveSourceAndTracksSelected();
        return this.trackGroupArrays[i2];
    }

    public List<ExoTrackSelection> getTrackSelections(int i2, int i7) {
        assertPreparedWithNonProgressiveSourceAndTracksSelected();
        return this.immutableTrackSelectionsByPeriodAndRenderer[i2][i7];
    }

    public Tracks getTracks(int i2) {
        assertPreparedWithNonProgressiveSourceAndTracksSelected();
        return TrackSelectionUtil.buildTracks(this.mappedTrackInfos[i2], this.immutableTrackSelectionsByPeriodAndRenderer[i2]);
    }

    public void prepare(Callback callback) {
        v.checkState(this.callback == null);
        this.callback = callback;
        if (this.mode != 0) {
            this.mediaPreparer = new MediaPreparer((MediaSource) v.checkNotNull(this.mediaSource), this);
        } else {
            this.callbackHandler.post(new h(2, this, callback));
        }
    }

    public void release() {
        MediaPreparer mediaPreparer = this.mediaPreparer;
        if (mediaPreparer != null) {
            mediaPreparer.release();
        }
        this.trackSelector.release();
        this.rendererCapabilities.release();
    }

    public void replaceTrackSelections(int i2, TrackSelectionParameters trackSelectionParameters) {
        try {
            assertPreparedWithNonProgressiveSourceAndTracksSelected();
            clearTrackSelections(i2);
            addTrackSelectionInternal(i2, trackSelectionParameters);
        } catch (ExoPlaybackException e3) {
            throw new IllegalStateException(e3);
        }
    }

    public DownloadHelper(MediaItem mediaItem, MediaSource mediaSource, TrackSelectionParameters trackSelectionParameters, RendererCapabilitiesList rendererCapabilitiesList, boolean z6) {
        this.localConfiguration = (MediaItem.LocalConfiguration) v.checkNotNull(mediaItem.localConfiguration);
        this.mediaSource = mediaSource;
        this.mode = mediaSource == null ? 0 : mediaSource instanceof ProgressiveMediaSource ? 1 : 2;
        DefaultTrackSelector defaultTrackSelector = new DefaultTrackSelector(trackSelectionParameters, new DownloadTrackSelection.Factory());
        this.trackSelector = defaultTrackSelector;
        this.rendererCapabilities = rendererCapabilitiesList;
        this.debugLoggingEnabled = z6;
        this.scratchSet = new SparseIntArray();
        defaultTrackSelector.init(new c(), new FakeBandwidthMeter());
        this.callbackHandler = Util.createHandlerForCurrentOrMainLooper();
        this.window = new Timeline.Window();
    }

    public static MediaSource createMediaSource(DownloadRequest downloadRequest, DataSource.Factory factory, DrmSessionManager drmSessionManager) {
        return createMediaSourceInternal(downloadRequest.toMediaItem(), factory, drmSessionManager, null);
    }

    public DownloadRequest getDownloadRequest(byte[] bArr, long j7, long j8) {
        return getDownloadRequest(this.localConfiguration.uri.toString(), bArr, j7, j8);
    }

    @Deprecated
    public static DownloadHelper forMediaItem(Context context, MediaItem mediaItem, DataSource.Factory factory) {
        return new Factory().setDataSourceFactory(factory).create(mediaItem);
    }

    public DownloadRequest getDownloadRequest(String str, byte[] bArr) {
        return getDownloadRequestBuilder(str, bArr).build();
    }

    @Deprecated
    public static DownloadHelper forMediaItem(Context context, MediaItem mediaItem, DataSource.Factory factory, boolean z6) {
        return new Factory().setDataSourceFactory(factory).setDebugLoggingEnabled(z6).create(mediaItem);
    }

    public DownloadRequest getDownloadRequest(String str, byte[] bArr, long j7, long j8) {
        DownloadRequest.Builder downloadRequestBuilder = getDownloadRequestBuilder(str, bArr);
        assertPreparedWithMedia();
        populateDownloadRequestBuilderWithDownloadRange(downloadRequestBuilder, j7, j8);
        return downloadRequestBuilder.build();
    }

    @Deprecated
    public static DownloadHelper forMediaItem(Context context, MediaItem mediaItem, RenderersFactory renderersFactory, DataSource.Factory factory) {
        return new Factory().setDataSourceFactory(factory).setRenderersFactory(renderersFactory).create(mediaItem);
    }

    public static final class Factory {
        private DataSource.Factory dataSourceFactory;
        private boolean debugLoggingEnabled;
        private DrmSessionManager drmSessionManager;
        private RenderersFactory renderersFactory;
        private TrackSelectionParameters trackSelectionParameters = DownloadHelper.DEFAULT_TRACK_SELECTOR_PARAMETERS;
        private C loadExecutorSupplier = null;

        public DownloadHelper create(MediaItem mediaItem) {
            boolean isProgressive = DownloadHelper.isProgressive((MediaItem.LocalConfiguration) v.checkNotNull(mediaItem.localConfiguration));
            v.checkArgument(isProgressive || this.dataSourceFactory != null);
            MediaSource createMediaSourceInternal = (isProgressive && this.dataSourceFactory == null) ? null : DownloadHelper.createMediaSourceInternal(mediaItem, (DataSource.Factory) Util.castNonNull(this.dataSourceFactory), this.drmSessionManager, this.loadExecutorSupplier);
            TrackSelectionParameters trackSelectionParameters = this.trackSelectionParameters;
            RenderersFactory renderersFactory = this.renderersFactory;
            return new DownloadHelper(mediaItem, createMediaSourceInternal, trackSelectionParameters, renderersFactory != null ? new DefaultRendererCapabilitiesList.Factory(renderersFactory).createRendererCapabilitiesList() : new UnreleaseableRendererCapabilitiesList(new RendererCapabilities[0]), this.debugLoggingEnabled);
        }

        public Factory setDataSourceFactory(DataSource.Factory factory) {
            this.dataSourceFactory = factory;
            return this;
        }

        public Factory setDebugLoggingEnabled(boolean z6) {
            this.debugLoggingEnabled = z6;
            return this;
        }

        public Factory setDrmSessionManager(DrmSessionManager drmSessionManager) {
            this.drmSessionManager = drmSessionManager;
            return this;
        }

        public Factory setLoadExecutor(C c7) {
            this.loadExecutorSupplier = c7;
            return this;
        }

        public Factory setRenderersFactory(RenderersFactory renderersFactory) {
            this.renderersFactory = renderersFactory;
            return this;
        }

        public Factory setTrackSelectionParameters(TrackSelectionParameters trackSelectionParameters) {
            this.trackSelectionParameters = trackSelectionParameters;
            return this;
        }

        public DownloadHelper create(MediaSource mediaSource) {
            RendererCapabilitiesList unreleaseableRendererCapabilitiesList;
            MediaItem mediaItem = mediaSource.getMediaItem();
            TrackSelectionParameters trackSelectionParameters = this.trackSelectionParameters;
            RenderersFactory renderersFactory = this.renderersFactory;
            if (renderersFactory != null) {
                unreleaseableRendererCapabilitiesList = new DefaultRendererCapabilitiesList.Factory(renderersFactory).createRendererCapabilitiesList();
            } else {
                unreleaseableRendererCapabilitiesList = new UnreleaseableRendererCapabilitiesList(new RendererCapabilities[0]);
            }
            return new DownloadHelper(mediaItem, mediaSource, trackSelectionParameters, unreleaseableRendererCapabilitiesList, this.debugLoggingEnabled);
        }
    }

    @Deprecated
    public static DownloadHelper forMediaItem(Context context, MediaItem mediaItem, RenderersFactory renderersFactory, DataSource.Factory factory, boolean z6) {
        return new Factory().setDataSourceFactory(factory).setRenderersFactory(renderersFactory).setDebugLoggingEnabled(z6).create(mediaItem);
    }

    @Deprecated
    public static DownloadHelper forMediaItem(MediaItem mediaItem, TrackSelectionParameters trackSelectionParameters, RenderersFactory renderersFactory, DataSource.Factory factory) {
        return new Factory().setDataSourceFactory(factory).setTrackSelectionParameters(trackSelectionParameters).setRenderersFactory(renderersFactory).create(mediaItem);
    }

    @Deprecated
    public static DownloadHelper forMediaItem(MediaItem mediaItem, TrackSelectionParameters trackSelectionParameters, RenderersFactory renderersFactory, DataSource.Factory factory, boolean z6) {
        return new Factory().setDataSourceFactory(factory).setTrackSelectionParameters(trackSelectionParameters).setRenderersFactory(renderersFactory).setDebugLoggingEnabled(z6).create(mediaItem);
    }

    @Deprecated
    public static DownloadHelper forMediaItem(MediaItem mediaItem, TrackSelectionParameters trackSelectionParameters, RenderersFactory renderersFactory, DataSource.Factory factory, DrmSessionManager drmSessionManager) {
        return new Factory().setDataSourceFactory(factory).setTrackSelectionParameters(trackSelectionParameters).setRenderersFactory(renderersFactory).setDrmSessionManager(drmSessionManager).create(mediaItem);
    }

    @Deprecated
    public static DownloadHelper forMediaItem(MediaItem mediaItem, TrackSelectionParameters trackSelectionParameters, RenderersFactory renderersFactory, DataSource.Factory factory, DrmSessionManager drmSessionManager, boolean z6) {
        return new Factory().setDataSourceFactory(factory).setTrackSelectionParameters(trackSelectionParameters).setRenderersFactory(renderersFactory).setDrmSessionManager(drmSessionManager).setDebugLoggingEnabled(z6).create(mediaItem);
    }
}
