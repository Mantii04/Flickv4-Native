package com.google.android.gms.cast;

import com.google.android.gms.cast.internal.Logger;
import f1.M;
import f1.U;
import f1.X;

/* loaded from: classes.dex */
final class zzag extends M {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ CastRemoteDisplayLocalService f10455a;

    public zzag(CastRemoteDisplayLocalService castRemoteDisplayLocalService) {
        this.f10455a = castRemoteDisplayLocalService;
    }

    @Override // f1.M
    public final void onRouteUnselected(X x6, U u6) {
        Logger logger = CastRemoteDisplayLocalService.f9633q;
        CastRemoteDisplayLocalService castRemoteDisplayLocalService = this.f10455a;
        castRemoteDisplayLocalService.a("onRouteUnselected");
        castRemoteDisplayLocalService.a("onRouteUnselected, no device was selected");
    }
}
