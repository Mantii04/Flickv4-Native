package x1;

/* renamed from: x1.m, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1811m implements InterfaceC1820w {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Runnable f20825a;

    public C1811m(Runnable runnable) {
        this.f20825a = runnable;
    }

    @Override // x1.InterfaceC1820w
    public final /* synthetic */ void onTransitionEnd(androidx.transition.e eVar, boolean z6) {
        AbstractC1819v.a(this, eVar, z6);
    }

    @Override // x1.InterfaceC1820w
    public final /* synthetic */ void onTransitionStart(androidx.transition.e eVar, boolean z6) {
        AbstractC1819v.b(this, eVar, z6);
    }

    @Override // x1.InterfaceC1820w
    public void onTransitionEnd(androidx.transition.e eVar) {
        this.f20825a.run();
    }

    @Override // x1.InterfaceC1820w
    public void onTransitionStart(androidx.transition.e eVar) {
    }

    @Override // x1.InterfaceC1820w
    public void onTransitionCancel(androidx.transition.e eVar) {
    }

    @Override // x1.InterfaceC1820w
    public void onTransitionPause(androidx.transition.e eVar) {
    }

    @Override // x1.InterfaceC1820w
    public void onTransitionResume(androidx.transition.e eVar) {
    }
}
