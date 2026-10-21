package androidx.media3.common;

import V3.F;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import androidx.media3.common.Metadata;
import androidx.media3.common.Player;
import androidx.media3.common.SimpleBasePlayer;
import androidx.media3.common.text.CueGroup;
import androidx.media3.common.util.UnstableApi;
import java.util.List;
import java.util.Objects;

@UnstableApi
/* loaded from: classes.dex */
public class ForwardingSimpleBasePlayer extends SimpleBasePlayer {
    private Metadata lastTimedMetadata;
    private LivePositionSuppliers livePositionSuppliers;
    private int pendingDiscontinuityReason;
    private boolean pendingFirstFrameRendered;
    private long pendingPositionDiscontinuityNewPositionMs;
    private int playWhenReadyChangeReason;
    private Player player;
    private final Player.Listener playerListener;

    public static final class LivePositionSuppliers {
        public final SimpleBasePlayer.LivePositionSupplier bufferedPositionSupplier;
        public final SimpleBasePlayer.LivePositionSupplier contentBufferedPositionSupplier;
        public final SimpleBasePlayer.LivePositionSupplier contentPositionSupplier;
        public final SimpleBasePlayer.LivePositionSupplier currentPositionSupplier;
        public final SimpleBasePlayer.LivePositionSupplier totalBufferedPositionSupplier;

        public LivePositionSuppliers(final Player player) {
            Objects.requireNonNull(player);
            final int i2 = 0;
            this.currentPositionSupplier = new SimpleBasePlayer.LivePositionSupplier(new SimpleBasePlayer.PositionSupplier() { // from class: androidx.media3.common.d
                @Override // androidx.media3.common.SimpleBasePlayer.PositionSupplier
                public final long get() {
                    switch (i2) {
                        case 0:
                            return player.getCurrentPosition();
                        case 1:
                            return player.getBufferedPosition();
                        case 2:
                            return player.getContentPosition();
                        case 3:
                            return player.getContentBufferedPosition();
                        default:
                            return player.getTotalBufferedDuration();
                    }
                }
            });
            final int i7 = 1;
            this.bufferedPositionSupplier = new SimpleBasePlayer.LivePositionSupplier(new SimpleBasePlayer.PositionSupplier() { // from class: androidx.media3.common.d
                @Override // androidx.media3.common.SimpleBasePlayer.PositionSupplier
                public final long get() {
                    switch (i7) {
                        case 0:
                            return player.getCurrentPosition();
                        case 1:
                            return player.getBufferedPosition();
                        case 2:
                            return player.getContentPosition();
                        case 3:
                            return player.getContentBufferedPosition();
                        default:
                            return player.getTotalBufferedDuration();
                    }
                }
            });
            final int i8 = 2;
            this.contentPositionSupplier = new SimpleBasePlayer.LivePositionSupplier(new SimpleBasePlayer.PositionSupplier() { // from class: androidx.media3.common.d
                @Override // androidx.media3.common.SimpleBasePlayer.PositionSupplier
                public final long get() {
                    switch (i8) {
                        case 0:
                            return player.getCurrentPosition();
                        case 1:
                            return player.getBufferedPosition();
                        case 2:
                            return player.getContentPosition();
                        case 3:
                            return player.getContentBufferedPosition();
                        default:
                            return player.getTotalBufferedDuration();
                    }
                }
            });
            final int i9 = 3;
            this.contentBufferedPositionSupplier = new SimpleBasePlayer.LivePositionSupplier(new SimpleBasePlayer.PositionSupplier() { // from class: androidx.media3.common.d
                @Override // androidx.media3.common.SimpleBasePlayer.PositionSupplier
                public final long get() {
                    switch (i9) {
                        case 0:
                            return player.getCurrentPosition();
                        case 1:
                            return player.getBufferedPosition();
                        case 2:
                            return player.getContentPosition();
                        case 3:
                            return player.getContentBufferedPosition();
                        default:
                            return player.getTotalBufferedDuration();
                    }
                }
            });
            final int i10 = 4;
            this.totalBufferedPositionSupplier = new SimpleBasePlayer.LivePositionSupplier(new SimpleBasePlayer.PositionSupplier() { // from class: androidx.media3.common.d
                @Override // androidx.media3.common.SimpleBasePlayer.PositionSupplier
                public final long get() {
                    switch (i10) {
                        case 0:
                            return player.getCurrentPosition();
                        case 1:
                            return player.getBufferedPosition();
                        case 2:
                            return player.getContentPosition();
                        case 3:
                            return player.getContentBufferedPosition();
                        default:
                            return player.getTotalBufferedDuration();
                    }
                }
            });
        }

        public void disconnect(long j7, long j8) {
            this.currentPositionSupplier.disconnect(j7);
            this.bufferedPositionSupplier.disconnect(j7);
            this.contentPositionSupplier.disconnect(j8);
            this.contentBufferedPositionSupplier.disconnect(j8);
            this.totalBufferedPositionSupplier.disconnect(0L);
        }
    }

    public class PlayerListener implements Player.Listener {
        private PlayerListener() {
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onAudioAttributesChanged(AudioAttributes audioAttributes) {
            h.a(this, audioAttributes);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onAudioSessionIdChanged(int i2) {
            h.b(this, i2);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onAvailableCommandsChanged(Player.Commands commands) {
            h.c(this, commands);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onCues(CueGroup cueGroup) {
            h.d(this, cueGroup);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onDeviceInfoChanged(DeviceInfo deviceInfo) {
            h.f(this, deviceInfo);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onDeviceVolumeChanged(int i2, boolean z6) {
            h.g(this, i2, z6);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onEvents(Player player, Player.Events events) {
            ForwardingSimpleBasePlayer.this.invalidateState();
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onIsLoadingChanged(boolean z6) {
            h.i(this, z6);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onIsPlayingChanged(boolean z6) {
            h.j(this, z6);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onLoadingChanged(boolean z6) {
            h.k(this, z6);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onMaxSeekToPreviousPositionChanged(long j7) {
            h.l(this, j7);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onMediaItemTransition(MediaItem mediaItem, int i2) {
            h.m(this, mediaItem, i2);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onMediaMetadataChanged(MediaMetadata mediaMetadata) {
            h.n(this, mediaMetadata);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onMetadata(Metadata metadata) {
            ForwardingSimpleBasePlayer.this.lastTimedMetadata = metadata;
        }

        @Override // androidx.media3.common.Player.Listener
        public void onPlayWhenReadyChanged(boolean z6, int i2) {
            ForwardingSimpleBasePlayer.this.playWhenReadyChangeReason = i2;
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onPlaybackParametersChanged(PlaybackParameters playbackParameters) {
            h.q(this, playbackParameters);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onPlaybackStateChanged(int i2) {
            h.r(this, i2);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onPlaybackSuppressionReasonChanged(int i2) {
            h.s(this, i2);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onPlayerError(PlaybackException playbackException) {
            h.t(this, playbackException);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onPlayerErrorChanged(PlaybackException playbackException) {
            h.u(this, playbackException);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onPlayerStateChanged(boolean z6, int i2) {
            h.v(this, z6, i2);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onPlaylistMetadataChanged(MediaMetadata mediaMetadata) {
            h.w(this, mediaMetadata);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onPositionDiscontinuity(int i2) {
            h.x(this, i2);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onRenderedFirstFrame() {
            ForwardingSimpleBasePlayer.this.pendingFirstFrameRendered = true;
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onRepeatModeChanged(int i2) {
            h.A(this, i2);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onSeekBackIncrementChanged(long j7) {
            h.B(this, j7);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onSeekForwardIncrementChanged(long j7) {
            h.C(this, j7);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onShuffleModeEnabledChanged(boolean z6) {
            h.D(this, z6);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onSkipSilenceEnabledChanged(boolean z6) {
            h.E(this, z6);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onSurfaceSizeChanged(int i2, int i7) {
            h.F(this, i2, i7);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onTimelineChanged(Timeline timeline, int i2) {
            h.G(this, timeline, i2);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onTrackSelectionParametersChanged(TrackSelectionParameters trackSelectionParameters) {
            h.H(this, trackSelectionParameters);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onTracksChanged(Tracks tracks) {
            h.I(this, tracks);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onVideoSizeChanged(VideoSize videoSize) {
            h.J(this, videoSize);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onVolumeChanged(float f3) {
            h.K(this, f3);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onCues(List list) {
            h.e(this, list);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onPositionDiscontinuity(Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, int i2) {
            ForwardingSimpleBasePlayer.this.pendingDiscontinuityReason = i2;
            ForwardingSimpleBasePlayer.this.pendingPositionDiscontinuityNewPositionMs = positionInfo2.positionMs;
            ForwardingSimpleBasePlayer.this.livePositionSuppliers.disconnect(positionInfo.positionMs, positionInfo.contentPositionMs);
            ForwardingSimpleBasePlayer forwardingSimpleBasePlayer = ForwardingSimpleBasePlayer.this;
            forwardingSimpleBasePlayer.livePositionSuppliers = new LivePositionSuppliers(forwardingSimpleBasePlayer.player);
        }
    }

    public ForwardingSimpleBasePlayer(Player player) {
        super(player.getApplicationLooper());
        initializeForwardingState(player);
        PlayerListener playerListener = new PlayerListener();
        this.playerListener = playerListener;
        player.addListener(playerListener);
    }

    private void initializeForwardingState(Player player) {
        this.player = player;
        this.lastTimedMetadata = new Metadata(C.TIME_UNSET, new Metadata.Entry[0]);
        this.playWhenReadyChangeReason = 1;
        this.pendingDiscontinuityReason = 5;
        this.livePositionSuppliers = new LivePositionSuppliers(player);
    }

    public final Player getPlayer() {
        return this.player;
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    public SimpleBasePlayer.State getState() {
        SimpleBasePlayer.State.Builder builder = new SimpleBasePlayer.State.Builder();
        LivePositionSuppliers livePositionSuppliers = this.livePositionSuppliers;
        if (this.player.isCommandAvailable(16)) {
            builder.setAdBufferedPositionMs(livePositionSuppliers.bufferedPositionSupplier);
            builder.setAdPositionMs(livePositionSuppliers.currentPositionSupplier);
        }
        if (this.player.isCommandAvailable(21)) {
            builder.setAudioAttributes(this.player.getAudioAttributes());
        }
        builder.setAvailableCommands(this.player.getAvailableCommands());
        if (this.player.isCommandAvailable(16)) {
            builder.setContentBufferedPositionMs(livePositionSuppliers.contentBufferedPositionSupplier);
            builder.setContentPositionMs(livePositionSuppliers.contentPositionSupplier);
            if (this.player.isCommandAvailable(17)) {
                builder.setCurrentAd(this.player.getCurrentAdGroupIndex(), this.player.getCurrentAdIndexInAdGroup());
            }
        }
        if (this.player.isCommandAvailable(28)) {
            builder.setCurrentCues(this.player.getCurrentCues());
        }
        if (this.player.isCommandAvailable(17)) {
            builder.setCurrentMediaItemIndex(this.player.getCurrentMediaItemIndex());
        }
        builder.setDeviceInfo(this.player.getDeviceInfo());
        if (this.player.isCommandAvailable(23)) {
            builder.setDeviceVolume(this.player.getDeviceVolume());
            builder.setIsDeviceMuted(this.player.isDeviceMuted());
        }
        builder.setIsLoading(this.player.isLoading());
        builder.setMaxSeekToPreviousPositionMs(this.player.getMaxSeekToPreviousPosition());
        if (this.pendingFirstFrameRendered) {
            builder.setNewlyRenderedFirstFrame(true);
            this.pendingFirstFrameRendered = false;
        }
        builder.setPlaybackParameters(this.player.getPlaybackParameters());
        builder.setPlaybackState(this.player.getPlaybackState());
        builder.setPlaybackSuppressionReason(this.player.getPlaybackSuppressionReason());
        builder.setPlayerError(this.player.getPlayerError());
        if (this.player.isCommandAvailable(17)) {
            builder.setPlaylist(this.player.getCurrentTimeline(), this.player.isCommandAvailable(30) ? this.player.getCurrentTracks() : Tracks.EMPTY, this.player.isCommandAvailable(18) ? this.player.getMediaMetadata() : null);
        }
        if (this.player.isCommandAvailable(18)) {
            builder.setPlaylistMetadata(this.player.getPlaylistMetadata());
        }
        builder.setPlayWhenReady(this.player.getPlayWhenReady(), this.playWhenReadyChangeReason);
        long j7 = this.pendingPositionDiscontinuityNewPositionMs;
        if (j7 != C.TIME_UNSET) {
            builder.setPositionDiscontinuity(this.pendingDiscontinuityReason, j7);
            this.pendingPositionDiscontinuityNewPositionMs = C.TIME_UNSET;
        }
        builder.setRepeatMode(this.player.getRepeatMode());
        builder.setSeekBackIncrementMs(this.player.getSeekBackIncrement());
        builder.setSeekForwardIncrementMs(this.player.getSeekForwardIncrement());
        builder.setShuffleModeEnabled(this.player.getShuffleModeEnabled());
        builder.setSurfaceSize(this.player.getSurfaceSize());
        builder.setTimedMetadata(this.lastTimedMetadata);
        if (this.player.isCommandAvailable(16)) {
            builder.setTotalBufferedDurationMs(livePositionSuppliers.totalBufferedPositionSupplier);
        }
        builder.setTrackSelectionParameters(this.player.getTrackSelectionParameters());
        builder.setVideoSize(this.player.getVideoSize());
        if (this.player.isCommandAvailable(22)) {
            builder.setVolume(this.player.getVolume());
        }
        return builder.build();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    public F handleAddMediaItems(int i2, List<MediaItem> list) {
        if (list.size() == 1) {
            this.player.addMediaItem(i2, list.get(0));
        } else {
            this.player.addMediaItems(i2, list);
        }
        return V3.A.immediateVoidFuture();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    public F handleClearVideoOutput(Object obj) {
        if (obj instanceof SurfaceView) {
            this.player.clearVideoSurfaceView((SurfaceView) obj);
        } else if (obj instanceof TextureView) {
            this.player.clearVideoTextureView((TextureView) obj);
        } else if (obj instanceof SurfaceHolder) {
            this.player.clearVideoSurfaceHolder((SurfaceHolder) obj);
        } else if (obj instanceof Surface) {
            this.player.clearVideoSurface((Surface) obj);
        } else {
            if (obj != null) {
                throw new IllegalStateException();
            }
            this.player.clearVideoSurface();
        }
        return V3.A.immediateVoidFuture();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    public F handleDecreaseDeviceVolume(int i2) {
        if (this.player.isCommandAvailable(34)) {
            this.player.decreaseDeviceVolume(i2);
        } else {
            this.player.decreaseDeviceVolume();
        }
        return V3.A.immediateVoidFuture();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    public F handleIncreaseDeviceVolume(int i2) {
        if (this.player.isCommandAvailable(34)) {
            this.player.increaseDeviceVolume(i2);
        } else {
            this.player.increaseDeviceVolume();
        }
        return V3.A.immediateVoidFuture();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    public F handleMoveMediaItems(int i2, int i7, int i8) {
        if (i7 == i2 + 1) {
            this.player.moveMediaItem(i2, i8);
        } else {
            this.player.moveMediaItems(i2, i7, i8);
        }
        return V3.A.immediateVoidFuture();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    public F handlePrepare() {
        this.player.prepare();
        return V3.A.immediateVoidFuture();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    public F handleRelease() {
        this.player.release();
        return V3.A.immediateVoidFuture();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    public F handleRemoveMediaItems(int i2, int i7) {
        if (i7 == i2 + 1) {
            this.player.removeMediaItem(i2);
        } else {
            this.player.removeMediaItems(i2, i7);
        }
        return V3.A.immediateVoidFuture();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    public F handleReplaceMediaItems(int i2, int i7, List<MediaItem> list) {
        if (i7 == i2 + 1 && list.size() == 1) {
            this.player.replaceMediaItem(i2, list.get(0));
        } else {
            this.player.replaceMediaItems(i2, i7, list);
        }
        return V3.A.immediateVoidFuture();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    public F handleSeek(int i2, long j7, int i7) {
        switch (i7) {
            case 4:
                this.player.seekToDefaultPosition();
                break;
            case 5:
                this.player.seekTo(j7);
                break;
            case 6:
                this.player.seekToPreviousMediaItem();
                break;
            case 7:
                this.player.seekToPrevious();
                break;
            case 8:
                this.player.seekToNextMediaItem();
                break;
            case 9:
                this.player.seekToNext();
                break;
            case 10:
                if (i2 != -1) {
                    this.player.seekTo(i2, j7);
                    break;
                }
                break;
            case 11:
                this.player.seekBack();
                break;
            case 12:
                this.player.seekForward();
                break;
            default:
                throw new IllegalStateException();
        }
        return V3.A.immediateVoidFuture();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    public F handleSetAudioAttributes(AudioAttributes audioAttributes, boolean z6) {
        this.player.setAudioAttributes(audioAttributes, z6);
        return V3.A.immediateVoidFuture();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    public F handleSetDeviceMuted(boolean z6, int i2) {
        if (this.player.isCommandAvailable(34)) {
            this.player.setDeviceMuted(z6, i2);
        } else {
            this.player.setDeviceMuted(z6);
        }
        return V3.A.immediateVoidFuture();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    public F handleSetDeviceVolume(int i2, int i7) {
        if (this.player.isCommandAvailable(33)) {
            this.player.setDeviceVolume(i2, i7);
        } else {
            this.player.setDeviceVolume(i2);
        }
        return V3.A.immediateVoidFuture();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    public F handleSetMediaItems(List<MediaItem> list, int i2, long j7) {
        boolean z6 = list.size() == 1 && this.player.isCommandAvailable(31);
        if (i2 == -1) {
            if (z6) {
                this.player.setMediaItem(list.get(0));
            } else {
                this.player.setMediaItems(list);
            }
        } else if (z6) {
            this.player.setMediaItem(list.get(0), j7);
        } else {
            this.player.setMediaItems(list, i2, j7);
        }
        return V3.A.immediateVoidFuture();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    public F handleSetPlayWhenReady(boolean z6) {
        this.player.setPlayWhenReady(z6);
        return V3.A.immediateVoidFuture();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    public F handleSetPlaybackParameters(PlaybackParameters playbackParameters) {
        this.player.setPlaybackParameters(playbackParameters);
        return V3.A.immediateVoidFuture();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    public F handleSetPlaylistMetadata(MediaMetadata mediaMetadata) {
        this.player.setPlaylistMetadata(mediaMetadata);
        return V3.A.immediateVoidFuture();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    public F handleSetRepeatMode(int i2) {
        this.player.setRepeatMode(i2);
        return V3.A.immediateVoidFuture();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    public F handleSetShuffleModeEnabled(boolean z6) {
        this.player.setShuffleModeEnabled(z6);
        return V3.A.immediateVoidFuture();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    public F handleSetTrackSelectionParameters(TrackSelectionParameters trackSelectionParameters) {
        this.player.setTrackSelectionParameters(trackSelectionParameters);
        return V3.A.immediateVoidFuture();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    public F handleSetVideoOutput(Object obj) {
        if (obj instanceof SurfaceView) {
            this.player.setVideoSurfaceView((SurfaceView) obj);
        } else if (obj instanceof TextureView) {
            this.player.setVideoTextureView((TextureView) obj);
        } else if (obj instanceof SurfaceHolder) {
            this.player.setVideoSurfaceHolder((SurfaceHolder) obj);
        } else {
            if (!(obj instanceof Surface)) {
                throw new IllegalStateException();
            }
            this.player.setVideoSurface((Surface) obj);
        }
        return V3.A.immediateVoidFuture();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    public final F handleSetVolume(float f3) {
        this.player.setVolume(f3);
        return V3.A.immediateVoidFuture();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    public F handleStop() {
        this.player.stop();
        return V3.A.immediateVoidFuture();
    }

    public final void setPlayer(Player player) {
        Player player2 = this.player;
        if (player2 == player) {
            return;
        }
        if (player.getApplicationLooper() != player2.getApplicationLooper()) {
            throw new IllegalArgumentException("Trying to swap players with non-matching loopers.");
        }
        player2.removeListener(this.playerListener);
        player.addListener(this.playerListener);
        initializeForwardingState(player);
        this.pendingPositionDiscontinuityNewPositionMs = player.getCurrentPosition();
        invalidateState();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    public F handleSetVolume(float f3, int i2) {
        if (i2 == 0) {
            this.player.setVolume(f3);
        } else if (i2 == 1) {
            this.player.mute();
        } else if (i2 == 2) {
            this.player.unmute();
        } else {
            throw new IllegalStateException(A.i.f(i2, "Unknown volume operation type: "));
        }
        return V3.A.immediateVoidFuture();
    }
}
