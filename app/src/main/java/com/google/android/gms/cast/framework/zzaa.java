package com.google.android.gms.cast.framework;

import android.os.RemoteException;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.common.ConnectionResult;

/* loaded from: classes.dex */
final class zzaa extends com.google.android.gms.cast.zzq {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ CastSession f10315a;

    public /* synthetic */ zzaa(CastSession castSession) {
        this.f10315a = castSession;
    }

    @Override // com.google.android.gms.cast.zzq
    public final void zza() {
        CastSession castSession = this.f10315a;
        if (castSession.f9862e == null) {
            return;
        }
        try {
            RemoteMediaClient remoteMediaClient = castSession.f9867j;
            if (remoteMediaClient != null) {
                remoteMediaClient.zzq();
            }
            castSession.f9862e.zzh(null);
        } catch (RemoteException e3) {
            CastSession.f9859n.d(e3, "Unable to call %s on %s.", "onConnected", "zzam");
        }
        zzs zzsVar = castSession.f9870m;
        if (zzsVar != null) {
            zzsVar.zza();
        }
    }

    @Override // com.google.android.gms.cast.zzq
    public final void zzb(int i2) {
        zzam zzamVar = this.f10315a.f9862e;
        if (zzamVar == null) {
            return;
        }
        try {
            zzamVar.zzi(new ConnectionResult(i2));
        } catch (RemoteException e3) {
            CastSession.f9859n.d(e3, "Unable to call %s on %s.", "onConnectionFailed", "zzam");
        }
    }

    @Override // com.google.android.gms.cast.zzq
    public final void zzc(int i2) {
        zzam zzamVar = this.f10315a.f9862e;
        if (zzamVar == null) {
            return;
        }
        try {
            zzamVar.zzj(i2);
        } catch (RemoteException e3) {
            CastSession.f9859n.d(e3, "Unable to call %s on %s.", "onConnectionSuspended", "zzam");
        }
    }

    @Override // com.google.android.gms.cast.zzq
    public final void zzd(int i2) {
        zzam zzamVar = this.f10315a.f9862e;
        if (zzamVar == null) {
            return;
        }
        try {
            zzamVar.zzi(new ConnectionResult(i2));
        } catch (RemoteException e3) {
            CastSession.f9859n.d(e3, "Unable to call %s on %s.", "onDisconnected", "zzam");
        }
    }
}
