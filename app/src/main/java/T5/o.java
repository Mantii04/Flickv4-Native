package T5;

import R5.G;
import u5.C1711j;
import y5.InterfaceC1952k;

/* loaded from: classes2.dex */
public final class o extends d implements p {
    public o(InterfaceC1952k interfaceC1952k, c cVar) {
        super(interfaceC1952k, cVar, true, true);
    }

    @Override // R5.AbstractC0261a, R5.A0, R5.InterfaceC0294q0
    public boolean isActive() {
        return super.isActive();
    }

    @Override // R5.AbstractC0261a
    public void onCancelled(Throwable th, boolean z6) {
        if (get_channel().close(th) || z6) {
            return;
        }
        G.handleCoroutineException(getContext(), th);
    }

    @Override // R5.AbstractC0261a
    public void onCompleted(C1711j c1711j) {
        r.close$default(get_channel(), null, 1, null);
    }
}
