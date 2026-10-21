package androidx.media3.common.util;

import android.os.Message;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.C;
import androidx.media3.common.DeviceInfo;
import androidx.media3.common.MediaItem;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.Metadata;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.Player;
import androidx.media3.common.Timeline;
import androidx.media3.common.TrackSelectionParameters;
import androidx.media3.common.Tracks;
import androidx.media3.common.VideoSize;
import androidx.media3.common.text.CueGroup;
import java.util.List;
import java.util.Objects;

@UnstableApi
/* loaded from: classes.dex */
public final class StuckPlayerDetector {
    private static final int MSG_STUCK_BUFFERING_TIMEOUT = 1;
    private static final int MSG_STUCK_PLAYING_NOT_ENDING_TIMEOUT = 3;
    private static final int MSG_STUCK_PLAYING_TIMEOUT = 2;
    private static final int MSG_STUCK_SUPPRESSED_TIMEOUT = 4;
    private final Callback callback;
    private final Clock clock;
    private final HandlerWrapper handler;
    private final Timeline.Period period = new Timeline.Period();
    private final Player player;
    private final Player.Listener playerListener;
    private final StuckBufferingDetector stuckBufferingDetector;
    private final StuckPlayingDetector stuckPlayingDetector;
    private final StuckPlayingNotEndingDetector stuckPlayingNotEndingDetector;
    private final StuckSuppressedDetector stuckSuppressedDetector;

    public interface Callback {
        void onStuckPlayerDetected(StuckPlayerException stuckPlayerException);
    }

    public final class StuckBufferingDetector {
        private int adGroupIndex;
        private int adIndexInAdGroup;
        private long bufferedDurationInOtherPeriodsMs;
        private long bufferedPositionInPeriodMs;
        private boolean isBuffering;
        private Object periodUid;
        private long startRealtimeMs;
        private final int stuckBufferingTimeoutMs;

        public StuckBufferingDetector(int i2) {
            this.stuckBufferingTimeoutMs = i2;
        }

        public void update() {
            if (StuckPlayerDetector.this.player.getPlaybackState() != 2 || !StuckPlayerDetector.this.player.getPlayWhenReady() || StuckPlayerDetector.this.player.getPlaybackSuppressionReason() != 0) {
                if (this.isBuffering) {
                    StuckPlayerDetector.this.handler.removeMessages(1);
                }
                this.isBuffering = false;
                return;
            }
            Timeline currentTimeline = StuckPlayerDetector.this.player.getCurrentTimeline();
            Object uidOfPeriod = currentTimeline.isEmpty() ? null : currentTimeline.getUidOfPeriod(StuckPlayerDetector.this.player.getCurrentPeriodIndex());
            int currentAdGroupIndex = StuckPlayerDetector.this.player.getCurrentAdGroupIndex();
            int currentAdIndexInAdGroup = StuckPlayerDetector.this.player.getCurrentAdIndexInAdGroup();
            long bufferedPosition = StuckPlayerDetector.this.player.getBufferedPosition();
            long max = Math.max(0L, StuckPlayerDetector.this.player.getTotalBufferedDuration() - Math.max(0L, bufferedPosition - StuckPlayerDetector.this.player.getCurrentPosition()));
            if (uidOfPeriod != null && currentAdGroupIndex == -1) {
                bufferedPosition -= currentTimeline.getPeriodByUid(uidOfPeriod, StuckPlayerDetector.this.period).getPositionInWindowMs();
            }
            long elapsedRealtime = StuckPlayerDetector.this.clock.elapsedRealtime();
            if (this.isBuffering && Objects.equals(uidOfPeriod, this.periodUid) && currentAdGroupIndex == this.adGroupIndex && currentAdIndexInAdGroup == this.adIndexInAdGroup && bufferedPosition == this.bufferedPositionInPeriodMs && max == this.bufferedDurationInOtherPeriodsMs) {
                if (elapsedRealtime - this.startRealtimeMs >= this.stuckBufferingTimeoutMs) {
                    StuckPlayerDetector.this.callback.onStuckPlayerDetected(new StuckPlayerException(1, this.stuckBufferingTimeoutMs));
                    return;
                }
                return;
            }
            this.isBuffering = true;
            this.startRealtimeMs = elapsedRealtime;
            this.periodUid = uidOfPeriod;
            this.adGroupIndex = currentAdGroupIndex;
            this.adIndexInAdGroup = currentAdIndexInAdGroup;
            this.bufferedPositionInPeriodMs = bufferedPosition;
            this.bufferedDurationInOtherPeriodsMs = max;
            StuckPlayerDetector.this.handler.removeMessages(1);
            StuckPlayerDetector.this.handler.sendEmptyMessageDelayed(1, this.stuckBufferingTimeoutMs);
        }
    }

    public final class StuckPlayingDetector {
        private int adGroupIndex;
        private int adIndexInAdGroup;
        private long currentPositionInPeriodMs;
        private boolean isPlaying;
        private Object periodUid;
        private long startRealtimeMs;
        private final int stuckPlayingTimeoutMs;

        public StuckPlayingDetector(int i2) {
            this.stuckPlayingTimeoutMs = i2;
        }

        public void update() {
            if (!StuckPlayerDetector.this.player.isPlaying()) {
                if (this.isPlaying) {
                    StuckPlayerDetector.this.handler.removeMessages(2);
                }
                this.isPlaying = false;
                return;
            }
            Timeline currentTimeline = StuckPlayerDetector.this.player.getCurrentTimeline();
            Object uidOfPeriod = currentTimeline.isEmpty() ? null : currentTimeline.getUidOfPeriod(StuckPlayerDetector.this.player.getCurrentPeriodIndex());
            int currentAdGroupIndex = StuckPlayerDetector.this.player.getCurrentAdGroupIndex();
            int currentAdIndexInAdGroup = StuckPlayerDetector.this.player.getCurrentAdIndexInAdGroup();
            long currentPosition = StuckPlayerDetector.this.player.getCurrentPosition();
            if (uidOfPeriod != null && currentAdGroupIndex == -1) {
                currentPosition -= currentTimeline.getPeriodByUid(uidOfPeriod, StuckPlayerDetector.this.period).getPositionInWindowMs();
            }
            long elapsedRealtime = StuckPlayerDetector.this.clock.elapsedRealtime();
            if (this.isPlaying && Objects.equals(uidOfPeriod, this.periodUid) && currentAdGroupIndex == this.adGroupIndex && currentAdIndexInAdGroup == this.adIndexInAdGroup && currentPosition == this.currentPositionInPeriodMs) {
                if (elapsedRealtime - this.startRealtimeMs >= this.stuckPlayingTimeoutMs) {
                    StuckPlayerDetector.this.callback.onStuckPlayerDetected(new StuckPlayerException(2, this.stuckPlayingTimeoutMs));
                    return;
                }
                return;
            }
            this.isPlaying = true;
            this.startRealtimeMs = elapsedRealtime;
            this.periodUid = uidOfPeriod;
            this.adGroupIndex = currentAdGroupIndex;
            this.adIndexInAdGroup = currentAdIndexInAdGroup;
            this.currentPositionInPeriodMs = currentPosition;
            StuckPlayerDetector.this.handler.removeMessages(2);
            StuckPlayerDetector.this.handler.sendEmptyMessageDelayed(2, this.stuckPlayingTimeoutMs);
        }
    }

    public final class StuckPlayingNotEndingDetector {
        private int adGroupIndex;
        private int adIndexInAdGroup;
        private boolean isPlayingAndReachedDuration;
        private Object periodUid;
        private long startRealtimeMs;
        private final int stuckPlayingNotEndingTimeoutMs;

        public StuckPlayingNotEndingDetector(int i2) {
            this.stuckPlayingNotEndingTimeoutMs = i2;
        }

        public void update() {
            long duration;
            Timeline currentTimeline = StuckPlayerDetector.this.player.getCurrentTimeline();
            Object uidOfPeriod = currentTimeline.isEmpty() ? null : currentTimeline.getUidOfPeriod(StuckPlayerDetector.this.player.getCurrentPeriodIndex());
            int currentAdGroupIndex = StuckPlayerDetector.this.player.getCurrentAdGroupIndex();
            int currentAdIndexInAdGroup = StuckPlayerDetector.this.player.getCurrentAdIndexInAdGroup();
            long currentPosition = StuckPlayerDetector.this.player.getCurrentPosition();
            if (uidOfPeriod == null || currentAdGroupIndex != -1) {
                duration = currentAdGroupIndex != -1 ? StuckPlayerDetector.this.player.getDuration() : -9223372036854775807L;
            } else {
                currentTimeline.getPeriodByUid(uidOfPeriod, StuckPlayerDetector.this.period);
                currentPosition -= StuckPlayerDetector.this.period.getPositionInWindowMs();
                duration = StuckPlayerDetector.this.period.getDurationMs();
            }
            boolean isPlaying = StuckPlayerDetector.this.player.isPlaying();
            if (!isPlaying || duration == C.TIME_UNSET || currentPosition < duration) {
                StuckPlayerDetector.this.handler.removeMessages(3);
                if (isPlaying && duration != C.TIME_UNSET) {
                    StuckPlayerDetector.this.handler.sendEmptyMessageDelayed(3, (int) Math.ceil((duration - currentPosition) / StuckPlayerDetector.this.player.getPlaybackParameters().speed));
                }
                this.isPlayingAndReachedDuration = false;
                return;
            }
            long elapsedRealtime = StuckPlayerDetector.this.clock.elapsedRealtime();
            if (this.isPlayingAndReachedDuration && Objects.equals(uidOfPeriod, this.periodUid) && currentAdGroupIndex == this.adGroupIndex && currentAdIndexInAdGroup == this.adIndexInAdGroup) {
                if (elapsedRealtime - this.startRealtimeMs >= this.stuckPlayingNotEndingTimeoutMs) {
                    StuckPlayerDetector.this.callback.onStuckPlayerDetected(new StuckPlayerException(3, this.stuckPlayingNotEndingTimeoutMs));
                    return;
                }
                return;
            }
            this.isPlayingAndReachedDuration = true;
            this.startRealtimeMs = elapsedRealtime;
            this.periodUid = uidOfPeriod;
            this.adGroupIndex = currentAdGroupIndex;
            this.adIndexInAdGroup = currentAdIndexInAdGroup;
            StuckPlayerDetector.this.handler.removeMessages(3);
            StuckPlayerDetector.this.handler.sendEmptyMessageDelayed(3, this.stuckPlayingNotEndingTimeoutMs);
        }
    }

    public final class StuckSuppressedDetector {
        private boolean isSuppressed;
        private long startRealtimeMs;
        private final int stuckSuppressedTimeoutMs;
        private int suppressionReason;

        public StuckSuppressedDetector(int i2) {
            this.stuckSuppressedTimeoutMs = i2;
        }

        public void update() {
            int playbackSuppressionReason = StuckPlayerDetector.this.player.getPlaybackSuppressionReason();
            if (!StuckPlayerDetector.this.player.getPlayWhenReady() || StuckPlayerDetector.this.player.getPlaybackState() == 1 || StuckPlayerDetector.this.player.getPlaybackState() == 4 || playbackSuppressionReason == 0 || playbackSuppressionReason == 1) {
                if (this.isSuppressed) {
                    StuckPlayerDetector.this.handler.removeMessages(4);
                }
                this.isSuppressed = false;
                return;
            }
            long elapsedRealtime = StuckPlayerDetector.this.clock.elapsedRealtime();
            if (this.isSuppressed && this.suppressionReason == playbackSuppressionReason) {
                if (elapsedRealtime - this.startRealtimeMs >= this.stuckSuppressedTimeoutMs) {
                    StuckPlayerDetector.this.callback.onStuckPlayerDetected(new StuckPlayerException(4, this.stuckSuppressedTimeoutMs));
                }
            } else {
                this.isSuppressed = true;
                this.startRealtimeMs = elapsedRealtime;
                this.suppressionReason = playbackSuppressionReason;
                StuckPlayerDetector.this.handler.removeMessages(4);
                StuckPlayerDetector.this.handler.sendEmptyMessageDelayed(4, this.stuckSuppressedTimeoutMs);
            }
        }
    }

    public StuckPlayerDetector(Player player, Callback callback, Clock clock, int i2, int i7, int i8, int i9) {
        this.player = player;
        this.callback = callback;
        this.clock = clock;
        this.handler = clock.createHandler(player.getApplicationLooper(), new c(this, 1));
        this.stuckBufferingDetector = new StuckBufferingDetector(i2);
        this.stuckPlayingDetector = new StuckPlayingDetector(i7);
        this.stuckPlayingNotEndingDetector = new StuckPlayingNotEndingDetector(i8);
        this.stuckSuppressedDetector = new StuckSuppressedDetector(i9);
        Player.Listener listener = new Player.Listener() { // from class: androidx.media3.common.util.StuckPlayerDetector.1
            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onAudioAttributesChanged(AudioAttributes audioAttributes) {
                androidx.media3.common.h.a(this, audioAttributes);
            }

            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onAudioSessionIdChanged(int i10) {
                androidx.media3.common.h.b(this, i10);
            }

            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onAvailableCommandsChanged(Player.Commands commands) {
                androidx.media3.common.h.c(this, commands);
            }

            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onCues(CueGroup cueGroup) {
                androidx.media3.common.h.d(this, cueGroup);
            }

            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onDeviceInfoChanged(DeviceInfo deviceInfo) {
                androidx.media3.common.h.f(this, deviceInfo);
            }

            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onDeviceVolumeChanged(int i10, boolean z6) {
                androidx.media3.common.h.g(this, i10, z6);
            }

            @Override // androidx.media3.common.Player.Listener
            public void onEvents(Player player2, Player.Events events) {
                StuckPlayerDetector.this.onPlayerEvents();
            }

            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onIsLoadingChanged(boolean z6) {
                androidx.media3.common.h.i(this, z6);
            }

            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onIsPlayingChanged(boolean z6) {
                androidx.media3.common.h.j(this, z6);
            }

            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onLoadingChanged(boolean z6) {
                androidx.media3.common.h.k(this, z6);
            }

            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onMaxSeekToPreviousPositionChanged(long j7) {
                androidx.media3.common.h.l(this, j7);
            }

            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onMediaItemTransition(MediaItem mediaItem, int i10) {
                androidx.media3.common.h.m(this, mediaItem, i10);
            }

            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onMediaMetadataChanged(MediaMetadata mediaMetadata) {
                androidx.media3.common.h.n(this, mediaMetadata);
            }

            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onMetadata(Metadata metadata) {
                androidx.media3.common.h.o(this, metadata);
            }

            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onPlayWhenReadyChanged(boolean z6, int i10) {
                androidx.media3.common.h.p(this, z6, i10);
            }

            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onPlaybackParametersChanged(PlaybackParameters playbackParameters) {
                androidx.media3.common.h.q(this, playbackParameters);
            }

            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onPlaybackStateChanged(int i10) {
                androidx.media3.common.h.r(this, i10);
            }

            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onPlaybackSuppressionReasonChanged(int i10) {
                androidx.media3.common.h.s(this, i10);
            }

            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onPlayerError(PlaybackException playbackException) {
                androidx.media3.common.h.t(this, playbackException);
            }

            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onPlayerErrorChanged(PlaybackException playbackException) {
                androidx.media3.common.h.u(this, playbackException);
            }

            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onPlayerStateChanged(boolean z6, int i10) {
                androidx.media3.common.h.v(this, z6, i10);
            }

            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onPlaylistMetadataChanged(MediaMetadata mediaMetadata) {
                androidx.media3.common.h.w(this, mediaMetadata);
            }

            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onPositionDiscontinuity(int i10) {
                androidx.media3.common.h.x(this, i10);
            }

            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onRenderedFirstFrame() {
                androidx.media3.common.h.z(this);
            }

            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onRepeatModeChanged(int i10) {
                androidx.media3.common.h.A(this, i10);
            }

            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onSeekBackIncrementChanged(long j7) {
                androidx.media3.common.h.B(this, j7);
            }

            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onSeekForwardIncrementChanged(long j7) {
                androidx.media3.common.h.C(this, j7);
            }

            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onShuffleModeEnabledChanged(boolean z6) {
                androidx.media3.common.h.D(this, z6);
            }

            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onSkipSilenceEnabledChanged(boolean z6) {
                androidx.media3.common.h.E(this, z6);
            }

            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onSurfaceSizeChanged(int i10, int i11) {
                androidx.media3.common.h.F(this, i10, i11);
            }

            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onTimelineChanged(Timeline timeline, int i10) {
                androidx.media3.common.h.G(this, timeline, i10);
            }

            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onTrackSelectionParametersChanged(TrackSelectionParameters trackSelectionParameters) {
                androidx.media3.common.h.H(this, trackSelectionParameters);
            }

            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onTracksChanged(Tracks tracks) {
                androidx.media3.common.h.I(this, tracks);
            }

            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onVideoSizeChanged(VideoSize videoSize) {
                androidx.media3.common.h.J(this, videoSize);
            }

            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onVolumeChanged(float f3) {
                androidx.media3.common.h.K(this, f3);
            }

            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onCues(List list) {
                androidx.media3.common.h.e(this, list);
            }

            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onPositionDiscontinuity(Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, int i10) {
                androidx.media3.common.h.y(this, positionInfo, positionInfo2, i10);
            }
        };
        this.playerListener = listener;
        player.addListener(listener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean handleMessage(Message message) {
        int i2 = message.what;
        if (i2 == 1) {
            this.stuckBufferingDetector.update();
            return true;
        }
        if (i2 == 2) {
            this.stuckPlayingDetector.update();
            return true;
        }
        if (i2 == 3) {
            this.stuckPlayingNotEndingDetector.update();
            return true;
        }
        if (i2 != 4) {
            return false;
        }
        this.stuckSuppressedDetector.update();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPlayerEvents() {
        this.stuckBufferingDetector.update();
        this.stuckPlayingDetector.update();
        this.stuckPlayingNotEndingDetector.update();
        this.stuckSuppressedDetector.update();
    }

    public void release() {
        this.handler.removeCallbacksAndMessages(null);
        this.player.removeListener(this.playerListener);
    }
}
