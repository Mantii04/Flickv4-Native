package com.google.android.gms.cast;

import com.google.android.gms.cast.internal.Logger;

/* loaded from: classes.dex */
final class zzaj implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ CastRemoteDisplayLocalService f10457b;

    public zzaj(CastRemoteDisplayLocalService castRemoteDisplayLocalService) {
        this.f10457b = castRemoteDisplayLocalService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Logger logger = CastRemoteDisplayLocalService.f9633q;
        this.f10457b.c();
    }
}
