package S2;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

/* loaded from: classes.dex */
public final class A implements Executor {

    /* renamed from: b, reason: collision with root package name */
    public final ExecutorService f3292b;

    public A(ExecutorService executorService) {
        this.f3292b = executorService;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.f3292b.execute(new z(runnable));
    }
}
