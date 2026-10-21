package com.google.android.gms.cast.framework;

import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.cast.Cast;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
final class zzy extends Cast.Listener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ CastSession f10331a;

    public /* synthetic */ zzy(CastSession castSession) {
        this.f10331a = castSession;
    }

    @Override // com.google.android.gms.cast.Cast.Listener
    public final void onActiveInputStateChanged(int i2) {
        Iterator it = new HashSet(this.f10331a.f9861d).iterator();
        while (it.hasNext()) {
            ((Cast.Listener) it.next()).onActiveInputStateChanged(i2);
        }
    }

    @Override // com.google.android.gms.cast.Cast.Listener
    public final void onApplicationDisconnected(int i2) {
        CastSession castSession = this.f10331a;
        castSession.f9865h.zzi(i2);
        com.google.android.gms.cast.zzr zzrVar = castSession.f9866i;
        if (zzrVar != null) {
            zzrVar.zzf();
            castSession.f9866i = null;
        }
        castSession.f9868k = null;
        RemoteMediaClient remoteMediaClient = castSession.f9867j;
        if (remoteMediaClient != null) {
            remoteMediaClient.zzs(null);
            castSession.f9867j = null;
        }
        castSession.notifySessionEnded(i2);
        Iterator it = new HashSet(castSession.f9861d).iterator();
        while (it.hasNext()) {
            ((Cast.Listener) it.next()).onApplicationDisconnected(i2);
        }
    }

    @Override // com.google.android.gms.cast.Cast.Listener
    public final void onApplicationMetadataChanged(ApplicationMetadata applicationMetadata) {
        Iterator it = new HashSet(this.f10331a.f9861d).iterator();
        while (it.hasNext()) {
            ((Cast.Listener) it.next()).onApplicationMetadataChanged(applicationMetadata);
        }
    }

    @Override // com.google.android.gms.cast.Cast.Listener
    public final void onApplicationStatusChanged() {
        Iterator it = new HashSet(this.f10331a.f9861d).iterator();
        while (it.hasNext()) {
            ((Cast.Listener) it.next()).onApplicationStatusChanged();
        }
    }

    @Override // com.google.android.gms.cast.Cast.Listener
    public final void onStandbyStateChanged(int i2) {
        Iterator it = new HashSet(this.f10331a.f9861d).iterator();
        while (it.hasNext()) {
            ((Cast.Listener) it.next()).onStandbyStateChanged(i2);
        }
    }

    @Override // com.google.android.gms.cast.Cast.Listener
    public final void onVolumeChanged() {
        Iterator it = new HashSet(this.f10331a.f9861d).iterator();
        while (it.hasNext()) {
            ((Cast.Listener) it.next()).onVolumeChanged();
        }
    }
}
