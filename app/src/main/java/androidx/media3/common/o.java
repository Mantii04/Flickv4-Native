package androidx.media3.common;

import android.view.SurfaceHolder;
import android.view.SurfaceView;
import androidx.media3.common.SimpleBasePlayer;
import androidx.media3.common.util.Size;

/* loaded from: classes.dex */
public final /* synthetic */ class o implements P3.C {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7097b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ SimpleBasePlayer.State f7098e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f7099f;

    public /* synthetic */ o(SimpleBasePlayer.State state, Object obj, int i2) {
        this.f7097b = i2;
        this.f7098e = state;
        this.f7099f = obj;
    }

    @Override // P3.C
    public final Object get() {
        SimpleBasePlayer.State lambda$setVideoTextureView$22;
        SimpleBasePlayer.State lambda$setPlaylistMetadata$15;
        SimpleBasePlayer.State lambda$setVideoSurfaceHolder$20;
        SimpleBasePlayer.State lambda$setVideoSurfaceView$21;
        SimpleBasePlayer.State lambda$setAudioAttributes$32;
        SimpleBasePlayer.State lambda$stop$12;
        SimpleBasePlayer.State lambda$setPlaybackParameters$11;
        SimpleBasePlayer.State lambda$setTrackSelectionParameters$14;
        switch (this.f7097b) {
            case 0:
                lambda$setVideoTextureView$22 = SimpleBasePlayer.lambda$setVideoTextureView$22(this.f7098e, (Size) this.f7099f);
                return lambda$setVideoTextureView$22;
            case 1:
                lambda$setPlaylistMetadata$15 = SimpleBasePlayer.lambda$setPlaylistMetadata$15(this.f7098e, (MediaMetadata) this.f7099f);
                return lambda$setPlaylistMetadata$15;
            case 2:
                lambda$setVideoSurfaceHolder$20 = SimpleBasePlayer.lambda$setVideoSurfaceHolder$20(this.f7098e, (SurfaceHolder) this.f7099f);
                return lambda$setVideoSurfaceHolder$20;
            case 3:
                lambda$setVideoSurfaceView$21 = SimpleBasePlayer.lambda$setVideoSurfaceView$21(this.f7098e, (SurfaceView) this.f7099f);
                return lambda$setVideoSurfaceView$21;
            case 4:
                lambda$setAudioAttributes$32 = SimpleBasePlayer.lambda$setAudioAttributes$32(this.f7098e, (AudioAttributes) this.f7099f);
                return lambda$setAudioAttributes$32;
            case 5:
                lambda$stop$12 = ((SimpleBasePlayer) this.f7099f).lambda$stop$12(this.f7098e);
                return lambda$stop$12;
            case 6:
                lambda$setPlaybackParameters$11 = SimpleBasePlayer.lambda$setPlaybackParameters$11(this.f7098e, (PlaybackParameters) this.f7099f);
                return lambda$setPlaybackParameters$11;
            default:
                lambda$setTrackSelectionParameters$14 = SimpleBasePlayer.lambda$setTrackSelectionParameters$14(this.f7098e, (TrackSelectionParameters) this.f7099f);
                return lambda$setTrackSelectionParameters$14;
        }
    }

    public /* synthetic */ o(SimpleBasePlayer simpleBasePlayer, SimpleBasePlayer.State state) {
        this.f7097b = 5;
        this.f7099f = simpleBasePlayer;
        this.f7098e = state;
    }
}
