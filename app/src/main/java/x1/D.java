package x1;

/* loaded from: classes.dex */
public final class D extends AbstractC1822y {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ androidx.transition.e f20775a;

    public D(androidx.transition.e eVar) {
        this.f20775a = eVar;
    }

    @Override // x1.InterfaceC1820w
    public void onTransitionEnd(androidx.transition.e eVar) {
        this.f20775a.runAnimators();
        eVar.removeListener(this);
    }
}
