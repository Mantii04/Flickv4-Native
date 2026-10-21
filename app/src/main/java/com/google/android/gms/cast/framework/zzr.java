package com.google.android.gms.cast.framework;

import com.google.android.gms.cast.framework.media.RemoteMediaClient;

/* loaded from: classes.dex */
final class zzr extends RemoteMediaClient.Callback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ CastSession f10327a;

    public zzr(CastSession castSession) {
        this.f10327a = castSession;
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Callback
    public final void zza(String str, long j7, int i2, long j8, long j9) {
        zzs zzsVar = this.f10327a.f9870m;
        if (zzsVar != null) {
            zzsVar.zzb(str, j7, i2, j8, j9);
        }
    }
}
