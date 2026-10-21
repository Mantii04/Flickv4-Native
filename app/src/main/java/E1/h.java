package E1;

import B1.t;
import C1.v;
import I1.p;
import K1.U;
import K1.V;
import K1.r;
import L1.E;
import L1.x;
import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import androidx.work.impl.background.systemalarm.SystemAlarmService;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class h implements G1.c, E {

    /* renamed from: v, reason: collision with root package name */
    public static final String f941v = t.tagWithPrefix("DelayMetCommandHandler");

    /* renamed from: b, reason: collision with root package name */
    public final Context f942b;

    /* renamed from: e, reason: collision with root package name */
    public final int f943e;

    /* renamed from: f, reason: collision with root package name */
    public final r f944f;

    /* renamed from: j, reason: collision with root package name */
    public final m f945j;

    /* renamed from: m, reason: collision with root package name */
    public final G1.e f946m;

    /* renamed from: n, reason: collision with root package name */
    public final Object f947n;

    /* renamed from: p, reason: collision with root package name */
    public int f948p;

    /* renamed from: q, reason: collision with root package name */
    public final N1.a f949q;

    /* renamed from: r, reason: collision with root package name */
    public final Executor f950r;

    /* renamed from: s, reason: collision with root package name */
    public PowerManager.WakeLock f951s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f952t;

    /* renamed from: u, reason: collision with root package name */
    public final v f953u;

    public h(Context context, int i2, m mVar, v vVar) {
        this.f942b = context;
        this.f943e = i2;
        this.f945j = mVar;
        this.f944f = vVar.getId();
        this.f953u = vVar;
        p trackers = mVar.f964m.getTrackers();
        N1.e eVar = (N1.e) mVar.f961e;
        this.f949q = eVar.m1getSerialTaskExecutor();
        this.f950r = eVar.getMainThreadExecutor();
        this.f946m = new G1.e(trackers, this);
        this.f952t = false;
        this.f948p = 0;
        this.f947n = new Object();
    }

    public static void a(h hVar) {
        r rVar = hVar.f944f;
        String workSpecId = rVar.getWorkSpecId();
        int i2 = hVar.f948p;
        String str = f941v;
        if (i2 >= 2) {
            t.get().debug(str, "Already stopped work for " + workSpecId);
            return;
        }
        hVar.f948p = 2;
        t.get().debug(str, "Stopping work for WorkSpec " + workSpecId);
        Context context = hVar.f942b;
        Intent intent = new Intent(context, (Class<?>) SystemAlarmService.class);
        intent.setAction("ACTION_STOP_WORK");
        c.d(intent, rVar);
        m mVar = hVar.f945j;
        int i7 = hVar.f943e;
        j jVar = new j(i7, mVar, intent);
        Executor executor = hVar.f950r;
        executor.execute(jVar);
        if (!mVar.f963j.isEnqueued(rVar.getWorkSpecId())) {
            t.get().debug(str, "Processor does not have WorkSpec " + workSpecId + ". No need to reschedule");
            return;
        }
        t.get().debug(str, "WorkSpec " + workSpecId + " needs to be rescheduled");
        Intent intent2 = new Intent(context, (Class<?>) SystemAlarmService.class);
        intent2.setAction("ACTION_SCHEDULE_WORK");
        c.d(intent2, rVar);
        executor.execute(new j(i7, mVar, intent2));
    }

    public final void b() {
        synchronized (this.f947n) {
            try {
                this.f946m.reset();
                this.f945j.f962f.stopTimer(this.f944f);
                PowerManager.WakeLock wakeLock = this.f951s;
                if (wakeLock != null && wakeLock.isHeld()) {
                    t.get().debug(f941v, "Releasing wakelock " + this.f951s + "for WorkSpec " + this.f944f);
                    this.f951s.release();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void c() {
        String workSpecId = this.f944f.getWorkSpecId();
        this.f951s = x.newWakeLock(this.f942b, A.i.m(A.i.s(workSpecId, " ("), this.f943e, ")"));
        t tVar = t.get();
        String str = "Acquiring wakelock " + this.f951s + "for WorkSpec " + workSpecId;
        String str2 = f941v;
        tVar.debug(str2, str);
        this.f951s.acquire();
        K1.E workSpec = ((U) this.f945j.f964m.getWorkDatabase().workSpecDao()).getWorkSpec(workSpecId);
        if (workSpec == null) {
            ((L1.t) this.f949q).execute(new g(this, 0));
            return;
        }
        boolean hasConstraints = workSpec.hasConstraints();
        this.f952t = hasConstraints;
        if (hasConstraints) {
            this.f946m.replace(Collections.singletonList(workSpec));
            return;
        }
        t.get().debug(str2, "No constraints for " + workSpecId);
        onAllConstraintsMet(Collections.singletonList(workSpec));
    }

    public final void d(boolean z6) {
        t tVar = t.get();
        StringBuilder sb = new StringBuilder("onExecuted ");
        r rVar = this.f944f;
        sb.append(rVar);
        sb.append(", ");
        sb.append(z6);
        tVar.debug(f941v, sb.toString());
        b();
        int i2 = this.f943e;
        m mVar = this.f945j;
        Executor executor = this.f950r;
        Context context = this.f942b;
        if (z6) {
            Intent intent = new Intent(context, (Class<?>) SystemAlarmService.class);
            intent.setAction("ACTION_SCHEDULE_WORK");
            c.d(intent, rVar);
            executor.execute(new j(i2, mVar, intent));
        }
        if (this.f952t) {
            Intent intent2 = new Intent(context, (Class<?>) SystemAlarmService.class);
            intent2.setAction("ACTION_CONSTRAINTS_CHANGED");
            executor.execute(new j(i2, mVar, intent2));
        }
    }

    @Override // G1.c
    public void onAllConstraintsMet(List<K1.E> list) {
        Iterator<K1.E> it = list.iterator();
        while (it.hasNext()) {
            if (V.generationalId(it.next()).equals(this.f944f)) {
                ((L1.t) this.f949q).execute(new g(this, 1));
                return;
            }
        }
    }

    @Override // G1.c
    public void onAllConstraintsNotMet(List<K1.E> list) {
        ((L1.t) this.f949q).execute(new g(this, 0));
    }

    public void onTimeLimitExceeded(r rVar) {
        t.get().debug(f941v, "Exceeded time limits on execution for " + rVar);
        ((L1.t) this.f949q).execute(new g(this, 0));
    }
}
