package com.google.android.gms.cast;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
final class zzdl implements ResultCallback {

    /* renamed from: a, reason: collision with root package name */
    public final long f10537a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzdm f10538b;

    public zzdl(zzdm zzdmVar, long j7) {
        this.f10538b = zzdmVar;
        this.f10537a = j7;
    }

    @Override // com.google.android.gms.common.api.ResultCallback
    public final /* bridge */ /* synthetic */ void onResult(Result result) {
        Status status = (Status) result;
        if (status.isSuccess()) {
            return;
        }
        this.f10538b.f10540b.f9787b.zzP(this.f10537a, status.getStatusCode());
    }
}
