package com.google.android.gms.cast;

import B4.AbstractC0052o;
import android.annotation.TargetApi;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.Looper;
import b4.AbstractC0658h;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.internal.cast.zzed;
import f1.M;
import f1.X;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;

@TargetApi(19)
@Deprecated
/* loaded from: classes.dex */
public abstract class CastRemoteDisplayLocalService extends Service {

    /* renamed from: q, reason: collision with root package name */
    public static final Logger f9633q = new Logger("CastRDLocalService");

    /* renamed from: r, reason: collision with root package name */
    public static final Object f9634r = new Object();

    /* renamed from: s, reason: collision with root package name */
    public static final AtomicBoolean f9635s = new AtomicBoolean(false);

    /* renamed from: t, reason: collision with root package name */
    public static CastRemoteDisplayLocalService f9636t;

    /* renamed from: b, reason: collision with root package name */
    public WeakReference f9637b;

    /* renamed from: e, reason: collision with root package name */
    public zzed f9638e;

    /* renamed from: f, reason: collision with root package name */
    public X f9639f;

    /* renamed from: m, reason: collision with root package name */
    public CastRemoteDisplayClient f9641m;

    /* renamed from: j, reason: collision with root package name */
    public boolean f9640j = false;

    /* renamed from: n, reason: collision with root package name */
    public final M f9642n = new zzag(this);

    /* renamed from: p, reason: collision with root package name */
    public final IBinder f9643p = new zzao(this);

    public interface Callbacks {
        void onRemoteDisplaySessionEnded(CastRemoteDisplayLocalService castRemoteDisplayLocalService);

        void onRemoteDisplaySessionError(Status status);
    }

    public static final class NotificationSettings {

        public static final class Builder {
        }

        private NotificationSettings() {
        }
    }

    public static class Options {
    }

    public static void b() {
        Logger logger = f9633q;
        logger.d("Stopping Service", new Object[0]);
        f9635s.set(false);
        synchronized (f9634r) {
            try {
                CastRemoteDisplayLocalService castRemoteDisplayLocalService = f9636t;
                if (castRemoteDisplayLocalService == null) {
                    logger.e("Service is already being stopped", new Object[0]);
                    return;
                }
                f9636t = null;
                if (castRemoteDisplayLocalService.f9638e != null) {
                    if (Looper.myLooper() != Looper.getMainLooper()) {
                        castRemoteDisplayLocalService.f9638e.post(new zzaj(castRemoteDisplayLocalService));
                    } else {
                        castRemoteDisplayLocalService.c();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void stopService() {
        b();
    }

    public final void a(String str) {
        f9633q.d("[Instance: %s] %s", this, str);
    }

    public final void c() {
        a("Stopping Service");
        Preconditions.checkMainThread("stopServiceInstanceInternal must be called on the main thread");
        if (this.f9639f != null) {
            a("Setting default route");
            X x6 = this.f9639f;
            x6.selectRoute(x6.getDefaultRoute());
        }
        a("stopRemoteDisplaySession");
        a("stopRemoteDisplay");
        this.f9641m.stopRemoteDisplay().addOnCompleteListener(new zzan(this));
        Callbacks callbacks = (Callbacks) this.f9637b.get();
        if (callbacks != null) {
            callbacks.onRemoteDisplaySessionEnded(this);
        }
        onDismissPresentation();
        a("Stopping the remote display Service");
        stopForeground(true);
        stopSelf();
        if (this.f9639f != null) {
            Preconditions.checkMainThread("CastRemoteDisplayLocalService calls must be done on the main thread");
            a("removeMediaRouterCallback");
            this.f9639f.removeCallback(this.f9642n);
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        a("onBind");
        return this.f9643p;
    }

    @Override // android.app.Service
    public void onCreate() {
        a("onCreate");
        super.onCreate();
        zzed zzedVar = new zzed(getMainLooper());
        this.f9638e = zzedVar;
        zzedVar.postDelayed(new zzah(this), 100L);
        if (this.f9641m == null) {
            this.f9641m = CastRemoteDisplay.getClient(this);
        }
        if (PlatformVersion.isAtLeastO()) {
            NotificationManager notificationManager = (NotificationManager) getSystemService(NotificationManager.class);
            AbstractC0052o.p();
            NotificationChannel e3 = AbstractC0658h.e(getString(R.string.cast_notification_default_channel_name));
            e3.setShowBadge(false);
            notificationManager.createNotificationChannel(e3);
        }
    }

    public abstract void onDismissPresentation();

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i2, int i7) {
        a("onStartCommand");
        this.f9640j = true;
        return 2;
    }
}
