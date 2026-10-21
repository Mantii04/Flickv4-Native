package V5;

import H5.p;
import y5.InterfaceC1950i;
import y5.InterfaceC1951j;
import y5.InterfaceC1952k;

/* loaded from: classes2.dex */
public final class d implements InterfaceC1952k {

    /* renamed from: b, reason: collision with root package name */
    public final Throwable f4027b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ InterfaceC1952k f4028e;

    public d(Throwable th, InterfaceC1952k interfaceC1952k) {
        this.f4027b = th;
        this.f4028e = interfaceC1952k;
    }

    @Override // y5.InterfaceC1952k
    public <R> R fold(R r6, p pVar) {
        return (R) this.f4028e.fold(r6, pVar);
    }

    @Override // y5.InterfaceC1952k
    public <E extends InterfaceC1950i> E get(InterfaceC1951j interfaceC1951j) {
        return (E) this.f4028e.get(interfaceC1951j);
    }

    @Override // y5.InterfaceC1952k
    public InterfaceC1952k minusKey(InterfaceC1951j interfaceC1951j) {
        return this.f4028e.minusKey(interfaceC1951j);
    }

    @Override // y5.InterfaceC1952k
    public InterfaceC1952k plus(InterfaceC1952k interfaceC1952k) {
        return this.f4028e.plus(interfaceC1952k);
    }
}
