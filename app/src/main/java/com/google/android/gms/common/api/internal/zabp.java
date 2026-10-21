package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.internal.BaseGmsClient;

/* loaded from: classes.dex */
final class zabp implements BaseGmsClient.SignOutCallbacks {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zabq f10723a;

    public zabp(zabq zabqVar) {
        this.f10723a = zabqVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.SignOutCallbacks
    public final void onSignOutComplete() {
        this.f10723a.f10736m.f10641w.post(new zabo(this));
    }
}
