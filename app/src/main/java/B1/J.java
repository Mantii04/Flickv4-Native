package B1;

import android.os.Build;
import androidx.work.BackoffPolicy;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import v5.AbstractC1764B;

/* loaded from: classes.dex */
public abstract class J {

    /* renamed from: a, reason: collision with root package name */
    public boolean f145a;

    /* renamed from: b, reason: collision with root package name */
    public UUID f146b;

    /* renamed from: c, reason: collision with root package name */
    public K1.E f147c;

    /* renamed from: d, reason: collision with root package name */
    public final Set f148d;

    public J(Class<? extends r> workerClass) {
        kotlin.jvm.internal.j.checkNotNullParameter(workerClass, "workerClass");
        UUID randomUUID = UUID.randomUUID();
        kotlin.jvm.internal.j.checkNotNullExpressionValue(randomUUID, "randomUUID()");
        this.f146b = randomUUID;
        String uuid = this.f146b.toString();
        kotlin.jvm.internal.j.checkNotNullExpressionValue(uuid, "id.toString()");
        String name = workerClass.getName();
        kotlin.jvm.internal.j.checkNotNullExpressionValue(name, "workerClass.name");
        this.f147c = new K1.E(uuid, name);
        String name2 = workerClass.getName();
        kotlin.jvm.internal.j.checkNotNullExpressionValue(name2, "workerClass.name");
        this.f148d = AbstractC1764B.mutableSetOf(name2);
    }

    public final L build() {
        L buildInternal$work_runtime_release = buildInternal$work_runtime_release();
        C0026f c0026f = this.f147c.f1603j;
        boolean z6 = (Build.VERSION.SDK_INT >= 24 && c0026f.hasContentUriTriggers()) || c0026f.requiresBatteryNotLow() || c0026f.requiresCharging() || c0026f.requiresDeviceIdle();
        K1.E e3 = this.f147c;
        if (e3.f1610q) {
            if (z6) {
                throw new IllegalArgumentException("Expedited jobs only support network and storage constraints");
            }
            if (e3.f1600g > 0) {
                throw new IllegalArgumentException("Expedited jobs cannot be delayed");
            }
        }
        UUID randomUUID = UUID.randomUUID();
        kotlin.jvm.internal.j.checkNotNullExpressionValue(randomUUID, "randomUUID()");
        setId(randomUUID);
        return buildInternal$work_runtime_release;
    }

    public abstract L buildInternal$work_runtime_release();

    public final boolean getBackoffCriteriaSet$work_runtime_release() {
        return this.f145a;
    }

    public final UUID getId$work_runtime_release() {
        return this.f146b;
    }

    public final Set<String> getTags$work_runtime_release() {
        return this.f148d;
    }

    public abstract J getThisObject$work_runtime_release();

    public final K1.E getWorkSpec$work_runtime_release() {
        return this.f147c;
    }

    public final J setBackoffCriteria(BackoffPolicy backoffPolicy, long j7, TimeUnit timeUnit) {
        kotlin.jvm.internal.j.checkNotNullParameter(backoffPolicy, "backoffPolicy");
        kotlin.jvm.internal.j.checkNotNullParameter(timeUnit, "timeUnit");
        this.f145a = true;
        K1.E e3 = this.f147c;
        e3.f1605l = backoffPolicy;
        e3.setBackoffDelayDuration(timeUnit.toMillis(j7));
        return getThisObject$work_runtime_release();
    }

    public final J setId(UUID id) {
        kotlin.jvm.internal.j.checkNotNullParameter(id, "id");
        this.f146b = id;
        String uuid = id.toString();
        kotlin.jvm.internal.j.checkNotNullExpressionValue(uuid, "id.toString()");
        this.f147c = new K1.E(uuid, this.f147c);
        return getThisObject$work_runtime_release();
    }

    public final J setInputData(C0028h inputData) {
        kotlin.jvm.internal.j.checkNotNullParameter(inputData, "inputData");
        this.f147c.f1598e = inputData;
        return getThisObject$work_runtime_release();
    }
}
