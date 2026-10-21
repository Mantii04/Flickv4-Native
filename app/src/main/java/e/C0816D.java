package e;

import M.C0;
import k.C1084p;
import l.K0;
import l.L0;

/* renamed from: e.D, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0816D implements K0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ a0 f13647a;

    public C0816D(a0 a0Var) {
        this.f13647a = a0Var;
    }

    public void onDetachedFromWindow() {
        C1084p c1084p;
        a0 a0Var = this.f13647a;
        L0 l02 = a0Var.f13691A;
        if (l02 != null) {
            l02.dismissPopups();
        }
        if (a0Var.f13696F != null) {
            a0Var.f13736u.getDecorView().removeCallbacks(a0Var.f13697G);
            if (a0Var.f13696F.isShowing()) {
                try {
                    a0Var.f13696F.dismiss();
                } catch (IllegalArgumentException unused) {
                }
            }
            a0Var.f13696F = null;
        }
        C0 c02 = a0Var.f13698H;
        if (c02 != null) {
            c02.cancel();
        }
        Y panelState = a0Var.getPanelState(0, false);
        if (panelState == null || (c1084p = panelState.f13676h) == null) {
            return;
        }
        c1084p.close();
    }

    public void onAttachedFromWindow() {
    }
}
