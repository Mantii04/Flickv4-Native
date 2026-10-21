package J1;

import B1.C0029i;
import B1.t;
import C1.G;
import C1.InterfaceC0067e;
import K1.E;
import K1.V;
import K1.r;
import android.app.Notification;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import androidx.work.impl.foreground.SystemForegroundService;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class d implements G1.c, InterfaceC0067e {

    /* renamed from: s, reason: collision with root package name */
    public static final String f1481s = t.tagWithPrefix("SystemFgDispatcher");

    /* renamed from: b, reason: collision with root package name */
    public final G f1482b;

    /* renamed from: e, reason: collision with root package name */
    public final N1.c f1483e;

    /* renamed from: f, reason: collision with root package name */
    public final Object f1484f = new Object();

    /* renamed from: j, reason: collision with root package name */
    public r f1485j;

    /* renamed from: m, reason: collision with root package name */
    public final LinkedHashMap f1486m;

    /* renamed from: n, reason: collision with root package name */
    public final HashMap f1487n;

    /* renamed from: p, reason: collision with root package name */
    public final HashSet f1488p;

    /* renamed from: q, reason: collision with root package name */
    public final G1.e f1489q;

    /* renamed from: r, reason: collision with root package name */
    public SystemForegroundService f1490r;

    public d(Context context) {
        G g7 = G.getInstance(context);
        this.f1482b = g7;
        this.f1483e = g7.getWorkTaskExecutor();
        this.f1485j = null;
        this.f1486m = new LinkedHashMap();
        this.f1488p = new HashSet();
        this.f1487n = new HashMap();
        this.f1489q = new G1.e(g7.getTrackers(), this);
        g7.getProcessor().addExecutionListener(this);
    }

    public static Intent createNotifyIntent(Context context, r rVar, C0029i c0029i) {
        Intent intent = new Intent(context, (Class<?>) SystemForegroundService.class);
        intent.setAction("ACTION_NOTIFY");
        intent.putExtra("KEY_NOTIFICATION_ID", c0029i.getNotificationId());
        intent.putExtra("KEY_FOREGROUND_SERVICE_TYPE", c0029i.getForegroundServiceType());
        intent.putExtra("KEY_NOTIFICATION", c0029i.getNotification());
        intent.putExtra("KEY_WORKSPEC_ID", rVar.getWorkSpecId());
        intent.putExtra("KEY_GENERATION", rVar.getGeneration());
        return intent;
    }

    public static Intent createStartForegroundIntent(Context context, r rVar, C0029i c0029i) {
        Intent intent = new Intent(context, (Class<?>) SystemForegroundService.class);
        intent.setAction("ACTION_START_FOREGROUND");
        intent.putExtra("KEY_WORKSPEC_ID", rVar.getWorkSpecId());
        intent.putExtra("KEY_GENERATION", rVar.getGeneration());
        intent.putExtra("KEY_NOTIFICATION_ID", c0029i.getNotificationId());
        intent.putExtra("KEY_FOREGROUND_SERVICE_TYPE", c0029i.getForegroundServiceType());
        intent.putExtra("KEY_NOTIFICATION", c0029i.getNotification());
        return intent;
    }

    public static Intent createStopForegroundIntent(Context context) {
        Intent intent = new Intent(context, (Class<?>) SystemForegroundService.class);
        intent.setAction("ACTION_STOP_FOREGROUND");
        return intent;
    }

    public final void a(Intent intent) {
        int i2 = 0;
        int intExtra = intent.getIntExtra("KEY_NOTIFICATION_ID", 0);
        int intExtra2 = intent.getIntExtra("KEY_FOREGROUND_SERVICE_TYPE", 0);
        String stringExtra = intent.getStringExtra("KEY_WORKSPEC_ID");
        r rVar = new r(stringExtra, intent.getIntExtra("KEY_GENERATION", 0));
        Notification notification = (Notification) intent.getParcelableExtra("KEY_NOTIFICATION");
        t tVar = t.get();
        StringBuilder sb = new StringBuilder("Notifying with (id:");
        sb.append(intExtra);
        sb.append(", workSpecId: ");
        sb.append(stringExtra);
        sb.append(", notificationType :");
        tVar.debug(f1481s, A.i.m(sb, intExtra2, ")"));
        if (notification == null || this.f1490r == null) {
            return;
        }
        C0029i c0029i = new C0029i(intExtra, notification, intExtra2);
        LinkedHashMap linkedHashMap = this.f1486m;
        linkedHashMap.put(rVar, c0029i);
        if (this.f1485j == null) {
            this.f1485j = rVar;
            this.f1490r.startForeground(intExtra, intExtra2, notification);
            return;
        }
        this.f1490r.notify(intExtra, notification);
        if (intExtra2 == 0 || Build.VERSION.SDK_INT < 29) {
            return;
        }
        Iterator it = linkedHashMap.entrySet().iterator();
        while (it.hasNext()) {
            i2 |= ((C0029i) ((Map.Entry) it.next()).getValue()).getForegroundServiceType();
        }
        C0029i c0029i2 = (C0029i) linkedHashMap.get(this.f1485j);
        if (c0029i2 != null) {
            this.f1490r.startForeground(c0029i2.getNotificationId(), i2, c0029i2.getNotification());
        }
    }

    public final void b() {
        this.f1490r = null;
        synchronized (this.f1484f) {
            this.f1489q.reset();
        }
        this.f1482b.getProcessor().removeExecutionListener(this);
    }

    @Override // G1.c
    public void onAllConstraintsNotMet(List<E> list) {
        if (list.isEmpty()) {
            return;
        }
        for (E e3 : list) {
            String str = e3.f1594a;
            t.get().debug(f1481s, "Constraints unmet for WorkSpec " + str);
            this.f1482b.stopForegroundWork(V.generationalId(e3));
        }
    }

    @Override // C1.InterfaceC0067e
    public void onExecuted(r rVar, boolean z6) {
        Map.Entry entry;
        synchronized (this.f1484f) {
            try {
                E e3 = (E) this.f1487n.remove(rVar);
                if (e3 != null ? this.f1488p.remove(e3) : false) {
                    this.f1489q.replace(this.f1488p);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        C0029i c0029i = (C0029i) this.f1486m.remove(rVar);
        if (rVar.equals(this.f1485j) && this.f1486m.size() > 0) {
            Iterator it = this.f1486m.entrySet().iterator();
            Object next = it.next();
            while (true) {
                entry = (Map.Entry) next;
                if (!it.hasNext()) {
                    break;
                } else {
                    next = it.next();
                }
            }
            this.f1485j = (r) entry.getKey();
            if (this.f1490r != null) {
                C0029i c0029i2 = (C0029i) entry.getValue();
                this.f1490r.startForeground(c0029i2.getNotificationId(), c0029i2.getForegroundServiceType(), c0029i2.getNotification());
                this.f1490r.cancelNotification(c0029i2.getNotificationId());
            }
        }
        SystemForegroundService systemForegroundService = this.f1490r;
        if (c0029i == null || systemForegroundService == null) {
            return;
        }
        t.get().debug(f1481s, "Removing Notification (id: " + c0029i.getNotificationId() + ", workSpecId: " + rVar + ", notificationType: " + c0029i.getForegroundServiceType());
        systemForegroundService.cancelNotification(c0029i.getNotificationId());
    }

    @Override // G1.c
    public void onAllConstraintsMet(List<E> list) {
    }
}
