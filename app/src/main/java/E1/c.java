package E1;

import B1.C0026f;
import B1.t;
import C1.InterfaceC0067e;
import C1.v;
import C1.w;
import K1.E;
import K1.U;
import K1.V;
import K1.r;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.work.NetworkType;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemalarm.ConstraintProxyUpdateReceiver;
import androidx.work.impl.background.systemalarm.SystemAlarmService;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class c implements InterfaceC0067e {

    /* renamed from: m, reason: collision with root package name */
    public static final String f926m = t.tagWithPrefix("CommandHandler");

    /* renamed from: b, reason: collision with root package name */
    public final Context f927b;

    /* renamed from: e, reason: collision with root package name */
    public final HashMap f928e = new HashMap();

    /* renamed from: f, reason: collision with root package name */
    public final Object f929f = new Object();

    /* renamed from: j, reason: collision with root package name */
    public final w f930j;

    public c(Context context, w wVar) {
        this.f927b = context;
        this.f930j = wVar;
    }

    public static r c(Intent intent) {
        return new r(intent.getStringExtra("KEY_WORKSPEC_ID"), intent.getIntExtra("KEY_WORKSPEC_GENERATION", 0));
    }

    public static void d(Intent intent, r rVar) {
        intent.putExtra("KEY_WORKSPEC_ID", rVar.getWorkSpecId());
        intent.putExtra("KEY_WORKSPEC_GENERATION", rVar.getGeneration());
    }

    public final boolean a() {
        boolean z6;
        synchronized (this.f929f) {
            z6 = !this.f928e.isEmpty();
        }
        return z6;
    }

    public final void b(int i2, m mVar, Intent intent) {
        List<v> list;
        String action = intent.getAction();
        if ("ACTION_CONSTRAINTS_CHANGED".equals(action)) {
            t.get().debug(f926m, "Handling constraints changed " + intent);
            f fVar = new f(this.f927b, i2, mVar);
            List<E> scheduledWork = ((U) mVar.f964m.getWorkDatabase().workSpecDao()).getScheduledWork();
            String str = d.f931a;
            Iterator<E> it = scheduledWork.iterator();
            boolean z6 = false;
            boolean z7 = false;
            boolean z8 = false;
            boolean z9 = false;
            while (it.hasNext()) {
                C0026f c0026f = it.next().f1603j;
                z6 |= c0026f.requiresBatteryNotLow();
                z7 |= c0026f.requiresCharging();
                z8 |= c0026f.requiresStorageNotLow();
                z9 |= c0026f.getRequiredNetworkType() != NetworkType.f8258b;
                if (z6 && z7 && z8 && z9) {
                    break;
                }
            }
            Context context = fVar.f936a;
            context.sendBroadcast(ConstraintProxyUpdateReceiver.newConstraintProxyUpdateIntent(context, z6, z7, z8, z9));
            G1.e eVar = fVar.f938c;
            eVar.replace(scheduledWork);
            ArrayList arrayList = new ArrayList(scheduledWork.size());
            long currentTimeMillis = System.currentTimeMillis();
            for (E e3 : scheduledWork) {
                String str2 = e3.f1594a;
                if (currentTimeMillis >= e3.calculateNextRunTime() && (!e3.hasConstraints() || eVar.areAllConstraintsMet(str2))) {
                    arrayList.add(e3);
                }
            }
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                E e7 = (E) it2.next();
                String str3 = e7.f1594a;
                r generationalId = V.generationalId(e7);
                Intent intent2 = new Intent(context, (Class<?>) SystemAlarmService.class);
                intent2.setAction("ACTION_DELAY_MET");
                d(intent2, generationalId);
                t.get().debug(f.f935d, A.i.l("Creating a delay_met command for workSpec with id (", str3, ")"));
                ((N1.e) mVar.f961e).getMainThreadExecutor().execute(new j(fVar.f937b, mVar, intent2));
            }
            eVar.reset();
            return;
        }
        if ("ACTION_RESCHEDULE".equals(action)) {
            t.get().debug(f926m, "Handling reschedule " + intent + ", " + i2);
            mVar.f964m.rescheduleEligibleWork();
            return;
        }
        Bundle extras = intent.getExtras();
        String[] strArr = {"KEY_WORKSPEC_ID"};
        if (extras == null || extras.isEmpty() || extras.get(strArr[0]) == null) {
            t.get().error(f926m, "Invalid request for " + action + " , requires KEY_WORKSPEC_ID .");
            return;
        }
        if ("ACTION_SCHEDULE_WORK".equals(action)) {
            r c7 = c(intent);
            String str4 = f926m;
            t.get().debug(str4, "Handling schedule work for " + c7);
            WorkDatabase workDatabase = mVar.f964m.getWorkDatabase();
            workDatabase.beginTransaction();
            try {
                E workSpec = ((U) workDatabase.workSpecDao()).getWorkSpec(c7.getWorkSpecId());
                if (workSpec == null) {
                    t.get().warning(str4, "Skipping scheduling " + c7 + " because it's no longer in the DB");
                    return;
                }
                if (workSpec.f1595b.isFinished()) {
                    t.get().warning(str4, "Skipping scheduling " + c7 + "because it is finished.");
                    return;
                }
                long calculateNextRunTime = workSpec.calculateNextRunTime();
                boolean hasConstraints = workSpec.hasConstraints();
                Context context2 = this.f927b;
                if (hasConstraints) {
                    t.get().debug(str4, "Opportunistically setting an alarm for " + c7 + "at " + calculateNextRunTime);
                    b.setAlarm(context2, workDatabase, c7, calculateNextRunTime);
                    Intent intent3 = new Intent(context2, (Class<?>) SystemAlarmService.class);
                    intent3.setAction("ACTION_CONSTRAINTS_CHANGED");
                    ((N1.e) mVar.f961e).getMainThreadExecutor().execute(new j(i2, mVar, intent3));
                } else {
                    t.get().debug(str4, "Setting up Alarms for " + c7 + "at " + calculateNextRunTime);
                    b.setAlarm(context2, workDatabase, c7, calculateNextRunTime);
                }
                workDatabase.setTransactionSuccessful();
                return;
            } finally {
                workDatabase.endTransaction();
            }
        }
        if ("ACTION_DELAY_MET".equals(action)) {
            synchronized (this.f929f) {
                try {
                    r c8 = c(intent);
                    t tVar = t.get();
                    String str5 = f926m;
                    tVar.debug(str5, "Handing delay met for " + c8);
                    if (this.f928e.containsKey(c8)) {
                        t.get().debug(str5, "WorkSpec " + c8 + " is is already being handled for ACTION_DELAY_MET");
                    } else {
                        h hVar = new h(this.f927b, i2, mVar, this.f930j.tokenFor(c8));
                        this.f928e.put(c8, hVar);
                        hVar.c();
                    }
                } finally {
                }
            }
            return;
        }
        if (!"ACTION_STOP_WORK".equals(action)) {
            if (!"ACTION_EXECUTION_COMPLETED".equals(action)) {
                t.get().warning(f926m, "Ignoring intent " + intent);
                return;
            }
            r c9 = c(intent);
            boolean z10 = intent.getExtras().getBoolean("KEY_NEEDS_RESCHEDULE");
            t.get().debug(f926m, "Handling onExecutionCompleted " + intent + ", " + i2);
            onExecuted(c9, z10);
            return;
        }
        Bundle extras2 = intent.getExtras();
        String string = extras2.getString("KEY_WORKSPEC_ID");
        boolean containsKey = extras2.containsKey("KEY_WORKSPEC_GENERATION");
        w wVar = this.f930j;
        if (containsKey) {
            int i7 = extras2.getInt("KEY_WORKSPEC_GENERATION");
            ArrayList arrayList2 = new ArrayList(1);
            v remove = wVar.remove(new r(string, i7));
            list = arrayList2;
            if (remove != null) {
                arrayList2.add(remove);
                list = arrayList2;
            }
        } else {
            list = wVar.remove(string);
        }
        for (v vVar : list) {
            t.get().debug(f926m, A.i.k("Handing stopWork work for ", string));
            mVar.f964m.stopWork(vVar);
            b.cancelAlarm(this.f927b, mVar.f964m.getWorkDatabase(), vVar.getId());
            mVar.onExecuted(vVar.getId(), false);
        }
    }

    @Override // C1.InterfaceC0067e
    public void onExecuted(r rVar, boolean z6) {
        synchronized (this.f929f) {
            try {
                h hVar = (h) this.f928e.remove(rVar);
                this.f930j.remove(rVar);
                if (hVar != null) {
                    hVar.d(z6);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
