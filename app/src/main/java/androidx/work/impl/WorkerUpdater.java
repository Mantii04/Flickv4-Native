package androidx.work.impl;

import A.i;
import B1.B;
import B1.C0023c;
import B1.L;
import C1.G;
import C1.o;
import C1.r;
import C1.t;
import C1.u;
import C1.x;
import H5.a;
import H5.l;
import K1.E;
import K1.U;
import K1.Y;
import K1.b0;
import L1.AbstractC0148f;
import L1.RunnableC0147e;
import N1.e;
import androidx.work.ExistingWorkPolicy;
import androidx.work.WorkInfo$State;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkerUpdater;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.jvm.internal.j;
import u5.C1711j;

/* loaded from: classes.dex */
public abstract class WorkerUpdater {
    public static final void a(r rVar, final WorkDatabase workDatabase, C0023c c0023c, final List list, final E e3, final Set set) {
        final String str = e3.f1594a;
        final E workSpec = ((U) workDatabase.workSpecDao()).getWorkSpec(str);
        if (workSpec == null) {
            throw new IllegalArgumentException(i.l("Worker with ", str, " doesn't exist"));
        }
        if (workSpec.f1595b.isFinished()) {
            return;
        }
        if (workSpec.isPeriodic() ^ e3.isPeriodic()) {
            StringBuilder sb = new StringBuilder("Can't update ");
            WorkerUpdater$updateWorkImpl$type$1 workerUpdater$updateWorkImpl$type$1 = new l() { // from class: androidx.work.impl.WorkerUpdater$updateWorkImpl$type$1
                @Override // H5.l
                public final String invoke(E spec) {
                    j.checkNotNullParameter(spec, "spec");
                    return spec.isPeriodic() ? "Periodic" : "OneTime";
                }
            };
            sb.append((String) workerUpdater$updateWorkImpl$type$1.invoke((Object) workSpec));
            sb.append(" Worker to ");
            throw new UnsupportedOperationException(i.o(sb, (String) workerUpdater$updateWorkImpl$type$1.invoke((Object) e3), " Worker. Update operation must preserve worker's type."));
        }
        final boolean isEnqueued = rVar.isEnqueued(str);
        if (!isEnqueued) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((t) it.next()).cancel(str);
            }
        }
        workDatabase.runInTransaction(new Runnable() { // from class: C1.J
            @Override // java.lang.Runnable
            public final void run() {
                WorkDatabase workDatabase2 = WorkDatabase.this;
                kotlin.jvm.internal.j.checkNotNullParameter(workDatabase2, "$workDatabase");
                K1.E newWorkSpec = e3;
                kotlin.jvm.internal.j.checkNotNullParameter(newWorkSpec, "$newWorkSpec");
                K1.E oldWorkSpec = workSpec;
                kotlin.jvm.internal.j.checkNotNullParameter(oldWorkSpec, "$oldWorkSpec");
                List schedulers = list;
                kotlin.jvm.internal.j.checkNotNullParameter(schedulers, "$schedulers");
                String workSpecId = str;
                kotlin.jvm.internal.j.checkNotNullParameter(workSpecId, "$workSpecId");
                Set<String> tags = set;
                kotlin.jvm.internal.j.checkNotNullParameter(tags, "$tags");
                K1.F workSpecDao = workDatabase2.workSpecDao();
                Y workTagDao = workDatabase2.workTagDao();
                K1.E wrapInConstraintTrackingWorkerIfNeeded = AbstractC0148f.wrapInConstraintTrackingWorkerIfNeeded(schedulers, K1.E.copy$default(newWorkSpec, null, oldWorkSpec.f1595b, null, null, null, null, 0L, 0L, 0L, null, oldWorkSpec.f1604k, null, 0L, oldWorkSpec.f1607n, 0L, 0L, false, null, 0, oldWorkSpec.getGeneration() + 1, 515069, null));
                U u6 = (U) workSpecDao;
                u6.updateWorkSpec(wrapInConstraintTrackingWorkerIfNeeded);
                b0 b0Var = (b0) workTagDao;
                b0Var.deleteByWorkSpecId(workSpecId);
                b0Var.insertTags(workSpecId, tags);
                if (isEnqueued) {
                    return;
                }
                u6.markWorkSpecScheduled(workSpecId, -1L);
                ((K1.B) workDatabase2.workProgressDao()).delete(workSpecId);
            }
        });
        if (isEnqueued) {
            return;
        }
        u.schedule(c0023c, workDatabase, list);
    }

    public static final B enqueueUniquelyNamedPeriodic(final G g7, final String name, final L workRequest) {
        j.checkNotNullParameter(g7, "<this>");
        j.checkNotNullParameter(name, "name");
        j.checkNotNullParameter(workRequest, "workRequest");
        final o oVar = new o();
        final a aVar = new a() { // from class: androidx.work.impl.WorkerUpdater$enqueueUniquelyNamedPeriodic$enqueueNew$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // H5.a
            public /* bridge */ /* synthetic */ Object invoke() {
                m64invoke();
                return C1711j.f20329a;
            }

            /* renamed from: invoke, reason: collision with other method in class */
            public final void m64invoke() {
                List listOf = v5.o.listOf(L.this);
                new RunnableC0147e(new x(g7, name, ExistingWorkPolicy.f8254e, listOf), oVar).run();
            }
        };
        ((L1.t) ((e) g7.getWorkTaskExecutor()).m1getSerialTaskExecutor()).execute(new Runnable() { // from class: C1.I
            @Override // java.lang.Runnable
            public final void run() {
                G this_enqueueUniquelyNamedPeriodic = G.this;
                kotlin.jvm.internal.j.checkNotNullParameter(this_enqueueUniquelyNamedPeriodic, "$this_enqueueUniquelyNamedPeriodic");
                String name2 = name;
                kotlin.jvm.internal.j.checkNotNullParameter(name2, "$name");
                o operation = oVar;
                kotlin.jvm.internal.j.checkNotNullParameter(operation, "$operation");
                H5.a enqueueNew = aVar;
                kotlin.jvm.internal.j.checkNotNullParameter(enqueueNew, "$enqueueNew");
                B1.L workRequest2 = workRequest;
                kotlin.jvm.internal.j.checkNotNullParameter(workRequest2, "$workRequest");
                U u6 = (U) this_enqueueUniquelyNamedPeriodic.getWorkDatabase().workSpecDao();
                List<K1.D> workSpecIdAndStatesForName = u6.getWorkSpecIdAndStatesForName(name2);
                if (workSpecIdAndStatesForName.size() > 1) {
                    operation.markState(new B1.x(new UnsupportedOperationException("Can't apply UPDATE policy to the chains of work.")));
                    return;
                }
                K1.D d7 = (K1.D) v5.u.firstOrNull((List) workSpecIdAndStatesForName);
                if (d7 == null) {
                    enqueueNew.invoke();
                    return;
                }
                String str = d7.f1591a;
                K1.E workSpec = u6.getWorkSpec(str);
                if (workSpec == null) {
                    operation.markState(new B1.x(new IllegalStateException(b.c.m("WorkSpec with ", str, ", that matches a name \"", name2, "\", wasn't found"))));
                    return;
                }
                if (!workSpec.isPeriodic()) {
                    operation.markState(new B1.x(new UnsupportedOperationException("Can't update OneTimeWorker to Periodic Worker. Update operation must preserve worker's type.")));
                    return;
                }
                if (d7.f1592b == WorkInfo$State.f8273n) {
                    u6.delete(str);
                    enqueueNew.invoke();
                    return;
                }
                K1.E copy$default = K1.E.copy$default(workRequest2.getWorkSpec(), d7.f1591a, null, null, null, null, null, 0L, 0L, 0L, null, 0, null, 0L, 0L, 0L, 0L, false, null, 0, 0, 1048574, null);
                try {
                    r processor = this_enqueueUniquelyNamedPeriodic.getProcessor();
                    kotlin.jvm.internal.j.checkNotNullExpressionValue(processor, "processor");
                    WorkDatabase workDatabase = this_enqueueUniquelyNamedPeriodic.getWorkDatabase();
                    kotlin.jvm.internal.j.checkNotNullExpressionValue(workDatabase, "workDatabase");
                    C0023c configuration = this_enqueueUniquelyNamedPeriodic.getConfiguration();
                    kotlin.jvm.internal.j.checkNotNullExpressionValue(configuration, "configuration");
                    List<t> schedulers = this_enqueueUniquelyNamedPeriodic.getSchedulers();
                    kotlin.jvm.internal.j.checkNotNullExpressionValue(schedulers, "schedulers");
                    WorkerUpdater.a(processor, workDatabase, configuration, schedulers, copy$default, workRequest2.getTags());
                    operation.markState(B1.B.f143a);
                } catch (Throwable th) {
                    operation.markState(new B1.x(th));
                }
            }
        });
        return oVar;
    }
}
