package B4;

import androidx.media3.common.AudioAttributes;
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
import flix.com.vision.activities.player.SimpleVideoPlayer;
import flix.com.vision.bvp.BetterVideoPlayer;
import java.util.List;

/* loaded from: classes2.dex */
public final class D implements Player.Listener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SimpleVideoPlayer f225b;

    public D(SimpleVideoPlayer simpleVideoPlayer) {
        this.f225b = simpleVideoPlayer;
    }

    @Override // androidx.media3.common.Player.Listener
    public final /* synthetic */ void onAudioAttributesChanged(AudioAttributes audioAttributes) {
        androidx.media3.common.h.a(this, audioAttributes);
    }

    @Override // androidx.media3.common.Player.Listener
    public final /* synthetic */ void onAudioSessionIdChanged(int i2) {
        androidx.media3.common.h.b(this, i2);
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
    public final /* synthetic */ void onDeviceVolumeChanged(int i2, boolean z6) {
        androidx.media3.common.h.g(this, i2, z6);
    }

    @Override // androidx.media3.common.Player.Listener
    public final /* synthetic */ void onEvents(Player player, Player.Events events) {
        androidx.media3.common.h.h(this, player, events);
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
    public final /* synthetic */ void onMediaItemTransition(MediaItem mediaItem, int i2) {
        androidx.media3.common.h.m(this, mediaItem, i2);
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
    public final /* synthetic */ void onPlayWhenReadyChanged(boolean z6, int i2) {
        androidx.media3.common.h.p(this, z6, i2);
    }

    @Override // androidx.media3.common.Player.Listener
    public final /* synthetic */ void onPlaybackParametersChanged(PlaybackParameters playbackParameters) {
        androidx.media3.common.h.q(this, playbackParameters);
    }

    @Override // androidx.media3.common.Player.Listener
    public void onPlaybackStateChanged(int i2) {
        boolean z6;
        SimpleVideoPlayer simpleVideoPlayer = this.f225b;
        if (i2 == 1) {
            simpleVideoPlayer.z(false);
            BetterVideoPlayer.LOG("STATE_IDLE", new Object[0]);
            return;
        }
        if (i2 == 2) {
            BetterVideoPlayer.LOG("STATE_BUFFERING", new Object[0]);
            simpleVideoPlayer.z(true);
            return;
        }
        if (i2 == 3) {
            BetterVideoPlayer.LOG("STATE_READY", new Object[0]);
            simpleVideoPlayer.z(false);
            SimpleVideoPlayer.f(simpleVideoPlayer);
            if (simpleVideoPlayer.f15630A.isControlsShown()) {
                simpleVideoPlayer.f15634C.removeCallbacks(simpleVideoPlayer.f15685j0);
                simpleVideoPlayer.f15634C.postDelayed(simpleVideoPlayer.f15685j0, 4000L);
                return;
            }
            return;
        }
        if (i2 != 4) {
            return;
        }
        simpleVideoPlayer.z(false);
        simpleVideoPlayer.f15630A.showControls();
        simpleVideoPlayer.h();
        if (!simpleVideoPlayer.f15646I.isSeries() || !simpleVideoPlayer.f15672a0 || simpleVideoPlayer.f15682h0 >= simpleVideoPlayer.f15683i0 || (z6 = simpleVideoPlayer.f15663R) || z6) {
            return;
        }
        simpleVideoPlayer.h();
        int i7 = simpleVideoPlayer.f15682h0;
        simpleVideoPlayer.f15682h0 = i7 + 1;
        simpleVideoPlayer.x(i7);
    }

    @Override // androidx.media3.common.Player.Listener
    public final /* synthetic */ void onPlaybackSuppressionReasonChanged(int i2) {
        androidx.media3.common.h.s(this, i2);
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
    public final /* synthetic */ void onPlayerStateChanged(boolean z6, int i2) {
        androidx.media3.common.h.v(this, z6, i2);
    }

    @Override // androidx.media3.common.Player.Listener
    public final /* synthetic */ void onPlaylistMetadataChanged(MediaMetadata mediaMetadata) {
        androidx.media3.common.h.w(this, mediaMetadata);
    }

    @Override // androidx.media3.common.Player.Listener
    public final /* synthetic */ void onPositionDiscontinuity(int i2) {
        androidx.media3.common.h.x(this, i2);
    }

    @Override // androidx.media3.common.Player.Listener
    public final /* synthetic */ void onRenderedFirstFrame() {
        androidx.media3.common.h.z(this);
    }

    @Override // androidx.media3.common.Player.Listener
    public final /* synthetic */ void onRepeatModeChanged(int i2) {
        androidx.media3.common.h.A(this, i2);
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
    public final /* synthetic */ void onSurfaceSizeChanged(int i2, int i7) {
        androidx.media3.common.h.F(this, i2, i7);
    }

    @Override // androidx.media3.common.Player.Listener
    public final /* synthetic */ void onTimelineChanged(Timeline timeline, int i2) {
        androidx.media3.common.h.G(this, timeline, i2);
    }

    @Override // androidx.media3.common.Player.Listener
    public final /* synthetic */ void onTrackSelectionParametersChanged(TrackSelectionParameters trackSelectionParameters) {
        androidx.media3.common.h.H(this, trackSelectionParameters);
    }

    @Override // androidx.media3.common.Player.Listener
    public void onTracksChanged(Tracks tracks) {
        SimpleVideoPlayer.f(this.f225b);
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
    public final /* synthetic */ void onPositionDiscontinuity(Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, int i2) {
        androidx.media3.common.h.y(this, positionInfo, positionInfo2, i2);
    }
}
