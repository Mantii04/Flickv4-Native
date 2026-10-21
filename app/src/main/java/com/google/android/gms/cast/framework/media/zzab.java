package com.google.android.gms.cast.framework.media;

/* loaded from: classes.dex */
final class zzab extends zzbk {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ RemoteMediaClient f10250d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzab(RemoteMediaClient remoteMediaClient) {
        super(remoteMediaClient, false);
        this.f10250d = remoteMediaClient;
    }

    @Override // com.google.android.gms.cast.framework.media.zzbk
    public final void zza() throws com.google.android.gms.cast.internal.zzao {
        RemoteMediaClient remoteMediaClient = this.f10250d;
        remoteMediaClient.f10032c.zzI(c());
    }
}
