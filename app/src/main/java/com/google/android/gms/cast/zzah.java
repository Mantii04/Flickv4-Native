package com.google.android.gms.cast;

/* loaded from: classes.dex */
final class zzah implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ CastRemoteDisplayLocalService f10456b;

    public zzah(CastRemoteDisplayLocalService castRemoteDisplayLocalService) {
        this.f10456b = castRemoteDisplayLocalService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        CastRemoteDisplayLocalService castRemoteDisplayLocalService = this.f10456b;
        castRemoteDisplayLocalService.a("onCreate after delay. The local service been started: " + castRemoteDisplayLocalService.f9640j);
        if (castRemoteDisplayLocalService.f9640j) {
            return;
        }
        CastRemoteDisplayLocalService.f9633q.e("[Instance: %s] %s", castRemoteDisplayLocalService, "The local service has not been been started, stopping it");
        castRemoteDisplayLocalService.stopSelf();
    }
}
