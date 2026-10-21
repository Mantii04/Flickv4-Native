package E1;

import B1.t;
import K1.AbstractC0126q;
import K1.C0119j;
import K1.C0125p;
import K1.r;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemalarm.SystemAlarmService;

/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    public static final String f925a = t.tagWithPrefix("Alarms");

    public static void a(Context context, r rVar, int i2) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        String str = c.f926m;
        Intent intent = new Intent(context, (Class<?>) SystemAlarmService.class);
        intent.setAction("ACTION_DELAY_MET");
        c.d(intent, rVar);
        PendingIntent service = PendingIntent.getService(context, i2, intent, 603979776);
        if (service == null || alarmManager == null) {
            return;
        }
        t.get().debug(f925a, "Cancelling existing alarm with (workSpecId, systemId) (" + rVar + ", " + i2 + ")");
        alarmManager.cancel(service);
    }

    public static void cancelAlarm(Context context, WorkDatabase workDatabase, r rVar) {
        C0125p c0125p = (C0125p) workDatabase.systemIdInfoDao();
        C0119j systemIdInfo = c0125p.getSystemIdInfo(rVar);
        if (systemIdInfo != null) {
            a(context, rVar, systemIdInfo.f1641c);
            t.get().debug(f925a, "Removing SystemIdInfo for workSpecId (" + rVar + ")");
            c0125p.removeSystemIdInfo(rVar);
        }
    }

    public static void setAlarm(Context context, WorkDatabase workDatabase, r rVar, long j7) {
        C0125p c0125p = (C0125p) workDatabase.systemIdInfoDao();
        C0119j systemIdInfo = c0125p.getSystemIdInfo(rVar);
        if (systemIdInfo != null) {
            int i2 = systemIdInfo.f1641c;
            a(context, rVar, i2);
            AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
            String str = c.f926m;
            Intent intent = new Intent(context, (Class<?>) SystemAlarmService.class);
            intent.setAction("ACTION_DELAY_MET");
            c.d(intent, rVar);
            PendingIntent service = PendingIntent.getService(context, i2, intent, 201326592);
            if (alarmManager != null) {
                a.a(alarmManager, 0, j7, service);
                return;
            }
            return;
        }
        int nextAlarmManagerId = new L1.k(workDatabase).nextAlarmManagerId();
        c0125p.insertSystemIdInfo(AbstractC0126q.systemIdInfo(rVar, nextAlarmManagerId));
        AlarmManager alarmManager2 = (AlarmManager) context.getSystemService("alarm");
        String str2 = c.f926m;
        Intent intent2 = new Intent(context, (Class<?>) SystemAlarmService.class);
        intent2.setAction("ACTION_DELAY_MET");
        c.d(intent2, rVar);
        PendingIntent service2 = PendingIntent.getService(context, nextAlarmManagerId, intent2, 201326592);
        if (alarmManager2 != null) {
            a.a(alarmManager2, 0, j7, service2);
        }
    }
}
