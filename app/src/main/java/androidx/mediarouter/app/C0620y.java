package androidx.mediarouter.app;

import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaControllerCompat;
import android.support.v4.media.session.PlaybackStateCompat;

/* renamed from: androidx.mediarouter.app.y, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0620y extends MediaControllerCompat.Callback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ D f7917a;

    public C0620y(D d7) {
        this.f7917a = d7;
    }

    @Override // android.support.v4.media.session.MediaControllerCompat.Callback
    public void onMetadataChanged(MediaMetadataCompat mediaMetadataCompat) {
        MediaDescriptionCompat description = mediaMetadataCompat == null ? null : mediaMetadataCompat.getDescription();
        D d7 = this.f7917a;
        d7.f7641g0 = description;
        d7.n();
        d7.m(false);
    }

    @Override // android.support.v4.media.session.MediaControllerCompat.Callback
    public void onPlaybackStateChanged(PlaybackStateCompat playbackStateCompat) {
        D d7 = this.f7917a;
        d7.f7640f0 = playbackStateCompat;
        d7.m(false);
    }

    @Override // android.support.v4.media.session.MediaControllerCompat.Callback
    public void onSessionDestroyed() {
        D d7 = this.f7917a;
        MediaControllerCompat mediaControllerCompat = d7.f7638d0;
        if (mediaControllerCompat != null) {
            mediaControllerCompat.unregisterCallback(d7.f7639e0);
            d7.f7638d0 = null;
        }
    }
}
