package e;

import M.AbstractC0181p0;
import M.E0;
import android.view.View;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import j.InterfaceC1019b;

/* loaded from: classes.dex */
public final class t0 extends E0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ x0 f13869a;

    public t0(x0 x0Var) {
        this.f13869a = x0Var;
    }

    @Override // M.D0
    public void onAnimationEnd(View view) {
        View view2;
        x0 x0Var = this.f13869a;
        if (x0Var.f13897p && (view2 = x0Var.f13888g) != null) {
            view2.setTranslationY(0.0f);
            x0Var.f13885d.setTranslationY(0.0f);
        }
        x0Var.f13885d.setVisibility(8);
        x0Var.f13885d.setTransitioning(false);
        x0Var.f13902u = null;
        InterfaceC1019b interfaceC1019b = x0Var.f13892k;
        if (interfaceC1019b != null) {
            interfaceC1019b.onDestroyActionMode(x0Var.f13891j);
            x0Var.f13891j = null;
            x0Var.f13892k = null;
        }
        ActionBarOverlayLayout actionBarOverlayLayout = x0Var.f13884c;
        if (actionBarOverlayLayout != null) {
            AbstractC0181p0.requestApplyInsets(actionBarOverlayLayout);
        }
    }
}
