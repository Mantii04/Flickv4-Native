package e;

import M.AbstractC0181p0;
import M.E0;
import android.view.View;

/* renamed from: e.G, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0819G extends E0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ a0 f13650a;

    public C0819G(a0 a0Var) {
        this.f13650a = a0Var;
    }

    @Override // M.D0
    public void onAnimationEnd(View view) {
        a0 a0Var = this.f13650a;
        a0Var.f13695E.setAlpha(1.0f);
        a0Var.f13698H.setListener(null);
        a0Var.f13698H = null;
    }

    @Override // M.E0, M.D0
    public void onAnimationStart(View view) {
        a0 a0Var = this.f13650a;
        a0Var.f13695E.setVisibility(0);
        if (a0Var.f13695E.getParent() instanceof View) {
            AbstractC0181p0.requestApplyInsets((View) a0Var.f13695E.getParent());
        }
    }
}
