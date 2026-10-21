package androidx.activity;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class q {

    /* renamed from: a, reason: collision with root package name */
    public final Executor f4886a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f4887b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f4888c;

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f4889d;

    public q(Executor executor, H5.a reportFullyDrawn) {
        kotlin.jvm.internal.j.checkNotNullParameter(executor, "executor");
        kotlin.jvm.internal.j.checkNotNullParameter(reportFullyDrawn, "reportFullyDrawn");
        this.f4886a = executor;
        this.f4887b = new Object();
        this.f4889d = new ArrayList();
    }

    public final void fullyDrawnReported() {
        synchronized (this.f4887b) {
            try {
                this.f4888c = true;
                Iterator it = this.f4889d.iterator();
                while (it.hasNext()) {
                    ((H5.a) it.next()).invoke();
                }
                this.f4889d.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean isFullyDrawnReported() {
        boolean z6;
        synchronized (this.f4887b) {
            z6 = this.f4888c;
        }
        return z6;
    }
}
