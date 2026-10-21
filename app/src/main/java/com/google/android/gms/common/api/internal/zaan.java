package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;

/* loaded from: classes.dex */
final class zaan extends zabg {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ BaseGmsClient.ConnectionProgressReportCallbacks f10688b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zaan(zabf zabfVar, BaseGmsClient.ConnectionProgressReportCallbacks connectionProgressReportCallbacks) {
        super(zabfVar);
        this.f10688b = connectionProgressReportCallbacks;
    }

    @Override // com.google.android.gms.common.api.internal.zabg
    public final void zaa() {
        this.f10688b.onReportServiceBinding(new ConnectionResult(16, null));
    }
}
