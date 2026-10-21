package Y5;

import R5.E;
import y5.InterfaceC1952k;

/* loaded from: classes2.dex */
public final class o extends E {

    /* renamed from: f, reason: collision with root package name */
    public static final o f4435f = new o();

    @Override // R5.E
    public void dispatch(InterfaceC1952k interfaceC1952k, Runnable runnable) {
        e.f4420j.dispatchWithContext$kotlinx_coroutines_core(runnable, n.f4434h, false);
    }

    @Override // R5.E
    public E limitedParallelism(int i2) {
        W5.n.checkParallelism(i2);
        return i2 >= n.f4430d ? this : super.limitedParallelism(i2);
    }
}
