package R5;

import W5.C0362i;
import W5.C0366m;
import y5.AbstractC1942a;
import y5.AbstractC1945d;
import y5.C1946e;
import y5.InterfaceC1944c;
import y5.InterfaceC1947f;
import y5.InterfaceC1950i;
import y5.InterfaceC1951j;
import y5.InterfaceC1952k;

/* loaded from: classes2.dex */
public abstract class E extends AbstractC1942a implements InterfaceC1947f {

    /* renamed from: e, reason: collision with root package name */
    public static final kotlinx.coroutines.b f3145e = new kotlinx.coroutines.b(null);

    public E() {
        super(C1946e.f21324b);
    }

    public abstract void dispatch(InterfaceC1952k interfaceC1952k, Runnable runnable);

    @Override // y5.AbstractC1942a, y5.InterfaceC1950i, y5.InterfaceC1952k
    public <E extends InterfaceC1950i> E get(InterfaceC1951j interfaceC1951j) {
        return (E) AbstractC1945d.get(this, interfaceC1951j);
    }

    public final <T> InterfaceC1944c interceptContinuation(InterfaceC1944c interfaceC1944c) {
        return new C0362i(this, interfaceC1944c);
    }

    public boolean isDispatchNeeded(InterfaceC1952k interfaceC1952k) {
        return true;
    }

    public E limitedParallelism(int i2) {
        W5.n.checkParallelism(i2);
        return new C0366m(this, i2);
    }

    @Override // y5.AbstractC1942a, y5.InterfaceC1952k
    public InterfaceC1952k minusKey(InterfaceC1951j interfaceC1951j) {
        return AbstractC1945d.minusKey(this, interfaceC1951j);
    }

    public final void releaseInterceptedContinuation(InterfaceC1944c interfaceC1944c) {
        kotlin.jvm.internal.j.checkNotNull(interfaceC1944c, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>");
        ((C0362i) interfaceC1944c).release();
    }

    public String toString() {
        return K.getClassSimpleName(this) + '@' + K.getHexAddress(this);
    }
}
