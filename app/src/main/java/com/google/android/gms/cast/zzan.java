package com.google.android.gms.cast;

import com.google.android.gms.cast.CastRemoteDisplayLocalService;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;

/* loaded from: classes.dex */
final class zzan implements OnCompleteListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ CastRemoteDisplayLocalService f10458a;

    public zzan(CastRemoteDisplayLocalService castRemoteDisplayLocalService) {
        this.f10458a = castRemoteDisplayLocalService;
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public final void onComplete(Task task) {
        boolean isSuccessful = task.isSuccessful();
        CastRemoteDisplayLocalService castRemoteDisplayLocalService = this.f10458a;
        if (isSuccessful) {
            Logger logger = CastRemoteDisplayLocalService.f9633q;
            castRemoteDisplayLocalService.a("remote display stopped");
        } else {
            Logger logger2 = CastRemoteDisplayLocalService.f9633q;
            castRemoteDisplayLocalService.a("Unable to stop the remote display, result unsuccessful");
            CastRemoteDisplayLocalService.Callbacks callbacks = (CastRemoteDisplayLocalService.Callbacks) castRemoteDisplayLocalService.f9637b.get();
            if (callbacks != null) {
                callbacks.onRemoteDisplaySessionError(new Status(2202));
            }
        }
        castRemoteDisplayLocalService.getClass();
    }
}
