package n1;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class Q implements Executor {

    /* renamed from: b, reason: collision with root package name */
    public final Executor f18810b;

    /* renamed from: e, reason: collision with root package name */
    public final ArrayDeque f18811e;

    /* renamed from: f, reason: collision with root package name */
    public Runnable f18812f;

    /* renamed from: j, reason: collision with root package name */
    public final Object f18813j;

    public Q(Executor executor) {
        kotlin.jvm.internal.j.checkNotNullParameter(executor, "executor");
        this.f18810b = executor;
        this.f18811e = new ArrayDeque();
        this.f18813j = new Object();
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable command) {
        kotlin.jvm.internal.j.checkNotNullParameter(command, "command");
        synchronized (this.f18813j) {
            this.f18811e.offer(new flix.com.vision.activities.leanback.fragment.a(14, command, this));
            if (this.f18812f == null) {
                scheduleNext();
            }
        }
    }

    public final void scheduleNext() {
        synchronized (this.f18813j) {
            Object poll = this.f18811e.poll();
            Runnable runnable = (Runnable) poll;
            this.f18812f = runnable;
            if (poll != null) {
                this.f18810b.execute(runnable);
            }
        }
    }
}
