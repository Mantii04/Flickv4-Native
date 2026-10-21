package com.google.android.gms.cast;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import f1.K;
import f1.L;
import f1.X;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
final class zzai implements ServiceConnection {
    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        CastRemoteDisplayLocalService castRemoteDisplayLocalService = ((zzao) iBinder).f10459a;
        Logger logger = CastRemoteDisplayLocalService.f9633q;
        castRemoteDisplayLocalService.a("startRemoteDisplaySession");
        Preconditions.checkMainThread("Starting the Cast Remote Display must be done on the main thread");
        synchronized (CastRemoteDisplayLocalService.f9634r) {
            if (CastRemoteDisplayLocalService.f9636t != null) {
                Logger logger2 = CastRemoteDisplayLocalService.f9633q;
                logger2.w("An existing service had not been stopped before starting one", new Object[0]);
                logger2.e("Connected but unable to get the service instance", new Object[0]);
                new Status(2200);
                throw null;
            }
            CastRemoteDisplayLocalService.f9636t = castRemoteDisplayLocalService;
            castRemoteDisplayLocalService.f9637b = new WeakReference(null);
            if (castRemoteDisplayLocalService.f9639f == null) {
                castRemoteDisplayLocalService.f9639f = X.getInstance(castRemoteDisplayLocalService.getApplicationContext());
            }
            Preconditions.checkNotNull(null, "applicationId is required.");
            L build = new K().addControlCategory(CastMediaControlIntent.categoryForCast(null)).build();
            castRemoteDisplayLocalService.a("addMediaRouterCallback");
            castRemoteDisplayLocalService.f9639f.addCallback(build, castRemoteDisplayLocalService.f9642n, 4);
            throw null;
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        CastRemoteDisplayLocalService.f9633q.d("onServiceDisconnected", new Object[0]);
        new Status(2201, "Service Disconnected");
        throw null;
    }
}
