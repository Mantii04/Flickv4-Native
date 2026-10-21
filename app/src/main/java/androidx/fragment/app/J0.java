package androidx.fragment.app;

import android.util.Log;
import android.view.View;

/* loaded from: classes.dex */
public final class J0 extends L0 {

    /* renamed from: h, reason: collision with root package name */
    public final s0 f6132h;

    public J0(SpecialEffectsController$Operation$State specialEffectsController$Operation$State, SpecialEffectsController$Operation$LifecycleImpact specialEffectsController$Operation$LifecycleImpact, s0 s0Var, I.f fVar) {
        super(specialEffectsController$Operation$State, specialEffectsController$Operation$LifecycleImpact, s0Var.f6304c, fVar);
        this.f6132h = s0Var;
    }

    @Override // androidx.fragment.app.L0
    public final void c() {
        SpecialEffectsController$Operation$LifecycleImpact specialEffectsController$Operation$LifecycleImpact = this.f6135b;
        SpecialEffectsController$Operation$LifecycleImpact specialEffectsController$Operation$LifecycleImpact2 = SpecialEffectsController$Operation$LifecycleImpact.f6157e;
        s0 s0Var = this.f6132h;
        if (specialEffectsController$Operation$LifecycleImpact != specialEffectsController$Operation$LifecycleImpact2) {
            if (specialEffectsController$Operation$LifecycleImpact == SpecialEffectsController$Operation$LifecycleImpact.f6158f) {
                C c7 = s0Var.f6304c;
                View requireView = c7.requireView();
                if (AbstractC0467i0.isLoggingEnabled(2)) {
                    Log.v("FragmentManager", "Clearing focus " + requireView.findFocus() + " on view " + requireView + " for Fragment " + c7);
                }
                requireView.clearFocus();
                return;
            }
            return;
        }
        C c8 = s0Var.f6304c;
        View findFocus = c8.f6068Q.findFocus();
        if (findFocus != null) {
            c8.b().f6049m = findFocus;
            if (AbstractC0467i0.isLoggingEnabled(2)) {
                Log.v("FragmentManager", "requestFocus: Saved focused view " + findFocus + " for Fragment " + c8);
            }
        }
        View requireView2 = getFragment().requireView();
        if (requireView2.getParent() == null) {
            s0Var.b();
            requireView2.setAlpha(0.0f);
        }
        if (requireView2.getAlpha() == 0.0f && requireView2.getVisibility() == 0) {
            requireView2.setVisibility(4);
        }
        B b7 = c8.f6071T;
        requireView2.setAlpha(b7 == null ? 1.0f : b7.f6048l);
    }

    @Override // androidx.fragment.app.L0
    public void complete() {
        super.complete();
        this.f6132h.k();
    }
}
