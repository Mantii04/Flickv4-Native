package B1;

import androidx.work.OverwritingInputMerger;

/* loaded from: classes.dex */
public final class u extends J {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u(Class<? extends r> workerClass) {
        super(workerClass);
        kotlin.jvm.internal.j.checkNotNullParameter(workerClass, "workerClass");
        getWorkSpec$work_runtime_release().f1597d = OverwritingInputMerger.class.getName();
    }

    @Override // B1.J
    public w buildInternal$work_runtime_release() {
        if (getBackoffCriteriaSet$work_runtime_release() && getWorkSpec$work_runtime_release().f1603j.requiresDeviceIdle()) {
            throw new IllegalArgumentException("Cannot set backoff criteria on an idle mode job");
        }
        return new w(this);
    }

    @Override // B1.J
    public u getThisObject$work_runtime_release() {
        return this;
    }
}
