package com.google.android.gms.cast.framework.media;

import com.google.android.gms.cast.MediaLoadRequestData;

/* loaded from: classes.dex */
final class zzav extends zzbk {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ MediaLoadRequestData f10261d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ RemoteMediaClient f10262e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzav(RemoteMediaClient remoteMediaClient, MediaLoadRequestData mediaLoadRequestData) {
        super(remoteMediaClient, false);
        this.f10262e = remoteMediaClient;
        this.f10261d = mediaLoadRequestData;
    }

    @Override // com.google.android.gms.cast.framework.media.zzbk
    public final void zza() throws com.google.android.gms.cast.internal.zzao {
        RemoteMediaClient remoteMediaClient = this.f10262e;
        remoteMediaClient.f10032c.zzp(c(), this.f10261d);
    }
}
