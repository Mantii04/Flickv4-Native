package x1;

import a.AbstractC0373c;
import android.view.ViewGroup;

/* renamed from: x1.h, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1806h extends AbstractC1822y {

    /* renamed from: a, reason: collision with root package name */
    public boolean f20807a = false;

    /* renamed from: b, reason: collision with root package name */
    public final ViewGroup f20808b;

    public C1806h(ViewGroup viewGroup) {
        this.f20808b = viewGroup;
    }

    @Override // x1.AbstractC1822y, x1.InterfaceC1820w
    public void onTransitionCancel(androidx.transition.e eVar) {
        AbstractC0373c.f(this.f20808b, false);
        this.f20807a = true;
    }

    @Override // x1.InterfaceC1820w
    public void onTransitionEnd(androidx.transition.e eVar) {
        if (!this.f20807a) {
            AbstractC0373c.f(this.f20808b, false);
        }
        eVar.removeListener(this);
    }

    @Override // x1.AbstractC1822y, x1.InterfaceC1820w
    public void onTransitionPause(androidx.transition.e eVar) {
        AbstractC0373c.f(this.f20808b, false);
    }

    @Override // x1.AbstractC1822y, x1.InterfaceC1820w
    public void onTransitionResume(androidx.transition.e eVar) {
        AbstractC0373c.f(this.f20808b, true);
    }
}
