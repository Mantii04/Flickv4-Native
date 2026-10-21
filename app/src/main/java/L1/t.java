package L1;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class t implements N1.a {

    /* renamed from: e, reason: collision with root package name */
    public final Executor f1887e;

    /* renamed from: f, reason: collision with root package name */
    public Runnable f1888f;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayDeque f1886b = new ArrayDeque();

    /* renamed from: j, reason: collision with root package name */
    public final Object f1889j = new Object();

    public t(Executor executor) {
        this.f1887e = executor;
    }

    public final void a() {
        Runnable runnable = (Runnable) this.f1886b.poll();
        this.f1888f = runnable;
        if (runnable != null) {
            this.f1887e.execute(runnable);
        }
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        synchronized (this.f1889j) {
            try {
                this.f1886b.add(new s(this, runnable));
                if (this.f1888f == null) {
                    a();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean hasPendingTasks() {
        boolean z6;
        synchronized (this.f1889j) {
            z6 = !this.f1886b.isEmpty();
        }
        return z6;
    }
}
