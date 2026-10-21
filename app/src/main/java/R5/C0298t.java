package R5;

import u5.C1711j;

/* renamed from: R5.t, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0298t extends AbstractC0295r0 implements InterfaceC0296s {

    /* renamed from: m, reason: collision with root package name */
    public final InterfaceC0300u f3194m;

    public C0298t(InterfaceC0300u interfaceC0300u) {
        this.f3194m = interfaceC0300u;
    }

    @Override // R5.InterfaceC0296s
    public boolean childCancelled(Throwable th) {
        return getJob().childCancelled(th);
    }

    @Override // R5.InterfaceC0296s
    public InterfaceC0294q0 getParent() {
        return getJob();
    }

    @Override // H5.l
    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
        invoke((Throwable) obj);
        return C1711j.f20329a;
    }

    @Override // R5.C
    public void invoke(Throwable th) {
        ((A0) this.f3194m).parentCancelled(getJob());
    }
}
