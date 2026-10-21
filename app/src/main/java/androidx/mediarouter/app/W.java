package androidx.mediarouter.app;

import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaControllerCompat;

/* loaded from: classes.dex */
public final class W extends MediaControllerCompat.Callback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ m0 f7749a;

    public W(m0 m0Var) {
        this.f7749a = m0Var;
    }

    @Override // android.support.v4.media.session.MediaControllerCompat.Callback
    public void onMetadataChanged(MediaMetadataCompat mediaMetadataCompat) {
        MediaDescriptionCompat description = mediaMetadataCompat == null ? null : mediaMetadataCompat.getDescription();
        m0 m0Var = this.f7749a;
        m0Var.f7863U = description;
        m0Var.c();
        m0Var.f();
    }

    @Override // android.support.v4.media.session.MediaControllerCompat.Callback
    public void onSessionDestroyed() {
        m0 m0Var = this.f7749a;
        MediaControllerCompat mediaControllerCompat = m0Var.f7861S;
        if (mediaControllerCompat != null) {
            mediaControllerCompat.unregisterCallback(m0Var.f7862T);
            m0Var.f7861S = null;
        }
    }
}
