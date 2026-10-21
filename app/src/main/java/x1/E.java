package x1;

/* loaded from: classes.dex */
public final class E extends AbstractC1822y {

    /* renamed from: a, reason: collision with root package name */
    public F f20776a;

    @Override // x1.InterfaceC1820w
    public void onTransitionEnd(androidx.transition.e eVar) {
        F f3 = this.f20776a;
        int i2 = f3.f20779M - 1;
        f3.f20779M = i2;
        if (i2 == 0) {
            f3.f20780N = false;
            f3.end();
        }
        eVar.removeListener(this);
    }

    @Override // x1.AbstractC1822y, x1.InterfaceC1820w
    public void onTransitionStart(androidx.transition.e eVar) {
        F f3 = this.f20776a;
        if (f3.f20780N) {
            return;
        }
        f3.start();
        f3.f20780N = true;
    }
}
