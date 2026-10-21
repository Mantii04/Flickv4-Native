package com.google.android.gms.internal.cast;

import android.text.format.DateUtils;
import android.widget.TextView;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;

/* loaded from: classes2.dex */
public final class zzcq extends zzcr implements RemoteMediaClient.ProgressListener {
    private final TextView zza;
    private final long zzb;
    private final String zzc;
    private boolean zzd = true;

    public zzcq(TextView textView, long j7, String str) {
        this.zza = textView;
        this.zzb = j7;
        this.zzc = str;
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.ProgressListener
    public final void onProgressUpdated(long j7, long j8) {
        if (this.zzd) {
            TextView textView = this.zza;
            if (j7 == -1000) {
                j7 = j8;
            }
            textView.setText(DateUtils.formatElapsedTime(j7 / 1000));
        }
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void onSessionConnected(CastSession castSession) {
        super.onSessionConnected(castSession);
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient != null) {
            remoteMediaClient.addProgressListener(this, this.zzb);
            if (remoteMediaClient.hasMediaSession()) {
                this.zza.setText(DateUtils.formatElapsedTime(remoteMediaClient.getApproximateStreamPosition() / 1000));
            } else {
                this.zza.setText(this.zzc);
            }
        }
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void onSessionEnded() {
        this.zza.setText(this.zzc);
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient != null) {
            remoteMediaClient.removeProgressListener(this);
        }
        super.onSessionEnded();
    }

    @Override // com.google.android.gms.internal.cast.zzcr
    public final void zza(boolean z6) {
        this.zzd = z6;
    }

    @Override // com.google.android.gms.internal.cast.zzcr
    public final void zzb(long j7) {
        this.zza.setText(DateUtils.formatElapsedTime(j7 / 1000));
    }
}
