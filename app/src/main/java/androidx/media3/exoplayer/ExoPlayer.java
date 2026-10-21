package androidx.media3.exoplayer;

import android.content.Context;
import android.media.AudioDeviceInfo;
import android.os.Looper;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.AuxEffectInfo;
import androidx.media3.common.Effect;
import androidx.media3.common.Format;
import androidx.media3.common.MediaItem;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.Player;
import androidx.media3.common.PriorityTaskManager;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.ExperimentalApi;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.DefaultLivePlaybackSpeedControl;
import androidx.media3.exoplayer.PlayerMessage;
import androidx.media3.exoplayer.analytics.AnalyticsCollector;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.audio.AudioOutputProvider;
import androidx.media3.exoplayer.image.ImageOutput;
import androidx.media3.exoplayer.source.DefaultMediaSourceFactory;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.ShuffleOrder;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.exoplayer.trackselection.DefaultTrackSelector;
import androidx.media3.exoplayer.trackselection.TrackSelectionArray;
import androidx.media3.exoplayer.trackselection.TrackSelector;
import androidx.media3.exoplayer.upstream.BandwidthMeter;
import androidx.media3.exoplayer.video.VideoFrameMetadataListener;
import androidx.media3.exoplayer.video.spherical.CameraMotionListener;
import java.util.List;
import v0.C1739x;

/* loaded from: classes.dex */
public interface ExoPlayer extends Player {

    @UnstableApi
    public static final long DEFAULT_DETACH_SURFACE_TIMEOUT_MS = 2000;

    @UnstableApi
    public static final long DEFAULT_RELEASE_TIMEOUT_MS = 500;

    @UnstableApi
    public static final int DEFAULT_STUCK_BUFFERING_DETECTION_TIMEOUT_MS = 600000;

    @UnstableApi
    public static final int DEFAULT_STUCK_PLAYING_DETECTION_TIMEOUT_MS;

    @UnstableApi
    public static final int DEFAULT_STUCK_PLAYING_NOT_ENDING_TIMEOUT_MS = 60000;

    @UnstableApi
    public static final int DEFAULT_STUCK_SUPPRESSED_DETECTION_TIMEOUT_MS = 600000;

    @UnstableApi
    public interface AudioOffloadListener {
        void onOffloadedPlayback(boolean z6);

        void onSleepingForOffloadChanged(boolean z6);
    }

    public static final class Builder {

        @UnstableApi
        public static boolean experimentalEnableStuckPlayingDetection = true;
        P3.p analyticsCollectorFunction;
        AudioAttributes audioAttributes;
        AudioOutputProvider audioOutputProvider;
        boolean avoidLoadingWhileEnded;
        P3.C bandwidthMeterSupplier;
        boolean buildCalled;
        Clock clock;
        final Context context;
        long detachSurfaceTimeoutMs;
        boolean deviceVolumeControlEnabled;
        boolean dynamicSchedulingEnabled;
        long foregroundModeTimeoutMs;
        boolean handleAudioBecomingNoisy;
        boolean handleAudioFocus;
        LivePlaybackSpeedControl livePlaybackSpeedControl;
        P3.C loadControlSupplier;
        Looper looper;
        long maxSeekToPreviousPositionMs;
        P3.C mediaSourceFactorySupplier;
        boolean pauseAtEndOfMediaItems;
        PlaybackLooperProvider playbackLooperProvider;
        String playerName;
        int priority;
        PriorityTaskManager priorityTaskManager;
        long releaseTimeoutMs;
        P3.C renderersFactorySupplier;
        ScrubbingModeParameters scrubbingModeParameters;
        long seekBackIncrementMs;
        long seekForwardIncrementMs;
        SeekParameters seekParameters;
        boolean skipSilenceEnabled;
        int stuckBufferingDetectionTimeoutMs;
        int stuckPlayingDetectionTimeoutMs;
        int stuckPlayingNotEndingTimeoutMs;
        int stuckSuppressedDetectionTimeoutMs;
        SuitableOutputChecker suitableOutputChecker;
        boolean suppressPlaybackOnUnsuitableOutput;
        P3.C trackSelectorSupplier;
        boolean useLazyPreparation;
        boolean usePlatformDiagnostics;
        int videoChangeFrameRateStrategy;
        int videoScalingMode;
        int wakeMode;
        boolean wakeModeSet;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public Builder(final android.content.Context r4) {
            /*
                r3 = this;
                androidx.media3.exoplayer.l r0 = new androidx.media3.exoplayer.l
                r1 = 0
                r0.<init>()
                androidx.media3.exoplayer.l r1 = new androidx.media3.exoplayer.l
                r2 = 1
                r1.<init>()
                r3.<init>(r4, r0, r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media3.exoplayer.ExoPlayer.Builder.<init>(android.content.Context):void");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ RenderersFactory lambda$new$0(Context context) {
            return new DefaultRenderersFactory(context);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ MediaSource.Factory lambda$new$1(Context context) {
            return new DefaultMediaSourceFactory(context, new C1739x());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ TrackSelector lambda$new$10(TrackSelector trackSelector) {
            return trackSelector;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ LoadControl lambda$new$11(LoadControl loadControl) {
            return loadControl;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ BandwidthMeter lambda$new$12(BandwidthMeter bandwidthMeter) {
            return bandwidthMeter;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ AnalyticsCollector lambda$new$13(AnalyticsCollector analyticsCollector, Clock clock) {
            return analyticsCollector;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ TrackSelector lambda$new$14(Context context) {
            return new DefaultTrackSelector(context);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ RenderersFactory lambda$new$2(RenderersFactory renderersFactory) {
            return renderersFactory;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ MediaSource.Factory lambda$new$3(Context context) {
            return new DefaultMediaSourceFactory(context, new C1739x());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ RenderersFactory lambda$new$4(Context context) {
            return new DefaultRenderersFactory(context);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ MediaSource.Factory lambda$new$5(MediaSource.Factory factory) {
            return factory;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ RenderersFactory lambda$new$6(RenderersFactory renderersFactory) {
            return renderersFactory;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ MediaSource.Factory lambda$new$7(MediaSource.Factory factory) {
            return factory;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ RenderersFactory lambda$new$8(RenderersFactory renderersFactory) {
            return renderersFactory;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ MediaSource.Factory lambda$new$9(MediaSource.Factory factory) {
            return factory;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ AnalyticsCollector lambda$setAnalyticsCollector$21(AnalyticsCollector analyticsCollector, Clock clock) {
            return analyticsCollector;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ BandwidthMeter lambda$setBandwidthMeter$20(BandwidthMeter bandwidthMeter) {
            return bandwidthMeter;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ LoadControl lambda$setLoadControl$19(LoadControl loadControl) {
            return loadControl;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ MediaSource.Factory lambda$setMediaSourceFactory$17(MediaSource.Factory factory) {
            return factory;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ RenderersFactory lambda$setRenderersFactory$16(RenderersFactory renderersFactory) {
            return renderersFactory;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ TrackSelector lambda$setTrackSelector$18(TrackSelector trackSelector) {
            return trackSelector;
        }

        public ExoPlayer build() {
            P3.v.checkState(!this.buildCalled);
            this.buildCalled = true;
            return new ExoPlayerImpl(this, null);
        }

        public SimpleExoPlayer buildSimpleExoPlayer() {
            P3.v.checkState(!this.buildCalled);
            this.buildCalled = true;
            return new SimpleExoPlayer(this);
        }

        @ExperimentalApi
        public Builder experimentalAvoidLoadingWhileEnded(boolean z6) {
            P3.v.checkState(!this.buildCalled);
            this.avoidLoadingWhileEnded = z6;
            return this;
        }

        @UnstableApi
        public Builder experimentalSetDynamicSchedulingEnabled(boolean z6) {
            P3.v.checkState(!this.buildCalled);
            this.dynamicSchedulingEnabled = z6;
            return this;
        }

        @UnstableApi
        public Builder experimentalSetForegroundModeTimeoutMs(long j7) {
            P3.v.checkState(!this.buildCalled);
            this.foregroundModeTimeoutMs = j7;
            return this;
        }

        @UnstableApi
        public Builder setAnalyticsCollector(AnalyticsCollector analyticsCollector) {
            P3.v.checkState(!this.buildCalled);
            P3.v.checkNotNull(analyticsCollector);
            this.analyticsCollectorFunction = new C0581k(analyticsCollector, 0);
            return this;
        }

        public Builder setAudioAttributes(AudioAttributes audioAttributes, boolean z6) {
            P3.v.checkState(!this.buildCalled);
            this.audioAttributes = (AudioAttributes) P3.v.checkNotNull(audioAttributes);
            this.handleAudioFocus = z6;
            return this;
        }

        public Builder setAudioOutputProvider(AudioOutputProvider audioOutputProvider) {
            P3.v.checkState(!this.buildCalled);
            this.audioOutputProvider = (AudioOutputProvider) P3.v.checkNotNull(audioOutputProvider);
            return this;
        }

        @UnstableApi
        public Builder setBandwidthMeter(BandwidthMeter bandwidthMeter) {
            P3.v.checkState(!this.buildCalled);
            P3.v.checkNotNull(bandwidthMeter);
            this.bandwidthMeterSupplier = new C0585o(bandwidthMeter, 0);
            return this;
        }

        @UnstableApi
        public Builder setClock(Clock clock) {
            P3.v.checkState(!this.buildCalled);
            this.clock = clock;
            return this;
        }

        @UnstableApi
        public Builder setDetachSurfaceTimeoutMs(long j7) {
            P3.v.checkState(!this.buildCalled);
            this.detachSurfaceTimeoutMs = j7;
            return this;
        }

        @UnstableApi
        public Builder setDeviceVolumeControlEnabled(boolean z6) {
            P3.v.checkState(!this.buildCalled);
            this.deviceVolumeControlEnabled = z6;
            return this;
        }

        public Builder setHandleAudioBecomingNoisy(boolean z6) {
            P3.v.checkState(!this.buildCalled);
            this.handleAudioBecomingNoisy = z6;
            return this;
        }

        @UnstableApi
        public Builder setLivePlaybackSpeedControl(LivePlaybackSpeedControl livePlaybackSpeedControl) {
            P3.v.checkState(!this.buildCalled);
            this.livePlaybackSpeedControl = (LivePlaybackSpeedControl) P3.v.checkNotNull(livePlaybackSpeedControl);
            return this;
        }

        @UnstableApi
        public Builder setLoadControl(LoadControl loadControl) {
            P3.v.checkState(!this.buildCalled);
            P3.v.checkNotNull(loadControl);
            this.loadControlSupplier = new C0580j(loadControl, 0);
            return this;
        }

        @UnstableApi
        public Builder setLooper(Looper looper) {
            P3.v.checkState(!this.buildCalled);
            P3.v.checkNotNull(looper);
            this.looper = looper;
            return this;
        }

        @UnstableApi
        public Builder setMaxSeekToPreviousPositionMs(long j7) {
            P3.v.checkArgument(j7 >= 0);
            P3.v.checkState(!this.buildCalled);
            this.maxSeekToPreviousPositionMs = j7;
            return this;
        }

        public Builder setMediaSourceFactory(MediaSource.Factory factory) {
            P3.v.checkState(!this.buildCalled);
            P3.v.checkNotNull(factory);
            this.mediaSourceFactorySupplier = new C0584n(factory, 3);
            return this;
        }

        @UnstableApi
        public Builder setName(String str) {
            P3.v.checkState(!this.buildCalled);
            P3.v.checkArgument(!str.equals(PlayerId.PRELOAD.name));
            this.playerName = str;
            return this;
        }

        @UnstableApi
        public Builder setPauseAtEndOfMediaItems(boolean z6) {
            P3.v.checkState(!this.buildCalled);
            this.pauseAtEndOfMediaItems = z6;
            return this;
        }

        @UnstableApi
        public Builder setPlaybackLooper(Looper looper) {
            P3.v.checkState((this.buildCalled || looper == Looper.getMainLooper()) ? false : true);
            this.playbackLooperProvider = new PlaybackLooperProvider(looper);
            return this;
        }

        public Builder setPlaybackLooperProvider(PlaybackLooperProvider playbackLooperProvider) {
            P3.v.checkState(!this.buildCalled);
            this.playbackLooperProvider = playbackLooperProvider;
            return this;
        }

        @UnstableApi
        public Builder setPriority(int i2) {
            P3.v.checkState(!this.buildCalled);
            this.priority = i2;
            return this;
        }

        @UnstableApi
        public Builder setPriorityTaskManager(PriorityTaskManager priorityTaskManager) {
            P3.v.checkState(!this.buildCalled);
            this.priorityTaskManager = priorityTaskManager;
            return this;
        }

        @UnstableApi
        public Builder setReleaseTimeoutMs(long j7) {
            P3.v.checkState(!this.buildCalled);
            this.releaseTimeoutMs = j7;
            return this;
        }

        @UnstableApi
        public Builder setRenderersFactory(RenderersFactory renderersFactory) {
            P3.v.checkState(!this.buildCalled);
            P3.v.checkNotNull(renderersFactory);
            this.renderersFactorySupplier = new C0583m(renderersFactory, 0);
            return this;
        }

        @UnstableApi
        public Builder setScrubbingModeParameters(ScrubbingModeParameters scrubbingModeParameters) {
            P3.v.checkState(!this.buildCalled);
            this.scrubbingModeParameters = (ScrubbingModeParameters) P3.v.checkNotNull(scrubbingModeParameters);
            return this;
        }

        public Builder setSeekBackIncrementMs(long j7) {
            P3.v.checkArgument(j7 > 0);
            P3.v.checkState(!this.buildCalled);
            this.seekBackIncrementMs = j7;
            return this;
        }

        public Builder setSeekForwardIncrementMs(long j7) {
            P3.v.checkArgument(j7 > 0);
            P3.v.checkState(!this.buildCalled);
            this.seekForwardIncrementMs = j7;
            return this;
        }

        @UnstableApi
        public Builder setSeekParameters(SeekParameters seekParameters) {
            P3.v.checkState(!this.buildCalled);
            this.seekParameters = (SeekParameters) P3.v.checkNotNull(seekParameters);
            return this;
        }

        @UnstableApi
        public Builder setSkipSilenceEnabled(boolean z6) {
            P3.v.checkState(!this.buildCalled);
            this.skipSilenceEnabled = z6;
            return this;
        }

        @UnstableApi
        public Builder setStuckBufferingDetectionTimeoutMs(int i2) {
            P3.v.checkState(!this.buildCalled);
            P3.v.checkArgument(i2 > 0);
            this.stuckBufferingDetectionTimeoutMs = i2;
            return this;
        }

        @UnstableApi
        public Builder setStuckPlayingDetectionTimeoutMs(int i2) {
            P3.v.checkState(!this.buildCalled);
            P3.v.checkArgument(i2 > 0);
            this.stuckPlayingDetectionTimeoutMs = i2;
            return this;
        }

        @UnstableApi
        public Builder setStuckPlayingNotEndingTimeoutMs(int i2) {
            P3.v.checkState(!this.buildCalled);
            P3.v.checkArgument(i2 > 0);
            this.stuckPlayingNotEndingTimeoutMs = i2;
            return this;
        }

        @UnstableApi
        public Builder setStuckSuppressedDetectionTimeoutMs(int i2) {
            P3.v.checkState(!this.buildCalled);
            P3.v.checkArgument(i2 > 0);
            this.stuckSuppressedDetectionTimeoutMs = i2;
            return this;
        }

        public Builder setSuitableOutputChecker(SuitableOutputChecker suitableOutputChecker) {
            P3.v.checkState(!this.buildCalled);
            this.suitableOutputChecker = suitableOutputChecker;
            return this;
        }

        @UnstableApi
        public Builder setSuppressPlaybackOnUnsuitableOutput(boolean z6) {
            P3.v.checkState(!this.buildCalled);
            this.suppressPlaybackOnUnsuitableOutput = z6;
            return this;
        }

        @UnstableApi
        public Builder setTrackSelector(TrackSelector trackSelector) {
            P3.v.checkState(!this.buildCalled);
            P3.v.checkNotNull(trackSelector);
            this.trackSelectorSupplier = new C0586p(trackSelector, 1);
            return this;
        }

        @UnstableApi
        public Builder setUseLazyPreparation(boolean z6) {
            P3.v.checkState(!this.buildCalled);
            this.useLazyPreparation = z6;
            return this;
        }

        @UnstableApi
        public Builder setUsePlatformDiagnostics(boolean z6) {
            P3.v.checkState(!this.buildCalled);
            this.usePlatformDiagnostics = z6;
            return this;
        }

        @UnstableApi
        public Builder setVideoChangeFrameRateStrategy(int i2) {
            P3.v.checkState(!this.buildCalled);
            this.videoChangeFrameRateStrategy = i2;
            return this;
        }

        @UnstableApi
        public Builder setVideoScalingMode(int i2) {
            P3.v.checkState(!this.buildCalled);
            this.videoScalingMode = i2;
            return this;
        }

        public Builder setWakeMode(int i2) {
            P3.v.checkState(!this.buildCalled);
            this.wakeMode = i2;
            this.wakeModeSet = true;
            return this;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        @androidx.media3.common.util.UnstableApi
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public Builder(final android.content.Context r4, androidx.media3.exoplayer.RenderersFactory r5) {
            /*
                r3 = this;
                androidx.media3.exoplayer.m r0 = new androidx.media3.exoplayer.m
                r1 = 2
                r0.<init>(r5, r1)
                androidx.media3.exoplayer.l r1 = new androidx.media3.exoplayer.l
                r2 = 2
                r1.<init>()
                r3.<init>(r4, r0, r1)
                P3.v.checkNotNull(r5)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media3.exoplayer.ExoPlayer.Builder.<init>(android.content.Context, androidx.media3.exoplayer.RenderersFactory):void");
        }

        /* JADX WARN: Illegal instructions before constructor call */
        @androidx.media3.common.util.UnstableApi
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public Builder(final android.content.Context r4, androidx.media3.exoplayer.source.MediaSource.Factory r5) {
            /*
                r3 = this;
                androidx.media3.exoplayer.l r0 = new androidx.media3.exoplayer.l
                r1 = 5
                r0.<init>()
                androidx.media3.exoplayer.n r1 = new androidx.media3.exoplayer.n
                r2 = 2
                r1.<init>(r5, r2)
                r3.<init>(r4, r0, r1)
                P3.v.checkNotNull(r5)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media3.exoplayer.ExoPlayer.Builder.<init>(android.content.Context, androidx.media3.exoplayer.source.MediaSource$Factory):void");
        }

        @UnstableApi
        public Builder(Context context, RenderersFactory renderersFactory, MediaSource.Factory factory) {
            this(context, new C0583m(renderersFactory, 1), new C0584n(factory, 0));
            P3.v.checkNotNull(renderersFactory);
            P3.v.checkNotNull(factory);
        }

        /* JADX WARN: Illegal instructions before constructor call */
        @androidx.media3.common.util.UnstableApi
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public Builder(android.content.Context r9, androidx.media3.exoplayer.RenderersFactory r10, androidx.media3.exoplayer.source.MediaSource.Factory r11, androidx.media3.exoplayer.trackselection.TrackSelector r12, androidx.media3.exoplayer.LoadControl r13, androidx.media3.exoplayer.upstream.BandwidthMeter r14, androidx.media3.exoplayer.analytics.AnalyticsCollector r15) {
            /*
                r8 = this;
                androidx.media3.exoplayer.m r2 = new androidx.media3.exoplayer.m
                r0 = 3
                r2.<init>(r10, r0)
                androidx.media3.exoplayer.n r3 = new androidx.media3.exoplayer.n
                r0 = 1
                r3.<init>(r11, r0)
                androidx.media3.exoplayer.p r4 = new androidx.media3.exoplayer.p
                r0 = 0
                r4.<init>(r12, r0)
                androidx.media3.exoplayer.j r5 = new androidx.media3.exoplayer.j
                r0 = 1
                r5.<init>(r13, r0)
                androidx.media3.exoplayer.o r6 = new androidx.media3.exoplayer.o
                r13 = 1
                r6.<init>(r14, r13)
                androidx.media3.exoplayer.k r7 = new androidx.media3.exoplayer.k
                r7.<init>(r15, r13)
                r0 = r8
                r1 = r9
                r0.<init>(r1, r2, r3, r4, r5, r6, r7)
                P3.v.checkNotNull(r10)
                P3.v.checkNotNull(r11)
                P3.v.checkNotNull(r12)
                P3.v.checkNotNull(r14)
                P3.v.checkNotNull(r15)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media3.exoplayer.ExoPlayer.Builder.<init>(android.content.Context, androidx.media3.exoplayer.RenderersFactory, androidx.media3.exoplayer.source.MediaSource$Factory, androidx.media3.exoplayer.trackselection.TrackSelector, androidx.media3.exoplayer.LoadControl, androidx.media3.exoplayer.upstream.BandwidthMeter, androidx.media3.exoplayer.analytics.AnalyticsCollector):void");
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private Builder(final android.content.Context r9, P3.C r10, P3.C r11) {
            /*
                r8 = this;
                androidx.media3.exoplayer.l r4 = new androidx.media3.exoplayer.l
                r0 = 3
                r4.<init>()
                androidx.media3.exoplayer.q r5 = new androidx.media3.exoplayer.q
                r5.<init>()
                androidx.media3.exoplayer.l r6 = new androidx.media3.exoplayer.l
                r0 = 4
                r6.<init>()
                androidx.media3.exoplayer.Z r7 = new androidx.media3.exoplayer.Z
                r0 = 3
                r7.<init>(r0)
                r0 = r8
                r1 = r9
                r2 = r10
                r3 = r11
                r0.<init>(r1, r2, r3, r4, r5, r6, r7)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media3.exoplayer.ExoPlayer.Builder.<init>(android.content.Context, P3.C, P3.C):void");
        }

        private Builder(Context context, P3.C c7, P3.C c8, P3.C c9, P3.C c10, P3.C c11, P3.p pVar) {
            this.context = (Context) P3.v.checkNotNull(context);
            this.renderersFactorySupplier = c7;
            this.mediaSourceFactorySupplier = c8;
            this.trackSelectorSupplier = c9;
            this.loadControlSupplier = c10;
            this.bandwidthMeterSupplier = c11;
            this.analyticsCollectorFunction = pVar;
            this.looper = Util.getCurrentOrMainLooper();
            this.audioAttributes = AudioAttributes.DEFAULT;
            this.wakeMode = 0;
            this.videoScalingMode = 1;
            this.videoChangeFrameRateStrategy = 0;
            this.useLazyPreparation = true;
            this.seekParameters = SeekParameters.DEFAULT;
            this.seekBackIncrementMs = 5000L;
            this.seekForwardIncrementMs = 15000L;
            this.maxSeekToPreviousPositionMs = androidx.media3.common.C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS;
            this.scrubbingModeParameters = ScrubbingModeParameters.DEFAULT;
            this.livePlaybackSpeedControl = new DefaultLivePlaybackSpeedControl.Builder().build();
            this.clock = Clock.DEFAULT;
            this.releaseTimeoutMs = 500L;
            this.detachSurfaceTimeoutMs = ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS;
            this.stuckBufferingDetectionTimeoutMs = 600000;
            boolean z6 = experimentalEnableStuckPlayingDetection;
            int i2 = Log.LOG_LEVEL_OFF;
            this.stuckPlayingDetectionTimeoutMs = z6 ? ExoPlayer.DEFAULT_STUCK_PLAYING_DETECTION_TIMEOUT_MS : Integer.MAX_VALUE;
            this.stuckPlayingNotEndingTimeoutMs = experimentalEnableStuckPlayingDetection ? ExoPlayer.DEFAULT_STUCK_PLAYING_NOT_ENDING_TIMEOUT_MS : i2;
            this.stuckSuppressedDetectionTimeoutMs = 600000;
            this.usePlatformDiagnostics = true;
            this.playerName = "";
            this.priority = -1000;
            this.suitableOutputChecker = new DefaultSuitableOutputChecker();
            this.avoidLoadingWhileEnded = true;
        }
    }

    @UnstableApi
    public static class PreloadConfiguration {
        public static final PreloadConfiguration DEFAULT = new PreloadConfiguration(androidx.media3.common.C.TIME_UNSET);
        public final long targetPreloadDurationUs;

        public PreloadConfiguration(long j7) {
            this.targetPreloadDurationUs = j7;
        }
    }

    static {
        DEFAULT_STUCK_PLAYING_DETECTION_TIMEOUT_MS = Util.isRunningOnEmulator() ? 30000 : 10000;
    }

    void addAnalyticsListener(AnalyticsListener analyticsListener);

    @UnstableApi
    void addAudioCodecParametersChangeListener(CodecParametersChangeListener codecParametersChangeListener, List<String> list);

    @UnstableApi
    void addAudioOffloadListener(AudioOffloadListener audioOffloadListener);

    @UnstableApi
    void addMediaSource(int i2, MediaSource mediaSource);

    @UnstableApi
    void addMediaSource(MediaSource mediaSource);

    @UnstableApi
    void addMediaSources(int i2, List<MediaSource> list);

    @UnstableApi
    void addMediaSources(List<MediaSource> list);

    @UnstableApi
    void addVideoCodecParametersChangeListener(CodecParametersChangeListener codecParametersChangeListener, List<String> list);

    @UnstableApi
    void clearAuxEffectInfo();

    @UnstableApi
    void clearCameraMotionListener(CameraMotionListener cameraMotionListener);

    @UnstableApi
    void clearVideoFrameMetadataListener(VideoFrameMetadataListener videoFrameMetadataListener);

    @UnstableApi
    PlayerMessage createMessage(PlayerMessage.Target target);

    @UnstableApi
    AnalyticsCollector getAnalyticsCollector();

    @UnstableApi
    DecoderCounters getAudioDecoderCounters();

    @UnstableApi
    Format getAudioFormat();

    @UnstableApi
    Clock getClock();

    @UnstableApi
    @Deprecated
    TrackGroupArray getCurrentTrackGroups();

    @UnstableApi
    @Deprecated
    TrackSelectionArray getCurrentTrackSelections();

    @UnstableApi
    boolean getPauseAtEndOfMediaItems();

    @UnstableApi
    Looper getPlaybackLooper();

    @Override // androidx.media3.common.Player
    /* bridge */ /* synthetic */ PlaybackException getPlayerError();

    @Override // androidx.media3.common.Player
    ExoPlaybackException getPlayerError();

    @UnstableApi
    PreloadConfiguration getPreloadConfiguration();

    @UnstableApi
    Renderer getRenderer(int i2);

    @UnstableApi
    int getRendererCount();

    @UnstableApi
    int getRendererType(int i2);

    @UnstableApi
    ScrubbingModeParameters getScrubbingModeParameters();

    @UnstableApi
    Renderer getSecondaryRenderer(int i2);

    @UnstableApi
    SeekParameters getSeekParameters();

    @UnstableApi
    ShuffleOrder getShuffleOrder();

    @UnstableApi
    boolean getSkipSilenceEnabled();

    @UnstableApi
    TrackSelector getTrackSelector();

    @UnstableApi
    int getVideoChangeFrameRateStrategy();

    @UnstableApi
    DecoderCounters getVideoDecoderCounters();

    @UnstableApi
    Format getVideoFormat();

    @UnstableApi
    int getVideoScalingMode();

    @UnstableApi
    boolean isReleased();

    @UnstableApi
    boolean isScrubbingModeEnabled();

    @UnstableApi
    boolean isSleepingForOffload();

    @UnstableApi
    boolean isTunnelingEnabled();

    @UnstableApi
    @Deprecated
    void prepare(MediaSource mediaSource);

    @UnstableApi
    @Deprecated
    void prepare(MediaSource mediaSource, boolean z6, boolean z7);

    @Override // androidx.media3.common.Player
    void release();

    void removeAnalyticsListener(AnalyticsListener analyticsListener);

    @UnstableApi
    void removeAudioCodecParametersChangeListener(CodecParametersChangeListener codecParametersChangeListener);

    @UnstableApi
    void removeAudioOffloadListener(AudioOffloadListener audioOffloadListener);

    @UnstableApi
    void removeVideoCodecParametersChangeListener(CodecParametersChangeListener codecParametersChangeListener);

    @Override // androidx.media3.common.Player
    void replaceMediaItem(int i2, MediaItem mediaItem);

    @Override // androidx.media3.common.Player
    void replaceMediaItems(int i2, int i7, List<MediaItem> list);

    @UnstableApi
    void setAudioCodecParameters(CodecParameters codecParameters);

    @UnstableApi
    void setAudioSessionId(int i2);

    @UnstableApi
    void setAuxEffectInfo(AuxEffectInfo auxEffectInfo);

    @UnstableApi
    void setCameraMotionListener(CameraMotionListener cameraMotionListener);

    @UnstableApi
    void setForegroundMode(boolean z6);

    void setHandleAudioBecomingNoisy(boolean z6);

    @UnstableApi
    void setImageOutput(ImageOutput imageOutput);

    @UnstableApi
    void setMaxSeekToPreviousPositionMs(long j7);

    @UnstableApi
    void setMediaSource(MediaSource mediaSource);

    @UnstableApi
    void setMediaSource(MediaSource mediaSource, long j7);

    @UnstableApi
    void setMediaSource(MediaSource mediaSource, boolean z6);

    @UnstableApi
    void setMediaSources(List<MediaSource> list);

    @UnstableApi
    void setMediaSources(List<MediaSource> list, int i2, long j7);

    @UnstableApi
    void setMediaSources(List<MediaSource> list, boolean z6);

    @UnstableApi
    void setPauseAtEndOfMediaItems(boolean z6);

    @UnstableApi
    void setPreferredAudioDevice(AudioDeviceInfo audioDeviceInfo);

    @UnstableApi
    void setPreloadConfiguration(PreloadConfiguration preloadConfiguration);

    @UnstableApi
    void setPriority(int i2);

    @UnstableApi
    void setPriorityTaskManager(PriorityTaskManager priorityTaskManager);

    @UnstableApi
    void setScrubbingModeEnabled(boolean z6);

    @UnstableApi
    void setScrubbingModeParameters(ScrubbingModeParameters scrubbingModeParameters);

    @UnstableApi
    void setSeekBackIncrementMs(long j7);

    @UnstableApi
    void setSeekForwardIncrementMs(long j7);

    @UnstableApi
    void setSeekParameters(SeekParameters seekParameters);

    @UnstableApi
    void setShuffleOrder(ShuffleOrder shuffleOrder);

    @UnstableApi
    void setSkipSilenceEnabled(boolean z6);

    @UnstableApi
    void setVideoChangeFrameRateStrategy(int i2);

    @UnstableApi
    void setVideoCodecParameters(CodecParameters codecParameters);

    @UnstableApi
    void setVideoEffects(List<Effect> list);

    @UnstableApi
    void setVideoFrameMetadataListener(VideoFrameMetadataListener videoFrameMetadataListener);

    @UnstableApi
    void setVideoScalingMode(int i2);

    @UnstableApi
    void setVirtualDeviceId(int i2);

    void setWakeMode(int i2);
}
