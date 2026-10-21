package com.google.android.gms.cast.framework.media;

import com.google.android.gms.cast.MediaSeekOptions;

/* loaded from: classes.dex */
final class zzba extends zzbk {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ MediaSeekOptions f10267d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ RemoteMediaClient f10268e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzba(RemoteMediaClient remoteMediaClient, MediaSeekOptions mediaSeekOptions) {
        super(remoteMediaClient, false);
        this.f10268e = remoteMediaClient;
        this.f10267d = mediaSeekOptions;
    }

    @Override // com.google.android.gms.cast.framework.media.zzbk
    public final void zza() throws com.google.android.gms.cast.internal.zzao {
        RemoteMediaClient remoteMediaClient = this.f10268e;
        remoteMediaClient.f10032c.zzC(c(), this.f10267d);
    }
}
