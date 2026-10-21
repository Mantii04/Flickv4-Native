package e;

import M.E0;
import android.view.View;

/* loaded from: classes.dex */
public final class u0 extends E0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ x0 f13871a;

    public u0(x0 x0Var) {
        this.f13871a = x0Var;
    }

    @Override // M.D0
    public void onAnimationEnd(View view) {
        x0 x0Var = this.f13871a;
        x0Var.f13902u = null;
        x0Var.f13885d.requestLayout();
    }
}
