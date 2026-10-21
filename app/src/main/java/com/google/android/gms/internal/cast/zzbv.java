package com.google.android.gms.internal.cast;

import android.view.View;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;

/* loaded from: classes2.dex */
public final class zzbv extends UIController implements RemoteMediaClient.ProgressListener {
    private final View zza;
    private final com.google.android.gms.cast.framework.media.uicontroller.zza zzb;

    public zzbv(View view, com.google.android.gms.cast.framework.media.uicontroller.zza zzaVar) {
        this.zza = view;
        this.zzb = zzaVar;
        view.setEnabled(false);
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void onMediaStatusUpdated() {
        zza();
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.ProgressListener
    public final void onProgressUpdated(long j7, long j8) {
        zza();
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void onSendingRemoteMediaRequest() {
        this.zza.setEnabled(false);
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void onSessionConnected(CastSession castSession) {
        super.onSessionConnected(castSession);
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient != null) {
            remoteMediaClient.addProgressListener(this, 1000L);
        }
        zza();
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void onSessionEnded() {
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient != null) {
            remoteMediaClient.removeProgressListener(this);
        }
        this.zza.setEnabled(false);
        super.onSessionEnded();
        zza();
    }

    public final void zza() {
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        boolean z6 = false;
        if (remoteMediaClient == null || !remoteMediaClient.hasMediaSession() || remoteMediaClient.isPlayingAd()) {
            this.zza.setEnabled(false);
            return;
        }
        if (!remoteMediaClient.isLiveStream()) {
            this.zza.setEnabled(true);
            return;
        }
        View view = this.zza;
        if (remoteMediaClient.zzw() && !this.zzb.zzm()) {
            z6 = true;
        }
        view.setEnabled(z6);
    }
}
