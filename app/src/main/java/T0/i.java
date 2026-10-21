package T0;

import S0.n;
import u0.InterfaceC1666g;

/* loaded from: classes.dex */
public final class i extends n {

    /* renamed from: f, reason: collision with root package name */
    public final InterfaceC1666g f3515f;

    public i(InterfaceC1666g interfaceC1666g) {
        this.f3515f = interfaceC1666g;
    }

    @Override // u0.AbstractC1667h
    public final void release() {
        ((j) ((A0.a) this.f3515f).f3e).releaseOutputBuffer(this);
    }
}
