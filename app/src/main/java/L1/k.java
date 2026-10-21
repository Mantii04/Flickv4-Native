package L1;

import K1.C0114e;
import K1.C0117h;
import androidx.work.impl.WorkDatabase;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class k {

    /* renamed from: a, reason: collision with root package name */
    public final WorkDatabase f1880a;

    public k(WorkDatabase workDatabase) {
        kotlin.jvm.internal.j.checkNotNullParameter(workDatabase, "workDatabase");
        this.f1880a = workDatabase;
    }

    public final int nextAlarmManagerId() {
        Object runInTransaction = this.f1880a.runInTransaction(new i(this, 0));
        kotlin.jvm.internal.j.checkNotNullExpressionValue(runInTransaction, "workDatabase.runInTransa…ANAGER_ID_KEY)\n        })");
        return ((Number) runInTransaction).intValue();
    }

    public final int nextJobSchedulerIdWithRange(final int i2, final int i7) {
        Object runInTransaction = this.f1880a.runInTransaction((Callable<Object>) new Callable() { // from class: L1.j
            @Override // java.util.concurrent.Callable
            public final Object call() {
                k this$0 = k.this;
                kotlin.jvm.internal.j.checkNotNullParameter(this$0, "this$0");
                int access$nextId = l.access$nextId(this$0.f1880a, "next_job_scheduler_id");
                int i8 = i2;
                if (i8 > access$nextId || access$nextId > i7) {
                    ((C0117h) this$0.f1880a.preferenceDao()).insertPreference(new C0114e("next_job_scheduler_id", Long.valueOf(i8 + 1)));
                    access$nextId = i8;
                }
                return Integer.valueOf(access$nextId);
            }
        });
        kotlin.jvm.internal.j.checkNotNullExpressionValue(runInTransaction, "workDatabase.runInTransa…            id\n        })");
        return ((Number) runInTransaction).intValue();
    }
}
