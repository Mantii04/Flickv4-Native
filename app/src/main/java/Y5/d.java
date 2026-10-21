package Y5;

import R5.AbstractC0272f0;
import R5.E;
import W5.H;
import W5.J;
import java.util.concurrent.Executor;
import kotlin.coroutines.EmptyCoroutineContext;
import y5.InterfaceC1952k;

/* loaded from: classes2.dex */
public final class d extends AbstractC0272f0 implements Executor {

    /* renamed from: f, reason: collision with root package name */
    public static final d f4418f = new d();

    /* renamed from: j, reason: collision with root package name */
    public static final E f4419j;

    static {
        int systemProp$default;
        o oVar = o.f4435f;
        systemProp$default = J.systemProp$default("kotlinx.coroutines.io.parallelism", M5.g.coerceAtLeast(64, H.getAVAILABLE_PROCESSORS()), 0, 0, 12, (Object) null);
        f4419j = oVar.limitedParallelism(systemProp$default);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        throw new IllegalStateException("Cannot be invoked on Dispatchers.IO");
    }

    @Override // R5.E
    public void dispatch(InterfaceC1952k interfaceC1952k, Runnable runnable) {
        f4419j.dispatch(interfaceC1952k, runnable);
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        dispatch(EmptyCoroutineContext.f17433b, runnable);
    }

    @Override // R5.E
    public String toString() {
        return "Dispatchers.IO";
    }
}
