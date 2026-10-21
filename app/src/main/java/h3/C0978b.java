package h3;

import M.AbstractC0181p0;
import M.L;
import M.h1;
import android.view.View;
import com.google.android.material.appbar.AppBarLayout;

/* renamed from: h3.b, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0978b implements L {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AppBarLayout f16527a;

    public C0978b(AppBarLayout appBarLayout) {
        this.f16527a = appBarLayout;
    }

    @Override // M.L
    public h1 onApplyWindowInsets(View view, h1 h1Var) {
        AppBarLayout appBarLayout = this.f16527a;
        h1 h1Var2 = AbstractC0181p0.getFitsSystemWindows(appBarLayout) ? h1Var : null;
        if (!L.c.equals(appBarLayout.f12370p, h1Var2)) {
            appBarLayout.f12370p = h1Var2;
            appBarLayout.setWillNotDraw(!(appBarLayout.f12360E != null && appBarLayout.getTopInset() > 0));
            appBarLayout.requestLayout();
        }
        return h1Var;
    }
}
