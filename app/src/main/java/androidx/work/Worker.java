package androidx.work;

import B1.AbstractC0037q;
import B1.C0029i;
import B1.M;
import B1.N;
import B1.r;
import M1.g;
import V3.F;
import android.content.Context;

/* loaded from: classes.dex */
public abstract class Worker extends r {

    /* renamed from: m, reason: collision with root package name */
    public g f8276m;

    public Worker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
    }

    public abstract AbstractC0037q doWork();

    public C0029i getForegroundInfo() {
        throw new IllegalStateException("Expedited WorkRequests require a Worker to provide an implementation for \n `getForegroundInfo()`");
    }

    @Override // B1.r
    public F getForegroundInfoAsync() {
        g create = g.create();
        getBackgroundExecutor().execute(new N(this, create));
        return create;
    }

    @Override // B1.r
    public final F startWork() {
        this.f8276m = g.create();
        getBackgroundExecutor().execute(new M(this));
        return this.f8276m;
    }
}
