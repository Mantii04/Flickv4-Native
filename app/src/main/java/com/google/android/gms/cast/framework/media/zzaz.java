package com.google.android.gms.cast.framework.media;

import org.json.JSONObject;

/* loaded from: classes.dex */
final class zzaz extends zzbk {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ JSONObject f10265d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ RemoteMediaClient f10266e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzaz(RemoteMediaClient remoteMediaClient, JSONObject jSONObject) {
        super(remoteMediaClient, false);
        this.f10266e = remoteMediaClient;
        this.f10265d = jSONObject;
    }

    @Override // com.google.android.gms.cast.framework.media.zzbk
    public final void zza() throws com.google.android.gms.cast.internal.zzao {
        RemoteMediaClient remoteMediaClient = this.f10266e;
        remoteMediaClient.f10032c.zzr(c(), this.f10265d);
    }
}
