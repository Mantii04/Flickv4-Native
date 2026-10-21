package androidx.work.impl.workers;

import A3.d;
import B1.r;
import B1.t;
import G1.c;
import K1.E;
import M1.g;
import O1.a;
import V3.F;
import android.content.Context;
import androidx.work.WorkerParameters;
import java.util.List;
import kotlin.jvm.internal.j;

/* loaded from: classes.dex */
public final class ConstraintTrackingWorker extends r implements c {

    /* renamed from: m, reason: collision with root package name */
    public final WorkerParameters f8323m;

    /* renamed from: n, reason: collision with root package name */
    public final Object f8324n;

    /* renamed from: p, reason: collision with root package name */
    public volatile boolean f8325p;

    /* renamed from: q, reason: collision with root package name */
    public final g f8326q;

    /* renamed from: r, reason: collision with root package name */
    public r f8327r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConstraintTrackingWorker(Context appContext, WorkerParameters workerParameters) {
        super(appContext, workerParameters);
        j.checkNotNullParameter(appContext, "appContext");
        j.checkNotNullParameter(workerParameters, "workerParameters");
        this.f8323m = workerParameters;
        this.f8324n = new Object();
        this.f8326q = g.create();
    }

    @Override // G1.c
    public void onAllConstraintsMet(List<E> workSpecs) {
        j.checkNotNullParameter(workSpecs, "workSpecs");
    }

    @Override // G1.c
    public void onAllConstraintsNotMet(List<E> workSpecs) {
        String str;
        j.checkNotNullParameter(workSpecs, "workSpecs");
        t tVar = t.get();
        str = a.f2399a;
        tVar.debug(str, "Constraints changed for " + workSpecs);
        synchronized (this.f8324n) {
            this.f8325p = true;
        }
    }

    @Override // B1.r
    public void onStopped() {
        super.onStopped();
        r rVar = this.f8327r;
        if (rVar == null || rVar.isStopped()) {
            return;
        }
        rVar.stop();
    }

    @Override // B1.r
    public F startWork() {
        getBackgroundExecutor().execute(new d(this, 12));
        g future = this.f8326q;
        j.checkNotNullExpressionValue(future, "future");
        return future;
    }
}
