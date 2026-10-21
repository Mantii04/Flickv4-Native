package V3;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;

/* loaded from: classes2.dex */
public final class C implements F {

    /* renamed from: b, reason: collision with root package name */
    public static final C f3977b = new C();

    /* renamed from: e, reason: collision with root package name */
    public static final E f3978e = new E(C.class);

    @Override // V3.F
    public void addListener(Runnable runnable, Executor executor) {
        P3.v.checkNotNull(runnable, "Runnable was null.");
        P3.v.checkNotNull(executor, "Executor was null.");
        try {
            executor.execute(runnable);
        } catch (Exception e3) {
            f3978e.a().log(Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e3);
        }
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z6) {
        return false;
    }

    @Override // java.util.concurrent.Future
    public Object get() {
        return null;
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return false;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return true;
    }

    public String toString() {
        return A.i.o(new StringBuilder(), super.toString(), "[status=SUCCESS, result=[null]]");
    }

    @Override // java.util.concurrent.Future
    public Object get(long j7, TimeUnit timeUnit) throws ExecutionException {
        P3.v.checkNotNull(timeUnit);
        return get();
    }
}
