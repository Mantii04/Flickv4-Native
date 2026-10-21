package R5;

import y5.AbstractC1949h;
import y5.InterfaceC1950i;
import y5.InterfaceC1951j;
import y5.InterfaceC1952k;

/* loaded from: classes2.dex */
public final class R0 implements InterfaceC1950i, InterfaceC1951j {

    /* renamed from: b, reason: collision with root package name */
    public static final R0 f3158b = new R0();

    @Override // y5.InterfaceC1952k
    public <R> R fold(R r6, H5.p pVar) {
        return (R) AbstractC1949h.fold(this, r6, pVar);
    }

    @Override // y5.InterfaceC1950i, y5.InterfaceC1952k
    public <E extends InterfaceC1950i> E get(InterfaceC1951j interfaceC1951j) {
        return (E) AbstractC1949h.get(this, interfaceC1951j);
    }

    @Override // y5.InterfaceC1952k
    public InterfaceC1952k minusKey(InterfaceC1951j interfaceC1951j) {
        return AbstractC1949h.minusKey(this, interfaceC1951j);
    }

    @Override // y5.InterfaceC1952k
    public InterfaceC1952k plus(InterfaceC1952k interfaceC1952k) {
        return AbstractC1949h.plus(this, interfaceC1952k);
    }

    @Override // y5.InterfaceC1950i
    public InterfaceC1951j getKey() {
        return this;
    }
}
