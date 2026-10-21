package com.google.android.gms.cast.framework.media;

/* loaded from: classes.dex */
final class zzas extends zzbk {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ RemoteMediaClient f10258d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzas(RemoteMediaClient remoteMediaClient) {
        super(remoteMediaClient, true);
        this.f10258d = remoteMediaClient;
    }

    @Override // com.google.android.gms.cast.framework.media.zzbk
    public final void zza() throws com.google.android.gms.cast.internal.zzao {
        RemoteMediaClient remoteMediaClient = this.f10258d;
        remoteMediaClient.f10032c.zzu(c());
    }
}
