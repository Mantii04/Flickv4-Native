package B1;

import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class C extends J {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C(Class<? extends r> workerClass, long j7, TimeUnit repeatIntervalTimeUnit) {
        super(workerClass);
        kotlin.jvm.internal.j.checkNotNullParameter(workerClass, "workerClass");
        kotlin.jvm.internal.j.checkNotNullParameter(repeatIntervalTimeUnit, "repeatIntervalTimeUnit");
        getWorkSpec$work_runtime_release().setPeriodic(repeatIntervalTimeUnit.toMillis(j7));
    }

    @Override // B1.J
    public E buildInternal$work_runtime_release() {
        if (getBackoffCriteriaSet$work_runtime_release() && getWorkSpec$work_runtime_release().f1603j.requiresDeviceIdle()) {
            throw new IllegalArgumentException("Cannot set backoff criteria on an idle mode job");
        }
        if (getWorkSpec$work_runtime_release().f1610q) {
            throw new IllegalArgumentException("PeriodicWorkRequests cannot be expedited");
        }
        return new E(this);
    }

    @Override // B1.J
    public C getThisObject$work_runtime_release() {
        return this;
    }
}
