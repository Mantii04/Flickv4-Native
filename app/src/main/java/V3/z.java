package V3;

import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final class z implements Callable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Runnable f4022b;

    public z(Runnable runnable) {
        this.f4022b = runnable;
    }

    @Override // java.util.concurrent.Callable
    public Void call() throws Exception {
        this.f4022b.run();
        return null;
    }
}
