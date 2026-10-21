package androidx.media3.exoplayer;

import androidx.media3.common.Player;
import androidx.media3.common.util.BackgroundThreadStateHandler;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.ExoPlayerImplInternal;
import androidx.media3.exoplayer.SuitableOutputChecker;

/* loaded from: classes.dex */
public final /* synthetic */ class B implements ListenerSet.Event, ExoPlayerImplInternal.PlaybackInfoUpdateListener, BackgroundThreadStateHandler.StateChangeListener, SuitableOutputChecker.Callback {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7176b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ExoPlayerImpl f7177e;

    public /* synthetic */ B(ExoPlayerImpl exoPlayerImpl, int i2) {
        this.f7176b = i2;
        this.f7177e = exoPlayerImpl;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        switch (this.f7176b) {
            case 0:
                this.f7177e.lambda$setPlaylistMetadata$11((Player.Listener) obj);
                break;
            default:
                this.f7177e.lambda$updateAvailableCommands$31((Player.Listener) obj);
                break;
        }
    }

    @Override // androidx.media3.exoplayer.ExoPlayerImplInternal.PlaybackInfoUpdateListener
    public void onPlaybackInfoUpdate(ExoPlayerImplInternal.PlaybackInfoUpdate playbackInfoUpdate) {
        this.f7177e.lambda$new$2(playbackInfoUpdate);
    }

    @Override // androidx.media3.exoplayer.SuitableOutputChecker.Callback
    public void onSelectedOutputSuitabilityChanged(boolean z6) {
        this.f7177e.onSelectedOutputSuitabilityChanged(z6);
    }

    @Override // androidx.media3.common.util.BackgroundThreadStateHandler.StateChangeListener
    public void onStateChanged(Object obj, Object obj2) {
        this.f7177e.onAudioSessionIdChanged(((Integer) obj).intValue(), ((Integer) obj2).intValue());
    }
}
