package S2;

import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* loaded from: classes.dex */
public final class w implements U2.b {
    public static w create() {
        return v.f3374a;
    }

    public static Executor executor() {
        return (Executor) U2.d.checkNotNull(new A(Executors.newSingleThreadExecutor()), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // t5.InterfaceC1657a
    public Executor get() {
        return executor();
    }
}
