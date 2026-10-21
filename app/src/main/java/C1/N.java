package C1;

import B1.AbstractC0031k;
import B1.AbstractC0037q;
import B1.C0023c;
import B1.C0028h;
import B1.C0034n;
import B1.C0035o;
import B1.C0036p;
import B1.P;
import B1.Q;
import K1.C0113d;
import K1.InterfaceC0111b;
import K1.U;
import K1.V;
import android.content.Context;
import androidx.work.WorkInfo$State;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemalarm.RescheduleReceiver;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class N implements Runnable {

    /* renamed from: B, reason: collision with root package name */
    public static final String f405B = B1.t.tagWithPrefix("WorkerWrapper");

    /* renamed from: A, reason: collision with root package name */
    public volatile boolean f406A;

    /* renamed from: b, reason: collision with root package name */
    public final Context f407b;

    /* renamed from: e, reason: collision with root package name */
    public final String f408e;

    /* renamed from: f, reason: collision with root package name */
    public final List f409f;

    /* renamed from: j, reason: collision with root package name */
    public final Q f410j;

    /* renamed from: m, reason: collision with root package name */
    public final K1.E f411m;

    /* renamed from: n, reason: collision with root package name */
    public B1.r f412n;

    /* renamed from: p, reason: collision with root package name */
    public final N1.c f413p;

    /* renamed from: r, reason: collision with root package name */
    public final C0023c f415r;

    /* renamed from: s, reason: collision with root package name */
    public final J1.a f416s;

    /* renamed from: t, reason: collision with root package name */
    public final WorkDatabase f417t;

    /* renamed from: u, reason: collision with root package name */
    public final K1.F f418u;

    /* renamed from: v, reason: collision with root package name */
    public final InterfaceC0111b f419v;

    /* renamed from: w, reason: collision with root package name */
    public final List f420w;

    /* renamed from: x, reason: collision with root package name */
    public String f421x;

    /* renamed from: q, reason: collision with root package name */
    public AbstractC0037q f414q = AbstractC0037q.failure();

    /* renamed from: y, reason: collision with root package name */
    public final M1.g f422y = M1.g.create();

    /* renamed from: z, reason: collision with root package name */
    public final M1.g f423z = M1.g.create();

    public N(M m7) {
        this.f407b = m7.f396a;
        this.f413p = m7.f398c;
        this.f416s = m7.f397b;
        K1.E e3 = m7.f401f;
        this.f411m = e3;
        this.f408e = e3.f1594a;
        this.f409f = m7.f402g;
        this.f410j = m7.f404i;
        this.f412n = null;
        this.f415r = m7.f399d;
        WorkDatabase workDatabase = m7.f400e;
        this.f417t = workDatabase;
        this.f418u = workDatabase.workSpecDao();
        this.f419v = workDatabase.dependencyDao();
        this.f420w = m7.f403h;
    }

    public final void a(AbstractC0037q abstractC0037q) {
        boolean z6 = abstractC0037q instanceof C0036p;
        K1.E e3 = this.f411m;
        String str = f405B;
        if (!z6) {
            if (abstractC0037q instanceof C0035o) {
                B1.t.get().info(str, "Worker result RETRY for " + this.f421x);
                d();
                return;
            }
            B1.t.get().info(str, "Worker result FAILURE for " + this.f421x);
            if (e3.isPeriodic()) {
                e();
                return;
            } else {
                h();
                return;
            }
        }
        B1.t.get().info(str, "Worker result SUCCESS for " + this.f421x);
        if (e3.isPeriodic()) {
            e();
            return;
        }
        InterfaceC0111b interfaceC0111b = this.f419v;
        String str2 = this.f408e;
        K1.F f3 = this.f418u;
        WorkDatabase workDatabase = this.f417t;
        workDatabase.beginTransaction();
        try {
            ((U) f3).setState(WorkInfo$State.f8270f, str2);
            ((U) f3).setOutput(str2, ((C0036p) this.f414q).getOutputData());
            long currentTimeMillis = System.currentTimeMillis();
            for (String str3 : ((C0113d) interfaceC0111b).getDependentWorkIds(str2)) {
                if (((U) f3).getState(str3) == WorkInfo$State.f8272m && ((C0113d) interfaceC0111b).hasCompletedAllPrerequisites(str3)) {
                    B1.t.get().info(str, "Setting status to enqueued for " + str3);
                    ((U) f3).setState(WorkInfo$State.f8268b, str3);
                    ((U) f3).setLastEnqueuedTime(str3, currentTimeMillis);
                }
            }
            workDatabase.setTransactionSuccessful();
            workDatabase.endTransaction();
            f(false);
        } catch (Throwable th) {
            workDatabase.endTransaction();
            f(false);
            throw th;
        }
    }

    public final void b(String str) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(str);
        while (!linkedList.isEmpty()) {
            String str2 = (String) linkedList.remove();
            K1.F f3 = this.f418u;
            if (((U) f3).getState(str2) != WorkInfo$State.f8273n) {
                ((U) f3).setState(WorkInfo$State.f8271j, str2);
            }
            linkedList.addAll(((C0113d) this.f419v).getDependentWorkIds(str2));
        }
    }

    public final void c() {
        boolean i2 = i();
        WorkDatabase workDatabase = this.f417t;
        String str = this.f408e;
        if (!i2) {
            workDatabase.beginTransaction();
            try {
                WorkInfo$State state = ((U) this.f418u).getState(str);
                ((K1.B) workDatabase.workProgressDao()).delete(str);
                if (state == null) {
                    f(false);
                } else if (state == WorkInfo$State.f8269e) {
                    a(this.f414q);
                } else if (!state.isFinished()) {
                    d();
                }
                workDatabase.setTransactionSuccessful();
                workDatabase.endTransaction();
            } catch (Throwable th) {
                workDatabase.endTransaction();
                throw th;
            }
        }
        List list = this.f409f;
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((t) it.next()).cancel(str);
            }
            u.schedule(this.f415r, workDatabase, list);
        }
    }

    public final void d() {
        String str = this.f408e;
        K1.F f3 = this.f418u;
        WorkDatabase workDatabase = this.f417t;
        workDatabase.beginTransaction();
        try {
            ((U) f3).setState(WorkInfo$State.f8268b, str);
            ((U) f3).setLastEnqueuedTime(str, System.currentTimeMillis());
            ((U) f3).markWorkSpecScheduled(str, -1L);
            workDatabase.setTransactionSuccessful();
        } finally {
            workDatabase.endTransaction();
            f(true);
        }
    }

    public final void e() {
        String str = this.f408e;
        K1.F f3 = this.f418u;
        WorkDatabase workDatabase = this.f417t;
        workDatabase.beginTransaction();
        try {
            ((U) f3).setLastEnqueuedTime(str, System.currentTimeMillis());
            ((U) f3).setState(WorkInfo$State.f8268b, str);
            ((U) f3).resetWorkSpecRunAttemptCount(str);
            ((U) f3).incrementPeriodCount(str);
            ((U) f3).markWorkSpecScheduled(str, -1L);
            workDatabase.setTransactionSuccessful();
        } finally {
            workDatabase.endTransaction();
            f(false);
        }
    }

    public final void f(boolean z6) {
        J1.a aVar = this.f416s;
        K1.F f3 = this.f418u;
        WorkDatabase workDatabase = this.f417t;
        workDatabase.beginTransaction();
        try {
            if (!((U) workDatabase.workSpecDao()).hasUnfinishedWork()) {
                L1.p.setComponentEnabled(this.f407b, RescheduleReceiver.class, false);
            }
            String str = this.f408e;
            if (z6) {
                ((U) f3).setState(WorkInfo$State.f8268b, str);
                ((U) f3).markWorkSpecScheduled(str, -1L);
            }
            if (this.f411m != null && this.f412n != null && ((r) aVar).isEnqueuedInForeground(str)) {
                ((r) aVar).stopForeground(str);
            }
            workDatabase.setTransactionSuccessful();
            workDatabase.endTransaction();
            this.f422y.set(Boolean.valueOf(z6));
        } catch (Throwable th) {
            workDatabase.endTransaction();
            throw th;
        }
    }

    public final void g() {
        U u6 = (U) this.f418u;
        String str = this.f408e;
        WorkInfo$State state = u6.getState(str);
        WorkInfo$State workInfo$State = WorkInfo$State.f8269e;
        String str2 = f405B;
        if (state == workInfo$State) {
            B1.t.get().debug(str2, "Status for " + str + " is RUNNING; not doing any work and rescheduling for later execution");
            f(true);
            return;
        }
        B1.t.get().debug(str2, "Status for " + str + " is " + state + " ; not doing any work");
        f(false);
    }

    public V3.F getFuture() {
        return this.f422y;
    }

    public K1.r getWorkGenerationalId() {
        return V.generationalId(this.f411m);
    }

    public K1.E getWorkSpec() {
        return this.f411m;
    }

    public final void h() {
        String str = this.f408e;
        WorkDatabase workDatabase = this.f417t;
        workDatabase.beginTransaction();
        try {
            b(str);
            ((U) this.f418u).setOutput(str, ((C0034n) this.f414q).getOutputData());
            workDatabase.setTransactionSuccessful();
        } finally {
            workDatabase.endTransaction();
            f(false);
        }
    }

    public final boolean i() {
        if (!this.f406A) {
            return false;
        }
        B1.t.get().debug(f405B, "Work interrupted for " + this.f421x);
        if (((U) this.f418u).getState(this.f408e) == null) {
            f(false);
            return true;
        }
        f(!r0.isFinished());
        return true;
    }

    public void interrupt() {
        this.f406A = true;
        i();
        this.f423z.cancel(true);
        if (this.f412n != null && this.f423z.isCancelled()) {
            this.f412n.stop();
            return;
        }
        B1.t.get().debug(f405B, "WorkSpec " + this.f411m + " is already done. Not interrupting.");
    }

    @Override // java.lang.Runnable
    public void run() {
        C0028h merge;
        boolean z6;
        StringBuilder sb = new StringBuilder("Work [ id=");
        String str = this.f408e;
        sb.append(str);
        sb.append(", tags={ ");
        boolean z7 = true;
        for (String str2 : this.f420w) {
            if (z7) {
                z7 = false;
            } else {
                sb.append(", ");
            }
            sb.append(str2);
        }
        sb.append(" } ]");
        this.f421x = sb.toString();
        K1.E e3 = this.f411m;
        if (i()) {
            return;
        }
        WorkDatabase workDatabase = this.f417t;
        workDatabase.beginTransaction();
        try {
            WorkInfo$State workInfo$State = e3.f1595b;
            WorkInfo$State workInfo$State2 = WorkInfo$State.f8268b;
            String str3 = e3.f1596c;
            String str4 = f405B;
            if (workInfo$State != workInfo$State2) {
                g();
                workDatabase.setTransactionSuccessful();
                B1.t.get().debug(str4, str3 + " is not in ENQUEUED state. Nothing more to do");
                return;
            }
            if ((e3.isPeriodic() || e3.isBackedOff()) && System.currentTimeMillis() < e3.calculateNextRunTime()) {
                B1.t.get().debug(str4, "Delaying execution for " + str3 + " because it is being executed before schedule.");
                f(true);
                workDatabase.setTransactionSuccessful();
                return;
            }
            workDatabase.setTransactionSuccessful();
            workDatabase.endTransaction();
            boolean isPeriodic = e3.isPeriodic();
            K1.F f3 = this.f418u;
            C0023c c0023c = this.f415r;
            if (isPeriodic) {
                merge = e3.f1598e;
            } else {
                AbstractC0031k createInputMergerWithDefaultFallback = c0023c.getInputMergerFactory().createInputMergerWithDefaultFallback(e3.f1597d);
                if (createInputMergerWithDefaultFallback == null) {
                    B1.t.get().error(str4, "Could not create Input Merger " + e3.f1597d);
                    h();
                    return;
                }
                ArrayList arrayList = new ArrayList();
                arrayList.add(e3.f1598e);
                arrayList.addAll(((U) f3).getInputsFromPrerequisites(str));
                merge = createInputMergerWithDefaultFallback.merge(arrayList);
            }
            C0028h c0028h = merge;
            UUID fromString = UUID.fromString(str);
            int generation = e3.getGeneration();
            Executor executor = c0023c.getExecutor();
            P workerFactory = c0023c.getWorkerFactory();
            N1.c cVar = this.f413p;
            WorkerParameters workerParameters = new WorkerParameters(fromString, c0028h, this.f420w, this.f410j, e3.f1604k, generation, executor, this.f413p, workerFactory, new L1.D(workDatabase, cVar), new L1.C(workDatabase, this.f416s, cVar));
            if (this.f412n == null) {
                this.f412n = c0023c.getWorkerFactory().createWorkerWithDefaultFallback(this.f407b, str3, workerParameters);
            }
            B1.r rVar = this.f412n;
            if (rVar == null) {
                B1.t.get().error(str4, "Could not create Worker " + str3);
                h();
                return;
            }
            if (rVar.isUsed()) {
                B1.t.get().error(str4, "Received an already-used Worker " + str3 + "; Worker Factory should return new instances");
                h();
                return;
            }
            this.f412n.setUsed();
            workDatabase.beginTransaction();
            try {
                if (((U) f3).getState(str) == workInfo$State2) {
                    ((U) f3).setState(WorkInfo$State.f8269e, str);
                    ((U) f3).incrementWorkSpecRunAttemptCount(str);
                    z6 = true;
                } else {
                    z6 = false;
                }
                workDatabase.setTransactionSuccessful();
                if (!z6) {
                    g();
                    return;
                }
                if (i()) {
                    return;
                }
                L1.A a7 = new L1.A(this.f407b, this.f411m, this.f412n, workerParameters.getForegroundUpdater(), this.f413p);
                N1.e eVar = (N1.e) cVar;
                eVar.getMainThreadExecutor().execute(a7);
                V3.F future = a7.getFuture();
                A4.n nVar = new A4.n(8, this, future);
                L1.w wVar = new L1.w();
                M1.g gVar = this.f423z;
                gVar.addListener(nVar, wVar);
                future.addListener(new K(this, future), eVar.getMainThreadExecutor());
                gVar.addListener(new L(this, this.f421x), eVar.m1getSerialTaskExecutor());
            } catch (Throwable th) {
                throw th;
            }
        } finally {
            workDatabase.endTransaction();
        }
    }
}
