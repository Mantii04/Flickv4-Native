package com.google.android.gms.cast.framework.media;

import org.json.JSONObject;

/* loaded from: classes.dex */
final class zzax extends zzbk {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ JSONObject f10263d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ RemoteMediaClient f10264e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzax(RemoteMediaClient remoteMediaClient, JSONObject jSONObject) {
        super(remoteMediaClient, false);
        this.f10264e = remoteMediaClient;
        this.f10263d = jSONObject;
    }

    @Override // com.google.android.gms.cast.framework.media.zzbk
    public final void zza() throws com.google.android.gms.cast.internal.zzao {
        RemoteMediaClient remoteMediaClient = this.f10264e;
        remoteMediaClient.f10032c.zzq(c(), this.f10263d);
    }
}
