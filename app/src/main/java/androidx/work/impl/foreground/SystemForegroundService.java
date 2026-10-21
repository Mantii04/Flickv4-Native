package androidx.work.impl.foreground;

import B1.t;
import J1.b;
import J1.c;
import J1.d;
import J1.f;
import J1.g;
import N1.e;
import android.app.Notification;
import android.app.NotificationManager;
import android.content.Intent;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.lifecycle.AbstractServiceC0565x;
import java.util.UUID;

/* loaded from: classes.dex */
public class SystemForegroundService extends AbstractServiceC0565x implements c {

    /* renamed from: n, reason: collision with root package name */
    public static final String f8306n = t.tagWithPrefix("SystemFgService");

    /* renamed from: e, reason: collision with root package name */
    public Handler f8307e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f8308f;

    /* renamed from: j, reason: collision with root package name */
    public d f8309j;

    /* renamed from: m, reason: collision with root package name */
    public NotificationManager f8310m;

    public final void a() {
        this.f8307e = new Handler(Looper.getMainLooper());
        this.f8310m = (NotificationManager) getApplicationContext().getSystemService("notification");
        d dVar = new d(getApplicationContext());
        this.f8309j = dVar;
        if (dVar.f1490r != null) {
            t.get().error(d.f1481s, "A callback already exists.");
        } else {
            dVar.f1490r = this;
        }
    }

    @Override // J1.c
    public void cancelNotification(int i2) {
        this.f8307e.post(new g(this, i2));
    }

    @Override // J1.c
    public void notify(int i2, Notification notification) {
        this.f8307e.post(new f(this, i2, notification));
    }

    @Override // androidx.lifecycle.AbstractServiceC0565x, android.app.Service
    public void onCreate() {
        super.onCreate();
        a();
    }

    @Override // androidx.lifecycle.AbstractServiceC0565x, android.app.Service
    public void onDestroy() {
        super.onDestroy();
        this.f8309j.b();
    }

    @Override // androidx.lifecycle.AbstractServiceC0565x, android.app.Service
    public int onStartCommand(Intent intent, int i2, int i7) {
        super.onStartCommand(intent, i2, i7);
        if (this.f8308f) {
            t.get().info(f8306n, "Re-initializing SystemForegroundService after a request to shut-down.");
            this.f8309j.b();
            a();
            this.f8308f = false;
        }
        if (intent == null) {
            return 3;
        }
        d dVar = this.f8309j;
        dVar.getClass();
        String action = intent.getAction();
        boolean equals = "ACTION_START_FOREGROUND".equals(action);
        String str = d.f1481s;
        if (equals) {
            t.get().info(str, "Started foreground service " + intent);
            b bVar = new b(dVar, intent.getStringExtra("KEY_WORKSPEC_ID"));
            e eVar = (e) dVar.f1483e;
            eVar.getClass();
            N1.b.a(eVar, bVar);
            dVar.a(intent);
            return 3;
        }
        if ("ACTION_NOTIFY".equals(action)) {
            dVar.a(intent);
            return 3;
        }
        if (!"ACTION_CANCEL_WORK".equals(action)) {
            if (!"ACTION_STOP_FOREGROUND".equals(action)) {
                return 3;
            }
            t.get().info(str, "Stopping foreground service");
            SystemForegroundService systemForegroundService = dVar.f1490r;
            if (systemForegroundService == null) {
                return 3;
            }
            systemForegroundService.stop();
            return 3;
        }
        t.get().info(str, "Stopping foreground work for " + intent);
        String stringExtra = intent.getStringExtra("KEY_WORKSPEC_ID");
        if (stringExtra == null || TextUtils.isEmpty(stringExtra)) {
            return 3;
        }
        dVar.f1482b.cancelWorkById(UUID.fromString(stringExtra));
        return 3;
    }

    @Override // J1.c
    public void startForeground(int i2, int i7, Notification notification) {
        this.f8307e.post(new J1.e(this, i2, notification, i7));
    }

    @Override // J1.c
    public void stop() {
        this.f8308f = true;
        t.get().debug(f8306n, "All commands completed.");
        if (Build.VERSION.SDK_INT >= 26) {
            stopForeground(true);
        }
        stopSelf();
    }
}
