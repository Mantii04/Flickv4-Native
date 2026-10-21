package e;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class h0 implements Executor {

    /* renamed from: b, reason: collision with root package name */
    public final Object f13762b = new Object();

    /* renamed from: e, reason: collision with root package name */
    public final ArrayDeque f13763e = new ArrayDeque();

    /* renamed from: f, reason: collision with root package name */
    public final i0 f13764f;

    /* renamed from: j, reason: collision with root package name */
    public Runnable f13765j;

    public h0(i0 i0Var) {
        this.f13764f = i0Var;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        synchronized (this.f13762b) {
            try {
                this.f13763e.add(new A4.n(29, this, runnable));
                if (this.f13765j == null) {
                    scheduleNext();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void scheduleNext() {
        synchronized (this.f13762b) {
            try {
                Runnable runnable = (Runnable) this.f13763e.poll();
                this.f13765j = runnable;
                if (runnable != null) {
                    this.f13764f.execute(runnable);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
