package L1;

import B1.C0026f;
import B1.C0027g;
import B1.C0028h;
import android.os.Build;
import androidx.work.impl.workers.ConstraintTrackingWorker;
import java.util.List;

/* renamed from: L1.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0148f {
    public static final K1.E tryDelegateConstrainedWorkSpec(K1.E workSpec) {
        kotlin.jvm.internal.j.checkNotNullParameter(workSpec, "workSpec");
        C0026f c0026f = workSpec.f1603j;
        String name = ConstraintTrackingWorker.class.getName();
        String str = workSpec.f1596c;
        if (kotlin.jvm.internal.j.areEqual(str, name) || !(c0026f.requiresBatteryNotLow() || c0026f.requiresStorageNotLow())) {
            return workSpec;
        }
        C0028h build = new C0027g().putAll(workSpec.f1598e).putString("androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME", str).build();
        kotlin.jvm.internal.j.checkNotNullExpressionValue(build, "Builder().putAll(workSpe…ame)\n            .build()");
        String name2 = ConstraintTrackingWorker.class.getName();
        kotlin.jvm.internal.j.checkNotNullExpressionValue(name2, "name");
        return K1.E.copy$default(workSpec, null, null, name2, null, build, null, 0L, 0L, 0L, null, 0, null, 0L, 0L, 0L, 0L, false, null, 0, 0, 1048555, null);
    }

    public static final K1.E wrapInConstraintTrackingWorkerIfNeeded(List<? extends C1.t> schedulers, K1.E workSpec) {
        kotlin.jvm.internal.j.checkNotNullParameter(schedulers, "schedulers");
        kotlin.jvm.internal.j.checkNotNullParameter(workSpec, "workSpec");
        return Build.VERSION.SDK_INT < 26 ? tryDelegateConstrainedWorkSpec(workSpec) : workSpec;
    }
}
