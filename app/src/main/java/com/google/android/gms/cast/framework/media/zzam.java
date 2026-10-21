package com.google.android.gms.cast.framework.media;

import org.json.JSONObject;

/* loaded from: classes.dex */
final class zzam extends zzbk {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ JSONObject f10254d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ RemoteMediaClient f10255e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzam(RemoteMediaClient remoteMediaClient, JSONObject jSONObject) {
        super(remoteMediaClient, false);
        this.f10255e = remoteMediaClient;
        this.f10254d = jSONObject;
    }

    @Override // com.google.android.gms.cast.framework.media.zzbk
    public final void zza() throws com.google.android.gms.cast.internal.zzao {
        RemoteMediaClient remoteMediaClient = this.f10255e;
        remoteMediaClient.f10032c.zzA(c(), 0, -1L, null, -1, null, null, this.f10254d);
    }
}
