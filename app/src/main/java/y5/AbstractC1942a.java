package y5;

import H5.p;

/* renamed from: y5.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC1942a implements InterfaceC1950i {

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC1951j f21321b;

    public AbstractC1942a(InterfaceC1951j key) {
        kotlin.jvm.internal.j.checkNotNullParameter(key, "key");
        this.f21321b = key;
    }

    @Override // y5.InterfaceC1952k
    public <R> R fold(R r6, p pVar) {
        return (R) AbstractC1949h.fold(this, r6, pVar);
    }

    @Override // y5.InterfaceC1950i, y5.InterfaceC1952k
    public <E extends InterfaceC1950i> E get(InterfaceC1951j interfaceC1951j) {
        return (E) AbstractC1949h.get(this, interfaceC1951j);
    }

    @Override // y5.InterfaceC1950i
    public InterfaceC1951j getKey() {
        return this.f21321b;
    }

    @Override // y5.InterfaceC1952k
    public InterfaceC1952k minusKey(InterfaceC1951j interfaceC1951j) {
        return AbstractC1949h.minusKey(this, interfaceC1951j);
    }

    @Override // y5.InterfaceC1952k
    public InterfaceC1952k plus(InterfaceC1952k interfaceC1952k) {
        return AbstractC1949h.plus(this, interfaceC1952k);
    }
}
