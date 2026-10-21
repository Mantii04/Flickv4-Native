package androidx.work.impl.workers;

import B1.AbstractC0037q;
import android.content.Context;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import kotlin.jvm.internal.j;

/* loaded from: classes.dex */
public final class CombineContinuationsWorker extends Worker {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CombineContinuationsWorker(Context context, WorkerParameters workerParams) {
        super(context, workerParams);
        j.checkNotNullParameter(context, "context");
        j.checkNotNullParameter(workerParams, "workerParams");
    }

    @Override // androidx.work.Worker
    public AbstractC0037q doWork() {
        AbstractC0037q success = AbstractC0037q.success(getInputData());
        j.checkNotNullExpressionValue(success, "success(inputData)");
        return success;
    }
}
