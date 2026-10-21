package e;

import M.AbstractC0181p0;
import M.C0;
import android.view.ViewGroup;

/* renamed from: e.F, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC0818F implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ a0 f13649b;

    public RunnableC0818F(a0 a0Var) {
        this.f13649b = a0Var;
    }

    @Override // java.lang.Runnable
    public void run() {
        ViewGroup viewGroup;
        a0 a0Var = this.f13649b;
        a0Var.f13696F.showAtLocation(a0Var.f13695E, 55, 0, 0);
        C0 c02 = a0Var.f13698H;
        if (c02 != null) {
            c02.cancel();
        }
        if (!(a0Var.f13700J && (viewGroup = a0Var.f13701K) != null && AbstractC0181p0.isLaidOut(viewGroup))) {
            a0Var.f13695E.setAlpha(1.0f);
            a0Var.f13695E.setVisibility(0);
        } else {
            a0Var.f13695E.setAlpha(0.0f);
            C0 alpha = AbstractC0181p0.animate(a0Var.f13695E).alpha(1.0f);
            a0Var.f13698H = alpha;
            alpha.setListener(new C0817E(this));
        }
    }
}
