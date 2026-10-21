package com.google.android.gms.cast.framework.media;

import org.json.JSONObject;

/* loaded from: classes.dex */
final class zzan extends zzbk {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ JSONObject f10256d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ RemoteMediaClient f10257e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzan(RemoteMediaClient remoteMediaClient, JSONObject jSONObject) {
        super(remoteMediaClient, false);
        this.f10257e = remoteMediaClient;
        this.f10256d = jSONObject;
    }

    @Override // com.google.android.gms.cast.framework.media.zzbk
    public final void zza() throws com.google.android.gms.cast.internal.zzao {
        RemoteMediaClient remoteMediaClient = this.f10257e;
        remoteMediaClient.f10032c.zzA(c(), 0, -1L, null, 1, null, null, this.f10256d);
    }
}
