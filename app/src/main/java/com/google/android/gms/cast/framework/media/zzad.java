package com.google.android.gms.cast.framework.media;

/* loaded from: classes.dex */
final class zzad extends zzbk {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ long[] f10252d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ RemoteMediaClient f10253e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzad(RemoteMediaClient remoteMediaClient, long[] jArr) {
        super(remoteMediaClient, false);
        this.f10253e = remoteMediaClient;
        this.f10252d = jArr;
    }

    @Override // com.google.android.gms.cast.framework.media.zzbk
    public final void zza() throws com.google.android.gms.cast.internal.zzao {
        RemoteMediaClient remoteMediaClient = this.f10253e;
        remoteMediaClient.f10032c.zzD(c(), this.f10252d);
    }
}
