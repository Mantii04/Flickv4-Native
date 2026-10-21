package androidx.media3.exoplayer.source.preload;

import P3.C;
import android.os.Looper;
import android.util.Pair;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.HandlerWrapper;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.LoadControl;
import androidx.media3.exoplayer.LoadingInfo;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.drm.DrmSessionManagerProvider;
import androidx.media3.exoplayer.source.MediaPeriod;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.exoplayer.source.WrappingMediaSource;
import androidx.media3.exoplayer.trackselection.TrackSelector;
import androidx.media3.exoplayer.trackselection.TrackSelectorResult;
import androidx.media3.exoplayer.upstream.Allocator;
import androidx.media3.exoplayer.upstream.BandwidthMeter;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy;
import androidx.media3.exoplayer.upstream.PlayerIdAwareAllocator;
import java.io.IOException;
import java.util.Arrays;

@UnstableApi
/* loaded from: classes.dex */
public final class PreloadMediaSource extends WrappingMediaSource {
    private static final long CHECK_FOR_PRELOAD_ERROR_INTERVAL_MS = 100;
    private static final int CONTINUE_LOADING_RETRY_COUNT = 10;
    private static final long MAYBE_CONTINUE_LOADING_INTERVAL_MS = 100;
    private static final String TAG = "PreloadMediaSource";
    private final Allocator allocator;
    private final BandwidthMeter bandwidthMeter;
    private final LoadControl loadControl;
    private boolean onSourcePreparedNotified;
    private boolean onUsedByPlayerNotified;
    private Pair<PreloadMediaPeriod, MediaSource.MediaPeriodId> playingPreloadedMediaPeriodAndId;
    private boolean preloadCalled;
    private final PreloadControl preloadControl;
    private final HandlerWrapper preloadHandler;
    private Pair<PreloadMediaPeriod, MediaPeriodKey> preloadingMediaPeriodAndKey;
    private boolean prepareChildSourceCalled;
    private final HandlerWrapper releaseHandler;
    private boolean releasePreloadMediaSourceCalled;
    private final RendererCapabilities[] rendererCapabilities;
    private long startPositionUs;
    private Timeline timeline;
    private final TrackSelector trackSelector;

    public static final class Factory implements MediaSource.Factory {
        private final BandwidthMeter bandwidthMeter;
        private Clock clock = Clock.DEFAULT;
        private final LoadControl loadControl;
        private final MediaSource.Factory mediaSourceFactory;
        private final PreloadControl preloadControl;
        private final Looper preloadLooper;
        private final RendererCapabilities[] rendererCapabilities;
        private final TrackSelector trackSelector;

        public Factory(MediaSource.Factory factory, PreloadControl preloadControl, TrackSelector trackSelector, BandwidthMeter bandwidthMeter, RendererCapabilities[] rendererCapabilitiesArr, LoadControl loadControl, Looper looper) {
            this.mediaSourceFactory = factory;
            this.preloadControl = preloadControl;
            this.trackSelector = trackSelector;
            this.bandwidthMeter = bandwidthMeter;
            this.rendererCapabilities = (RendererCapabilities[]) Arrays.copyOf(rendererCapabilitiesArr, rendererCapabilitiesArr.length);
            this.loadControl = loadControl;
            this.preloadLooper = looper;
        }

        @Override // androidx.media3.exoplayer.source.MediaSource.Factory
        public final /* synthetic */ MediaSource.Factory experimentalParseSubtitlesDuringExtraction(boolean z6) {
            return androidx.media3.exoplayer.source.h.a(this, z6);
        }

        @Override // androidx.media3.exoplayer.source.MediaSource.Factory
        public final /* synthetic */ MediaSource.Factory experimentalSetCodecsToParseWithinGopSampleDependencies(int i2) {
            return androidx.media3.exoplayer.source.h.b(this, i2);
        }

        @Override // androidx.media3.exoplayer.source.MediaSource.Factory
        public int[] getSupportedTypes() {
            return this.mediaSourceFactory.getSupportedTypes();
        }

        public Factory setClock(Clock clock) {
            this.clock = clock;
            return this;
        }

        @Override // androidx.media3.exoplayer.source.MediaSource.Factory
        public final /* synthetic */ MediaSource.Factory setDownloadExecutor(C c7) {
            return androidx.media3.exoplayer.source.h.d(this, c7);
        }

        @Override // androidx.media3.exoplayer.source.MediaSource.Factory
        public final /* synthetic */ MediaSource.Factory setSubtitleParserFactory(S0.q qVar) {
            return androidx.media3.exoplayer.source.h.e(this, qVar);
        }

        @Override // androidx.media3.exoplayer.source.MediaSource.Factory
        public PreloadMediaSource createMediaSource(MediaItem mediaItem) {
            return new PreloadMediaSource(this.mediaSourceFactory.createMediaSource(mediaItem), this.preloadControl, this.trackSelector, this.bandwidthMeter, this.rendererCapabilities, this.loadControl, this.preloadLooper, this.clock);
        }

        @Override // androidx.media3.exoplayer.source.MediaSource.Factory
        public Factory setCmcdConfigurationFactory(CmcdConfiguration.Factory factory) {
            this.mediaSourceFactory.setCmcdConfigurationFactory(factory);
            return this;
        }

        @Override // androidx.media3.exoplayer.source.MediaSource.Factory
        public Factory setDrmSessionManagerProvider(DrmSessionManagerProvider drmSessionManagerProvider) {
            this.mediaSourceFactory.setDrmSessionManagerProvider(drmSessionManagerProvider);
            return this;
        }

        @Override // androidx.media3.exoplayer.source.MediaSource.Factory
        public Factory setLoadErrorHandlingPolicy(LoadErrorHandlingPolicy loadErrorHandlingPolicy) {
            this.mediaSourceFactory.setLoadErrorHandlingPolicy(loadErrorHandlingPolicy);
            return this;
        }

        public PreloadMediaSource createMediaSource(MediaSource mediaSource) {
            return new PreloadMediaSource(mediaSource, this.preloadControl, this.trackSelector, this.bandwidthMeter, this.rendererCapabilities, this.loadControl, this.preloadLooper, this.clock);
        }
    }

    public static class MediaPeriodKey {
        public final MediaSource.MediaPeriodId mediaPeriodId;
        private final Long startPositionUs;

        public MediaPeriodKey(MediaSource.MediaPeriodId mediaPeriodId, long j7) {
            this.mediaPeriodId = mediaPeriodId;
            this.startPositionUs = Long.valueOf(j7);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof MediaPeriodKey)) {
                return false;
            }
            MediaPeriodKey mediaPeriodKey = (MediaPeriodKey) obj;
            return PreloadMediaSource.mediaPeriodIdEqualsWithoutWindowSequenceNumber(this.mediaPeriodId, mediaPeriodKey.mediaPeriodId) && this.startPositionUs.equals(mediaPeriodKey.startPositionUs);
        }

        public int hashCode() {
            int hashCode = (this.mediaPeriodId.periodUid.hashCode() + 527) * 31;
            MediaSource.MediaPeriodId mediaPeriodId = this.mediaPeriodId;
            return this.startPositionUs.intValue() + ((((((hashCode + mediaPeriodId.adGroupIndex) * 31) + mediaPeriodId.adIndexInAdGroup) * 31) + mediaPeriodId.nextAdGroupIndex) * 31);
        }
    }

    public interface PreloadControl {
        boolean onContinueLoadingRequested(PreloadMediaSource preloadMediaSource, long j7);

        void onLoadedToTheEndOfSource(PreloadMediaSource preloadMediaSource);

        boolean onLoadingUnableToContinue(PreloadMediaSource preloadMediaSource);

        void onPreloadError(PreloadException preloadException, PreloadMediaSource preloadMediaSource);

        boolean onSourcePrepared(PreloadMediaSource preloadMediaSource);

        boolean onTracksSelected(PreloadMediaSource preloadMediaSource);

        void onUsedByPlayer(PreloadMediaSource preloadMediaSource);
    }

    public class PreloadMediaPeriodCallback implements MediaPeriod.Callback {
        private int continueLoadingRetryCountBeforeCallingPreloadControlAgain = -1;
        private Runnable maybeContinueLoadingRunnable;
        private final long periodStartPositionUs;
        private boolean prepared;

        public PreloadMediaPeriodCallback(long j7) {
            this.periodStartPositionUs = j7;
        }

        private LoadControl.Parameters createLoadControlParameters(PlayerId playerId, Timeline timeline, MediaSource.MediaPeriodId mediaPeriodId, long j7) {
            return new LoadControl.Parameters(playerId, timeline, mediaPeriodId, 0L, j7, 1.0f, false, false, androidx.media3.common.C.TIME_UNSET, androidx.media3.common.C.TIME_UNSET);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onContinueLoadingRequested$1(MediaPeriod mediaPeriod) {
            if (PreloadMediaSource.this.isUsedByPlayer()) {
                return;
            }
            PreloadMediaPeriod preloadMediaPeriod = (PreloadMediaPeriod) mediaPeriod;
            if (this.prepared) {
                long bufferedPositionUs = mediaPeriod.getBufferedPositionUs();
                if (bufferedPositionUs == Long.MIN_VALUE) {
                    PreloadMediaSource.this.preloadControl.onLoadedToTheEndOfSource(PreloadMediaSource.this);
                    PreloadMediaSource.this.stopPreloading();
                    return;
                } else if (!PreloadMediaSource.this.preloadControl.onContinueLoadingRequested(PreloadMediaSource.this, bufferedPositionUs - this.periodStartPositionUs)) {
                    PreloadMediaSource.this.stopPreloading();
                    return;
                }
            }
            MediaPeriodKey mediaPeriodKey = (MediaPeriodKey) ((Pair) P3.v.checkNotNull(PreloadMediaSource.this.preloadingMediaPeriodAndKey)).second;
            this.continueLoadingRetryCountBeforeCallingPreloadControlAgain = -1;
            lambda$maybeContinueLoading$2(preloadMediaPeriod, mediaPeriodKey.mediaPeriodId);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onPrepared$0(MediaPeriod mediaPeriod) {
            TrackSelectorResult trackSelectorResult;
            if (PreloadMediaSource.this.isUsedByPlayer()) {
                return;
            }
            PreloadMediaPeriod preloadMediaPeriod = (PreloadMediaPeriod) mediaPeriod;
            TrackGroupArray trackGroups = preloadMediaPeriod.getTrackGroups();
            MediaSource.MediaPeriodId mediaPeriodId = ((MediaPeriodKey) ((Pair) P3.v.checkNotNull(PreloadMediaSource.this.preloadingMediaPeriodAndKey)).second).mediaPeriodId;
            try {
                trackSelectorResult = PreloadMediaSource.this.trackSelector.selectTracks(PreloadMediaSource.this.rendererCapabilities, trackGroups, mediaPeriodId, (Timeline) P3.v.checkNotNull(PreloadMediaSource.this.timeline));
            } catch (ExoPlaybackException e3) {
                Log.e(PreloadMediaSource.TAG, "Failed to select tracks", e3);
                trackSelectorResult = null;
            }
            if (trackSelectorResult == null) {
                PreloadMediaSource.this.stopPreloading();
                return;
            }
            preloadMediaPeriod.selectTracksForPreloading(trackSelectorResult.selections, this.periodStartPositionUs);
            if (!PreloadMediaSource.this.preloadControl.onTracksSelected(PreloadMediaSource.this)) {
                PreloadMediaSource.this.stopPreloading();
                return;
            }
            PreloadMediaSource.this.loadControl.onTracksSelected(createLoadControlParameters(PreloadMediaSource.this.getPlayerId(), (Timeline) P3.v.checkNotNull(PreloadMediaSource.this.timeline), mediaPeriodId, mediaPeriod.getBufferedPositionUs()), trackGroups, trackSelectorResult.selections);
            this.continueLoadingRetryCountBeforeCallingPreloadControlAgain = -1;
            lambda$maybeContinueLoading$2(preloadMediaPeriod, mediaPeriodId);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: maybeContinueLoading, reason: merged with bridge method [inline-methods] */
        public void lambda$maybeContinueLoading$2(MediaPeriod mediaPeriod, MediaSource.MediaPeriodId mediaPeriodId) {
            if (PreloadMediaSource.this.preloadingMediaPeriodAndKey == null || PreloadMediaSource.this.preloadingMediaPeriodAndKey.first != mediaPeriod) {
                return;
            }
            if (this.maybeContinueLoadingRunnable != null) {
                PreloadMediaSource.this.preloadHandler.removeCallbacks(this.maybeContinueLoadingRunnable);
                this.maybeContinueLoadingRunnable = null;
            }
            if (PreloadMediaSource.this.loadControl.shouldContinueLoading(createLoadControlParameters(PreloadMediaSource.this.getPlayerId(), (Timeline) P3.v.checkNotNull(PreloadMediaSource.this.timeline), mediaPeriodId, this.prepared ? mediaPeriod.getBufferedPositionUs() : 0L))) {
                this.continueLoadingRetryCountBeforeCallingPreloadControlAgain = -1;
                mediaPeriod.continueLoading(new LoadingInfo.Builder().setPlaybackPositionUs(this.periodStartPositionUs).build());
                return;
            }
            int i2 = this.continueLoadingRetryCountBeforeCallingPreloadControlAgain;
            if (i2 != -1 && i2 < 10) {
                this.continueLoadingRetryCountBeforeCallingPreloadControlAgain = i2 + 1;
            } else if (PreloadMediaSource.this.preloadControl.onLoadingUnableToContinue(PreloadMediaSource.this)) {
                this.continueLoadingRetryCountBeforeCallingPreloadControlAgain = 0;
            } else {
                this.continueLoadingRetryCountBeforeCallingPreloadControlAgain = -1;
            }
            this.maybeContinueLoadingRunnable = new u(this, mediaPeriod, mediaPeriodId, 0);
            PreloadMediaSource.this.preloadHandler.postDelayed(this.maybeContinueLoadingRunnable, 100L);
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod.Callback
        public void onPrepared(MediaPeriod mediaPeriod) {
            this.prepared = true;
            PreloadMediaSource.this.preloadHandler.post(new v(this, mediaPeriod, 0));
        }

        @Override // androidx.media3.exoplayer.source.SequenceableLoader.Callback
        public void onContinueLoadingRequested(MediaPeriod mediaPeriod) {
            PreloadMediaSource.this.preloadHandler.post(new v(this, mediaPeriod, 1));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkForPreloadError() {
        try {
            maybeThrowSourceInfoRefreshError();
            Pair<PreloadMediaPeriod, MediaPeriodKey> pair = this.preloadingMediaPeriodAndKey;
            if (pair != null) {
                PreloadMediaPeriod preloadMediaPeriod = (PreloadMediaPeriod) pair.first;
                if (preloadMediaPeriod.prepared) {
                    preloadMediaPeriod.maybeThrowStreamError();
                } else {
                    preloadMediaPeriod.maybeThrowPrepareError();
                }
            }
            this.preloadHandler.postDelayed(new s(this, 2), 100L);
        } catch (IOException e3) {
            this.preloadControl.onPreloadError(new PreloadException(getMediaItem(), null, e3), this);
            stopPreloading();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isUsedByPlayer() {
        return prepareSourceCalled();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$clear$1() {
        Pair<PreloadMediaPeriod, MediaPeriodKey> pair = this.preloadingMediaPeriodAndKey;
        if (pair != null) {
            this.mediaSource.releasePeriod(((PreloadMediaPeriod) pair.first).mediaPeriod);
            this.preloadingMediaPeriodAndKey = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onChildSourceInfoRefreshed$2(Timeline timeline) {
        if (isUsedByPlayer() || this.onSourcePreparedNotified) {
            return;
        }
        this.onSourcePreparedNotified = true;
        if (!this.preloadControl.onSourcePrepared(this)) {
            stopPreloading();
        } else {
            Pair<Object, Long> periodPositionUs = timeline.getPeriodPositionUs(new Timeline.Window(), new Timeline.Period(), 0, this.startPositionUs);
            createPeriod(new MediaSource.MediaPeriodId(periodPositionUs.first), this.allocator, ((Long) periodPositionUs.second).longValue()).preload(new PreloadMediaPeriodCallback(((Long) periodPositionUs.second).longValue()), ((Long) periodPositionUs.second).longValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$preload$0(long j7) {
        this.onSourcePreparedNotified = false;
        if (isUsedByPlayer()) {
            onUsedByPlayer();
            return;
        }
        this.preloadCalled = true;
        this.startPositionUs = j7;
        PlayerId playerId = PlayerId.PRELOAD;
        setPlayerId(playerId);
        this.loadControl.onPrepared(playerId);
        prepareSourceInternal(this.bandwidthMeter.getTransferListener());
        checkForPreloadError();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$releasePreloadMediaSource$3() {
        if (this.preloadCalled) {
            this.loadControl.onReleased(PlayerId.PRELOAD);
        }
        this.releasePreloadMediaSourceCalled = true;
        this.preloadCalled = false;
        this.startPositionUs = androidx.media3.common.C.TIME_UNSET;
        this.onSourcePreparedNotified = false;
        Pair<PreloadMediaPeriod, MediaPeriodKey> pair = this.preloadingMediaPeriodAndKey;
        if (pair != null) {
            this.mediaSource.releasePeriod(((PreloadMediaPeriod) pair.first).mediaPeriod);
            this.preloadingMediaPeriodAndKey = null;
        }
        releaseSourceInternal();
        this.preloadHandler.removeCallbacksAndMessages(null);
        this.releaseHandler.removeCallbacksAndMessages(null);
    }

    private void maybeSetPlayerIdForAllocator() {
        Allocator allocator = this.allocator;
        if (allocator instanceof PlayerIdAwareAllocator) {
            ((PlayerIdAwareAllocator) allocator).setPlayerId(getPlayerId());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean mediaPeriodIdEqualsWithoutWindowSequenceNumber(MediaSource.MediaPeriodId mediaPeriodId, MediaSource.MediaPeriodId mediaPeriodId2) {
        return mediaPeriodId.periodUid.equals(mediaPeriodId2.periodUid) && mediaPeriodId.adGroupIndex == mediaPeriodId2.adGroupIndex && mediaPeriodId.adIndexInAdGroup == mediaPeriodId2.adIndexInAdGroup && mediaPeriodId.nextAdGroupIndex == mediaPeriodId2.nextAdGroupIndex;
    }

    private void onUsedByPlayer() {
        this.preloadControl.onUsedByPlayer(this);
        stopPreloading();
        this.onUsedByPlayerNotified = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopPreloading() {
        this.preloadHandler.removeCallbacksAndMessages(null);
    }

    public void clear() {
        Util.postOrRun(this.preloadHandler, new s(this, 1));
    }

    @Override // androidx.media3.exoplayer.source.WrappingMediaSource
    public MediaSource.MediaPeriodId getMediaPeriodIdForChildMediaPeriodId(MediaSource.MediaPeriodId mediaPeriodId) {
        Pair<PreloadMediaPeriod, MediaSource.MediaPeriodId> pair = this.playingPreloadedMediaPeriodAndId;
        return (pair == null || !mediaPeriodIdEqualsWithoutWindowSequenceNumber(mediaPeriodId, (MediaSource.MediaPeriodId) ((Pair) P3.v.checkNotNull(pair)).second)) ? mediaPeriodId : (MediaSource.MediaPeriodId) ((Pair) P3.v.checkNotNull(this.playingPreloadedMediaPeriodAndId)).second;
    }

    @Override // androidx.media3.exoplayer.source.WrappingMediaSource
    public void onChildSourceInfoRefreshed(Timeline timeline) {
        this.timeline = timeline;
        refreshSourceInfo(timeline);
        this.preloadHandler.post(new n(1, this, timeline));
    }

    public void preload(long j7) {
        this.preloadHandler.post(new androidx.media3.exoplayer.audio.e(this, j7, 1));
    }

    @Override // androidx.media3.exoplayer.source.WrappingMediaSource
    public void prepareSourceInternal() {
        P3.v.checkState(Looper.myLooper() == this.preloadHandler.getLooper());
        if (isUsedByPlayer() && !this.onUsedByPlayerNotified) {
            onUsedByPlayer();
        }
        maybeSetPlayerIdForAllocator();
        Timeline timeline = this.timeline;
        if (timeline != null) {
            onChildSourceInfoRefreshed(timeline);
        } else {
            if (this.prepareChildSourceCalled) {
                return;
            }
            this.prepareChildSourceCalled = true;
            prepareChildSource();
        }
    }

    @Override // androidx.media3.exoplayer.source.WrappingMediaSource, androidx.media3.exoplayer.source.MediaSource
    public void releasePeriod(MediaPeriod mediaPeriod) {
        PreloadMediaPeriod preloadMediaPeriod = (PreloadMediaPeriod) mediaPeriod;
        Pair<PreloadMediaPeriod, MediaPeriodKey> pair = this.preloadingMediaPeriodAndKey;
        if (pair == null || preloadMediaPeriod != ((Pair) P3.v.checkNotNull(pair)).first) {
            Pair<PreloadMediaPeriod, MediaSource.MediaPeriodId> pair2 = this.playingPreloadedMediaPeriodAndId;
            if (pair2 != null && preloadMediaPeriod == ((Pair) P3.v.checkNotNull(pair2)).first) {
                this.playingPreloadedMediaPeriodAndId = null;
            }
        } else {
            this.preloadingMediaPeriodAndKey = null;
        }
        this.mediaSource.releasePeriod(preloadMediaPeriod.mediaPeriod);
    }

    public void releasePreloadMediaSource() {
        this.releaseHandler.post(new s(this, 0));
    }

    @Override // androidx.media3.exoplayer.source.CompositeMediaSource, androidx.media3.exoplayer.source.BaseMediaSource
    public void releaseSourceInternal() {
        if (isUsedByPlayer()) {
            return;
        }
        this.onUsedByPlayerNotified = false;
        if (this.preloadCalled && !this.releasePreloadMediaSourceCalled) {
            setPlayerId(PlayerId.PRELOAD);
            maybeSetPlayerIdForAllocator();
        } else {
            this.timeline = null;
            this.prepareChildSourceCalled = false;
            super.releaseSourceInternal();
        }
    }

    private PreloadMediaSource(MediaSource mediaSource, PreloadControl preloadControl, TrackSelector trackSelector, BandwidthMeter bandwidthMeter, RendererCapabilities[] rendererCapabilitiesArr, LoadControl loadControl, Looper looper, Clock clock) {
        super(mediaSource);
        this.preloadControl = preloadControl;
        this.trackSelector = trackSelector;
        this.bandwidthMeter = bandwidthMeter;
        this.rendererCapabilities = rendererCapabilitiesArr;
        this.loadControl = loadControl;
        this.allocator = loadControl.getAllocator(PlayerId.PRELOAD);
        this.preloadHandler = clock.createHandler(looper, null);
        this.releaseHandler = clock.createHandler(looper, null);
        this.startPositionUs = androidx.media3.common.C.TIME_UNSET;
    }

    @Override // androidx.media3.exoplayer.source.WrappingMediaSource, androidx.media3.exoplayer.source.MediaSource
    public PreloadMediaPeriod createPeriod(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j7) {
        MediaPeriodKey mediaPeriodKey = new MediaPeriodKey(mediaPeriodId, j7);
        Pair<PreloadMediaPeriod, MediaPeriodKey> pair = this.preloadingMediaPeriodAndKey;
        if (pair != null && mediaPeriodKey.equals(pair.second)) {
            PreloadMediaPeriod preloadMediaPeriod = (PreloadMediaPeriod) ((Pair) P3.v.checkNotNull(this.preloadingMediaPeriodAndKey)).first;
            if (isUsedByPlayer()) {
                this.preloadingMediaPeriodAndKey = null;
                this.playingPreloadedMediaPeriodAndId = new Pair<>(preloadMediaPeriod, mediaPeriodId);
            }
            return preloadMediaPeriod;
        }
        Pair<PreloadMediaPeriod, MediaPeriodKey> pair2 = this.preloadingMediaPeriodAndKey;
        if (pair2 != null) {
            this.mediaSource.releasePeriod(((PreloadMediaPeriod) ((Pair) P3.v.checkNotNull(pair2)).first).mediaPeriod);
            this.preloadingMediaPeriodAndKey = null;
        }
        PreloadMediaPeriod preloadMediaPeriod2 = new PreloadMediaPeriod(this.mediaSource.createPeriod(mediaPeriodId, allocator, j7));
        if (!isUsedByPlayer()) {
            this.preloadingMediaPeriodAndKey = new Pair<>(preloadMediaPeriod2, mediaPeriodKey);
        }
        return preloadMediaPeriod2;
    }
}
