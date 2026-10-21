package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Result;

/* loaded from: classes.dex */
final class zas {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BasePendingResult f10811a;

    public /* synthetic */ zas(BasePendingResult basePendingResult) {
        this.f10811a = basePendingResult;
    }

    public final void finalize() throws Throwable {
        Result result;
        result = this.f10811a.zaj;
        BasePendingResult.zal(result);
        super.finalize();
    }
}
