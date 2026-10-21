package io.hopmonsdk.service;

import android.R;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.PowerManager;
import cz.msebera.android.httpclient.protocol.HTTP;
import e.P;
import io.hopmonsdk.Hopmn;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import k5.C1118a;
import m5.RunnableC1345b;
import p5.BinderC1505d;
import p5.C1503b;
import p5.C1504c;
import s5.AbstractC1643b;
import z.C1954B;
import z.y;

/* loaded from: classes2.dex */
public class MoneytiserService extends Service {

    /* renamed from: m, reason: collision with root package name */
    public static final /* synthetic */ int f16795m = 0;

    /* renamed from: b, reason: collision with root package name */
    public RunnableC1345b f16796b;

    /* renamed from: e, reason: collision with root package name */
    public C1503b f16797e;

    /* renamed from: f, reason: collision with root package name */
    public final BinderC1505d f16798f = new BinderC1505d(this);

    /* renamed from: j, reason: collision with root package name */
    public final Handler f16799j = new Handler(Looper.getMainLooper());

    public final Notification a() {
        NotificationChannel notificationChannel;
        NotificationManager notificationManager = (NotificationManager) getSystemService(NotificationManager.class);
        if (notificationManager != null) {
            notificationChannel = notificationManager.getNotificationChannel("hopmn_service_chan_fallback");
            if (notificationChannel == null) {
                notificationManager.createNotificationChannel(P.e());
            }
        }
        return new C1954B(this, "hopmn_service_chan_fallback").setContentTitle("Background service is running").setSmallIcon(R.drawable.stat_notify_sync).setOngoing(true).setPriority(-1).build();
    }

    public final boolean b() {
        if (Build.VERSION.SDK_INT >= 26) {
            try {
                AbstractC1643b.d("MoneytiserService", "foreground Service - create notification", new Object[0]);
                d();
                return true;
            } catch (Throwable th) {
                AbstractC1643b.e("MoneytiserService", "showNotification failed, using fallback: %s", th.getMessage());
                try {
                    e(a());
                    AbstractC1643b.w("MoneytiserService", "entered foreground with fallback notification", new Object[0]);
                } catch (Throwable th2) {
                    AbstractC1643b.e("MoneytiserService", "startForeground failed entirely: %s", th2.getMessage());
                    return false;
                }
            }
        }
        return true;
    }

    public final void c(int i2, String str) {
        try {
            Hopmn hopmn = Hopmn.getInstance(this);
            String publisher = hopmn.getPublisher();
            String category = hopmn.getCategory();
            String str2 = "/?domain=" + hopmn.getDomain() + "&uid=" + str + "&pub=" + publisher + "&foreground=" + String.valueOf(hopmn.isForegroundRunning()) + "&ver=15.0.17&regcc=1&cid=" + category;
            AbstractC1643b.d("MoneytiserService", "Seed-mode registration attempt %d/%d, path: %s", Integer.valueOf(i2 + 1), 6, str2);
            hopmn.getSeedDiscovery().executePost(str2, new C1504c(this, str, hopmn, i2));
        } catch (Exception e3) {
            AbstractC1643b.e("MoneytiserService", "registerWithSeedMode exception: ", e3, new Object[0]);
        }
    }

    public final void d() {
        NotificationChannel notificationChannel;
        int identifier;
        C1118a c1118a = C1118a.getInstance(this);
        String str = c1118a.get("APPNAME", "Hopmn");
        String str2 = c1118a.get("MESSAGE", "Background service is running");
        NotificationManager notificationManager = (NotificationManager) getSystemService(NotificationManager.class);
        notificationChannel = notificationManager.getNotificationChannel("hopmn_service_chan");
        if (notificationChannel == null) {
            NotificationChannel g7 = P.g(str);
            g7.setShowBadge(false);
            g7.enableLights(false);
            g7.enableVibration(false);
            notificationManager.createNotificationChannel(g7);
        }
        int i2 = io.hopmon.R.drawable.ic_android_notify;
        String str3 = c1118a.get("ICON_NAME", null);
        if (str3 == null || (identifier = getResources().getIdentifier(str3, "drawable", getPackageName())) == 0) {
            int i7 = c1118a.getInt("ICON", i2);
            try {
                getResources().getResourceName(i7);
                i2 = i7;
            } catch (Resources.NotFoundException unused) {
            }
        } else {
            i2 = identifier;
        }
        PendingIntent service = PendingIntent.getService(this, 0, new Intent(this, (Class<?>) MoneytiserService.class).setAction("ACTION_NOTIFY_CLICKED"), 335544320);
        C1954B priority = new C1954B(this, "hopmn_service_chan").setContentTitle(str).setContentText(str2).setSmallIcon(i2).setContentIntent(service).setOngoing(true).setPriority(-1);
        priority.addAction(new y(R.drawable.ic_menu_close_clear_cancel, HTTP.CONN_CLOSE, service));
        Notification build = priority.build();
        AbstractC1643b.d("MoneytiserService", "foreground Service - REGULAR FOREGROUND", new Object[0]);
        e(build);
    }

    public final void e(Notification notification) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 34) {
            try {
                startForeground(1, notification, 1073741824);
                return;
            } catch (Throwable th) {
                AbstractC1643b.w("MoneytiserService", "typed startForeground(SPECIAL_USE) refused, retrying untyped: %s", th.getMessage());
            }
        } else {
            if (i2 < 29) {
                startForeground(1, notification);
                return;
            }
            try {
                startForeground(1, notification, 1);
                return;
            } catch (Throwable th2) {
                AbstractC1643b.w("MoneytiserService", "typed startForeground(DATA_SYNC) refused, retrying untyped: %s", th2.getMessage());
            }
        }
        startForeground(1, notification);
    }

    public long getProxyUpTime(TimeUnit timeUnit) {
        RunnableC1345b runnableC1345b = this.f16796b;
        if (runnableC1345b != null) {
            return runnableC1345b.getUpTime(timeUnit);
        }
        return 0L;
    }

    public boolean isRunning() {
        RunnableC1345b runnableC1345b = this.f16796b;
        return runnableC1345b != null && runnableC1345b.isRunning();
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f16798f;
    }

    @Override // android.app.Service
    public void onCreate() {
        b();
        PowerManager powerManager = (PowerManager) getSystemService("power");
        try {
            Hopmn hopmn = Hopmn.getInstance(this);
            if (hopmn != null) {
                this.f16797e = hopmn.getHttpManager();
                this.f16796b = new RunnableC1345b(this, powerManager.newWakeLock(1, "MoneytiserService"));
                AbstractC1643b.d("MoneytiserService", "Service was created", new Object[0]);
            }
        } catch (Exception e3) {
            AbstractC1643b.e("MoneytiserService", "Failed to getInstance on MoneytiserService onCreate: ", e3, new Object[0]);
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        C1503b c1503b = this.f16797e;
        if (c1503b != null) {
            c1503b.stop();
        }
        RunnableC1345b runnableC1345b = this.f16796b;
        if (runnableC1345b != null) {
            runnableC1345b.shutdown();
        }
        AbstractC1643b.w("MoneytiserService", "Service was stopped", new Object[0]);
    }

    @Override // android.app.Service, android.content.ComponentCallbacks
    public void onLowMemory() {
        super.onLowMemory();
        AbstractC1643b.d("MoneytiserService", "Detected low memory", new Object[0]);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i2, int i7) {
        Hopmn hopmn;
        long j7;
        AbstractC1643b.d("MoneytiserService", "onStartCommand called", new Object[0]);
        super.onStartCommand(intent, i2, i7);
        if (!b()) {
            AbstractC1643b.e("MoneytiserService", "could not enter foreground, stopping service", new Object[0]);
            stopSelf();
            return 2;
        }
        try {
            hopmn = Hopmn.getInstance(this);
        } catch (Exception e3) {
            AbstractC1643b.e("MoneytiserService", "OnStartCommand failed! Error = %s ", e3.getMessage());
        }
        if (hopmn == null) {
            AbstractC1643b.e("MoneytiserService", "Hopmn instance is null, cannot start service logic - stopping", new Object[0]);
            stopSelf();
            return 2;
        }
        if (this.f16796b == null) {
            this.f16796b = new RunnableC1345b(this, ((PowerManager) getSystemService("power")).newWakeLock(1, "MoneytiserService"));
        }
        C1118a dataStore = hopmn.getDataStore();
        String str = dataStore.get(getString(io.hopmon.R.string.hopmon_uid_key));
        String str2 = dataStore.get(getString(io.hopmon.R.string.hopmon_country_key));
        try {
            j7 = getPackageManager().getPackageInfo(getPackageName(), 0).firstInstallTime;
        } catch (Exception unused) {
            j7 = 0;
        }
        long j8 = dataStore.getLong("hopmon.registered_at", 0L);
        String str3 = dataStore.get("hopmon.registered_version");
        boolean z6 = j7 > j8;
        boolean equals = "15.0.17".equals(str3);
        boolean z7 = !equals;
        if (str != null && str2 != null && !z6 && equals) {
            AbstractC1643b.d("MoneytiserService", "Device already registered, uid=%s cc=%s", str, str2);
            this.f16796b.schedule(str, str2);
            return 1;
        }
        AbstractC1643b.d("MoneytiserService", "Registering device — uid=%s freshInstall=%s versionChanged=%s", str, Boolean.valueOf(z6), Boolean.valueOf(z7));
        c(0, UUID.randomUUID().toString());
        return 1;
    }

    @Override // android.app.Service
    public void onTaskRemoved(Intent intent) {
        super.onTaskRemoved(intent);
        AbstractC1643b.d("MoneytiserService", "Task removed", new Object[0]);
    }

    @Override // android.app.Service
    public void onTimeout(int i2) {
        AbstractC1643b.w("MoneytiserService", "FGS onTimeout(startId=%d) — stopping to comply with platform limit", Integer.valueOf(i2));
        try {
            if (Build.VERSION.SDK_INT >= 24) {
                stopForeground(1);
            } else {
                stopForeground(true);
            }
        } catch (Exception unused) {
        }
        stopSelf();
    }

    public void onTimeout(int i2, int i7) {
        AbstractC1643b.w("MoneytiserService", "FGS onTimeout(startId=%d, type=%d) — stopping to comply with Android 15 dataSync limit", Integer.valueOf(i2), Integer.valueOf(i7));
        try {
            if (Build.VERSION.SDK_INT >= 24) {
                stopForeground(1);
            } else {
                stopForeground(true);
            }
        } catch (Exception unused) {
        }
        stopSelf();
    }
}
