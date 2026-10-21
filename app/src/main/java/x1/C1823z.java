package x1;

import java.util.ArrayList;

/* renamed from: x1.z, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1823z extends AbstractC1822y {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ p.g f20840a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ViewTreeObserverOnPreDrawListenerC1797A f20841b;

    public C1823z(ViewTreeObserverOnPreDrawListenerC1797A viewTreeObserverOnPreDrawListenerC1797A, p.g gVar) {
        this.f20841b = viewTreeObserverOnPreDrawListenerC1797A;
        this.f20840a = gVar;
    }

    @Override // x1.InterfaceC1820w
    public void onTransitionEnd(androidx.transition.e eVar) {
        ((ArrayList) this.f20840a.get(this.f20841b.f20771e)).remove(eVar);
        eVar.removeListener(this);
    }
}
