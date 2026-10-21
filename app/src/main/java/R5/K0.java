package R5;

import y5.InterfaceC1952k;

/* loaded from: classes2.dex */
public class K0 extends AbstractC0261a {
    public K0(InterfaceC1952k interfaceC1952k, boolean z6) {
        super(interfaceC1952k, true, z6);
    }

    @Override // R5.A0
    public boolean handleJobException(Throwable th) {
        G.handleCoroutineException(getContext(), th);
        return true;
    }
}
