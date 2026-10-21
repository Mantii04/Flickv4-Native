package e;

import M.AbstractC0181p0;
import M.E0;
import android.view.View;
import android.widget.PopupWindow;

/* loaded from: classes.dex */
public final class J extends E0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ K f13653a;

    public J(K k7) {
        this.f13653a = k7;
    }

    @Override // M.D0
    public void onAnimationEnd(View view) {
        K k7 = this.f13653a;
        k7.f13655b.f13695E.setVisibility(8);
        a0 a0Var = k7.f13655b;
        PopupWindow popupWindow = a0Var.f13696F;
        if (popupWindow != null) {
            popupWindow.dismiss();
        } else if (a0Var.f13695E.getParent() instanceof View) {
            AbstractC0181p0.requestApplyInsets((View) k7.f13655b.f13695E.getParent());
        }
        k7.f13655b.f13695E.killMode();
        k7.f13655b.f13698H.setListener(null);
        a0 a0Var2 = k7.f13655b;
        a0Var2.f13698H = null;
        AbstractC0181p0.requestApplyInsets(a0Var2.f13701K);
    }
}
