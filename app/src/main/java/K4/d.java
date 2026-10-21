package K4;

import android.os.Handler;
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
import flix.com.vision.bvp.BetterVideoPlayer;
import java.util.List;

/* loaded from: classes2.dex */
public final class d implements Player.Listener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ BetterVideoPlayer f1789b;

    public d(BetterVideoPlayer betterVideoPlayer) {
        this.f1789b = betterVideoPlayer;
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
    public void onIsLoadingChanged(boolean z6) {
        if (z6) {
            return;
        }
        BetterVideoPlayer betterVideoPlayer = this.f1789b;
        if (betterVideoPlayer.f15906z.getPlaybackState() == 3) {
            BetterVideoPlayer.a(betterVideoPlayer, false);
        }
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
    public void onPlayWhenReadyChanged(boolean z6, int i2) {
        if (z6) {
            BetterVideoPlayer betterVideoPlayer = this.f1789b;
            if (betterVideoPlayer.f15906z.getPlaybackState() == 3) {
                betterVideoPlayer.f15864P.onStarted(betterVideoPlayer);
            }
        }
    }

    @Override // androidx.media3.common.Player.Listener
    public final /* synthetic */ void onPlaybackParametersChanged(PlaybackParameters playbackParameters) {
        androidx.media3.common.h.q(this, playbackParameters);
    }

    @Override // androidx.media3.common.Player.Listener
    public void onPlaybackStateChanged(int i2) {
        if (i2 == 1) {
            BetterVideoPlayer.LOG("STATE_IDLE", new Object[0]);
            return;
        }
        BetterVideoPlayer betterVideoPlayer = this.f1789b;
        if (i2 == 2) {
            BetterVideoPlayer.LOG("STATE_BUFFERING", new Object[0]);
            BetterVideoPlayer.a(betterVideoPlayer, true);
            return;
        }
        if (i2 == 3) {
            BetterVideoPlayer.LOG("STATE_READY", new Object[0]);
            BetterVideoPlayer.b(betterVideoPlayer);
            return;
        }
        if (i2 != 4) {
            return;
        }
        BetterVideoPlayer.LOG("STATE_ENDED", new Object[0]);
        betterVideoPlayer.getClass();
        BetterVideoPlayer.LOG("onCompletion()", new Object[0]);
        betterVideoPlayer.f15855G.setImageDrawable(betterVideoPlayer.f15867S);
        Handler handler = betterVideoPlayer.f15860L;
        if (handler != null) {
            handler.removeCallbacks(betterVideoPlayer.f15894p0);
        }
        int max = betterVideoPlayer.f15851C.getMax();
        betterVideoPlayer.f15851C.setProgress(max);
        betterVideoPlayer.f15852D.setProgress(max);
        if (betterVideoPlayer.f15868T) {
            betterVideoPlayer.reset();
            if (betterVideoPlayer.getSource() != null) {
                betterVideoPlayer.prepare();
            }
        } else {
            betterVideoPlayer.showControls();
        }
        b bVar = betterVideoPlayer.f15864P;
        if (bVar != null) {
            bVar.onCompletion(betterVideoPlayer);
        }
    }

    @Override // androidx.media3.common.Player.Listener
    public final /* synthetic */ void onPlaybackSuppressionReasonChanged(int i2) {
        androidx.media3.common.h.s(this, i2);
    }

    @Override // androidx.media3.common.Player.Listener
    public void onPlayerError(PlaybackException playbackException) {
        BetterVideoPlayer.LOG("onPlayerError: " + playbackException.getMessage(), new Object[0]);
        BetterVideoPlayer betterVideoPlayer = this.f1789b;
        betterVideoPlayer.getClass();
        BetterVideoPlayer.LOG("Player error: " + playbackException.getMessage(), new Object[0]);
        b bVar = betterVideoPlayer.f15864P;
        if (bVar == null) {
            throw new RuntimeException(playbackException);
        }
        bVar.onError(betterVideoPlayer, playbackException);
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
    public final /* synthetic */ void onTracksChanged(Tracks tracks) {
        androidx.media3.common.h.I(this, tracks);
    }

    @Override // androidx.media3.common.Player.Listener
    public void onVideoSizeChanged(VideoSize videoSize) {
        BetterVideoPlayer.LOG("Video size changed: %dx%d", Integer.valueOf(videoSize.width), Integer.valueOf(videoSize.height));
        int i2 = videoSize.width;
        int i7 = videoSize.height;
        BetterVideoPlayer betterVideoPlayer = this.f1789b;
        betterVideoPlayer.getClass();
        BetterVideoPlayer.LOG("Video size changed: %dx%d", Integer.valueOf(i2), Integer.valueOf(i7));
        betterVideoPlayer.c(betterVideoPlayer.getWidth(), betterVideoPlayer.getHeight(), i2, i7);
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
