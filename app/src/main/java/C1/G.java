package C1;

import B1.C0023c;
import B1.Q;
import K1.U;
import L1.AbstractRunnableC0146d;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.os.Build;
import androidx.work.ExistingPeriodicWorkPolicy;
import androidx.work.ExistingWorkPolicy;
import androidx.work.R;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkerUpdater;
import androidx.work.impl.background.systemjob.SystemJobService;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.UUID;

/* loaded from: classes.dex */
public final class G extends B1.I {

    /* renamed from: k, reason: collision with root package name */
    public static G f366k;

    /* renamed from: l, reason: collision with root package name */
    public static G f367l;

    /* renamed from: m, reason: collision with root package name */
    public static final Object f368m;

    /* renamed from: a, reason: collision with root package name */
    public final Context f369a;

    /* renamed from: b, reason: collision with root package name */
    public final C0023c f370b;

    /* renamed from: c, reason: collision with root package name */
    public final WorkDatabase f371c;

    /* renamed from: d, reason: collision with root package name */
    public final N1.c f372d;

    /* renamed from: e, reason: collision with root package name */
    public final List f373e;

    /* renamed from: f, reason: collision with root package name */
    public final r f374f;

    /* renamed from: g, reason: collision with root package name */
    public final L1.q f375g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f376h;

    /* renamed from: i, reason: collision with root package name */
    public BroadcastReceiver.PendingResult f377i;

    /* renamed from: j, reason: collision with root package name */
    public final I1.p f378j;

    static {
        B1.t.tagWithPrefix("WorkManagerImpl");
        f366k = null;
        f367l = null;
        f368m = new Object();
    }

    public G(Context context, C0023c c0023c, N1.c cVar) {
        this(context, c0023c, cVar, context.getResources().getBoolean(R.bool.workmanager_test_configuration));
    }

    @Deprecated
    public static G getInstance() {
        synchronized (f368m) {
            try {
                G g7 = f366k;
                if (g7 != null) {
                    return g7;
                }
                return f367l;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0018, code lost:
    
        r4 = r4.getApplicationContext();
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x001e, code lost:
    
        if (C1.G.f367l != null) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0020, code lost:
    
        C1.G.f367l = new C1.G(r4, r5, new N1.e(r5.getTaskExecutor()));
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0030, code lost:
    
        C1.G.f366k = C1.G.f367l;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void initialize(android.content.Context r4, B1.C0023c r5) {
        /*
            java.lang.Object r0 = C1.G.f368m
            monitor-enter(r0)
            C1.G r1 = C1.G.f366k     // Catch: java.lang.Throwable -> L14
            if (r1 == 0) goto L16
            C1.G r2 = C1.G.f367l     // Catch: java.lang.Throwable -> L14
            if (r2 != 0) goto Lc
            goto L16
        Lc:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L14
            java.lang.String r5 = "WorkManager is already initialized.  Did you try to initialize it manually without disabling WorkManagerInitializer? See WorkManager#initialize(Context, Configuration) or the class level Javadoc for more information."
            r4.<init>(r5)     // Catch: java.lang.Throwable -> L14
            throw r4     // Catch: java.lang.Throwable -> L14
        L14:
            r4 = move-exception
            goto L36
        L16:
            if (r1 != 0) goto L34
            android.content.Context r4 = r4.getApplicationContext()     // Catch: java.lang.Throwable -> L14
            C1.G r1 = C1.G.f367l     // Catch: java.lang.Throwable -> L14
            if (r1 != 0) goto L30
            C1.G r1 = new C1.G     // Catch: java.lang.Throwable -> L14
            N1.e r2 = new N1.e     // Catch: java.lang.Throwable -> L14
            java.util.concurrent.Executor r3 = r5.getTaskExecutor()     // Catch: java.lang.Throwable -> L14
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L14
            r1.<init>(r4, r5, r2)     // Catch: java.lang.Throwable -> L14
            C1.G.f367l = r1     // Catch: java.lang.Throwable -> L14
        L30:
            C1.G r4 = C1.G.f367l     // Catch: java.lang.Throwable -> L14
            C1.G.f366k = r4     // Catch: java.lang.Throwable -> L14
        L34:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L14
            return
        L36:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L14
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: C1.G.initialize(android.content.Context, B1.c):void");
    }

    @Override // B1.I
    public B1.B cancelUniqueWork(String str) {
        AbstractRunnableC0146d forName = AbstractRunnableC0146d.forName(str, this, true);
        N1.e eVar = (N1.e) this.f372d;
        eVar.getClass();
        N1.b.a(eVar, forName);
        return forName.getOperation();
    }

    public B1.B cancelWorkById(UUID uuid) {
        AbstractRunnableC0146d forId = AbstractRunnableC0146d.forId(uuid, this);
        N1.e eVar = (N1.e) this.f372d;
        eVar.getClass();
        N1.b.a(eVar, forId);
        return forId.getOperation();
    }

    public List<t> createSchedulers(Context context, C0023c c0023c, I1.p pVar) {
        String str = u.f458a;
        F1.b bVar = new F1.b(context, this);
        L1.p.setComponentEnabled(context, SystemJobService.class, true);
        B1.t.get().debug(u.f458a, "Created SystemJobScheduler and enabled SystemJobService");
        return Arrays.asList(bVar, new D1.c(context, c0023c, pVar, this));
    }

    public x createWorkContinuationForUniquePeriodicWork(String str, ExistingPeriodicWorkPolicy existingPeriodicWorkPolicy, B1.E e3) {
        return new x(this, str, existingPeriodicWorkPolicy == ExistingPeriodicWorkPolicy.f8250b ? ExistingWorkPolicy.f8254e : ExistingWorkPolicy.f8253b, Collections.singletonList(e3));
    }

    @Override // B1.I
    public B1.B enqueue(List<? extends B1.L> list) {
        if (list.isEmpty()) {
            throw new IllegalArgumentException("enqueue needs at least one WorkRequest.");
        }
        return new x(this, list).enqueue();
    }

    @Override // B1.I
    public B1.B enqueueUniquePeriodicWork(String str, ExistingPeriodicWorkPolicy existingPeriodicWorkPolicy, B1.E e3) {
        return existingPeriodicWorkPolicy == ExistingPeriodicWorkPolicy.f8251e ? WorkerUpdater.enqueueUniquelyNamedPeriodic(this, str, e3) : createWorkContinuationForUniquePeriodicWork(str, existingPeriodicWorkPolicy, e3).enqueue();
    }

    @Override // B1.I
    public B1.B enqueueUniqueWork(String str, ExistingWorkPolicy existingWorkPolicy, List<B1.w> list) {
        return new x(this, str, existingWorkPolicy, list).enqueue();
    }

    public Context getApplicationContext() {
        return this.f369a;
    }

    public C0023c getConfiguration() {
        return this.f370b;
    }

    public L1.q getPreferenceUtils() {
        return this.f375g;
    }

    public r getProcessor() {
        return this.f374f;
    }

    public List<t> getSchedulers() {
        return this.f373e;
    }

    public I1.p getTrackers() {
        return this.f378j;
    }

    public WorkDatabase getWorkDatabase() {
        return this.f371c;
    }

    public N1.c getWorkTaskExecutor() {
        return this.f372d;
    }

    public void onForceStopRunnableCompleted() {
        synchronized (f368m) {
            try {
                this.f376h = true;
                BroadcastReceiver.PendingResult pendingResult = this.f377i;
                if (pendingResult != null) {
                    pendingResult.finish();
                    this.f377i = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void rescheduleEligibleWork() {
        F1.b.cancelAll(getApplicationContext());
        ((U) getWorkDatabase().workSpecDao()).resetScheduledState();
        u.schedule(getConfiguration(), getWorkDatabase(), getSchedulers());
    }

    public void setReschedulePendingResult(BroadcastReceiver.PendingResult pendingResult) {
        synchronized (f368m) {
            try {
                this.f377i = pendingResult;
                if (this.f376h) {
                    pendingResult.finish();
                    this.f377i = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void startWork(v vVar) {
        startWork(vVar, null);
    }

    public void stopForegroundWork(K1.r rVar) {
        N1.c cVar = this.f372d;
        L1.v vVar = new L1.v(this, new v(rVar), true);
        N1.e eVar = (N1.e) cVar;
        eVar.getClass();
        N1.b.a(eVar, vVar);
    }

    public void stopWork(v vVar) {
        N1.c cVar = this.f372d;
        L1.v vVar2 = new L1.v(this, vVar, false);
        N1.e eVar = (N1.e) cVar;
        eVar.getClass();
        N1.b.a(eVar, vVar2);
    }

    public void startWork(v vVar, Q q6) {
        N1.c cVar = this.f372d;
        L1.u uVar = new L1.u(this, vVar, q6);
        N1.e eVar = (N1.e) cVar;
        eVar.getClass();
        N1.b.a(eVar, uVar);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public G(android.content.Context r3, B1.C0023c r4, N1.c r5, boolean r6) {
        /*
            r2 = this;
            android.content.Context r0 = r3.getApplicationContext()
            N1.e r5 = (N1.e) r5
            N1.a r1 = r5.m1getSerialTaskExecutor()
            androidx.work.impl.WorkDatabase r6 = androidx.work.impl.WorkDatabase.create(r0, r1, r6)
            r2.<init>(r3, r4, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: C1.G.<init>(android.content.Context, B1.c, N1.c, boolean):void");
    }

    public static G getInstance(Context context) {
        G g7;
        synchronized (f368m) {
            try {
                g7 = getInstance();
                if (g7 == null) {
                    context.getApplicationContext();
                    throw new IllegalStateException("WorkManager is not initialized properly.  You have explicitly disabled WorkManagerInitializer in your manifest, have not manually called WorkManager#initialize at this point, and your Application does not implement Configuration.Provider.");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return g7;
    }

    public G(Context context, C0023c c0023c, N1.c cVar, WorkDatabase workDatabase) {
        Context applicationContext = context.getApplicationContext();
        B1.t.setLogger(new B1.s(c0023c.getMinimumLoggingLevel()));
        I1.p pVar = new I1.p(applicationContext, cVar);
        this.f378j = pVar;
        List<t> createSchedulers = createSchedulers(applicationContext, c0023c, pVar);
        r rVar = new r(context, c0023c, cVar, workDatabase, createSchedulers);
        Context applicationContext2 = context.getApplicationContext();
        this.f369a = applicationContext2;
        this.f370b = c0023c;
        this.f372d = cVar;
        this.f371c = workDatabase;
        this.f373e = createSchedulers;
        this.f374f = rVar;
        this.f375g = new L1.q(workDatabase);
        this.f376h = false;
        if (Build.VERSION.SDK_INT >= 24 && F.a(applicationContext2)) {
            throw new IllegalStateException("Cannot initialize WorkManager in direct boot mode");
        }
        N1.c cVar2 = this.f372d;
        L1.h hVar = new L1.h(applicationContext2, this);
        N1.e eVar = (N1.e) cVar2;
        eVar.getClass();
        N1.b.a(eVar, hVar);
    }
}
