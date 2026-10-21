package h3;

import M.AbstractC0181p0;
import M.L;
import M.h1;
import android.view.View;
import com.google.android.material.appbar.CollapsingToolbarLayout;

/* renamed from: h3.h, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0984h implements L {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ CollapsingToolbarLayout f16533a;

    public C0984h(CollapsingToolbarLayout collapsingToolbarLayout) {
        this.f16533a = collapsingToolbarLayout;
    }

    @Override // M.L
    public h1 onApplyWindowInsets(View view, h1 h1Var) {
        CollapsingToolbarLayout collapsingToolbarLayout = this.f16533a;
        collapsingToolbarLayout.getClass();
        h1 h1Var2 = AbstractC0181p0.getFitsSystemWindows(collapsingToolbarLayout) ? h1Var : null;
        if (!L.c.equals(collapsingToolbarLayout.f12396J, h1Var2)) {
            collapsingToolbarLayout.f12396J = h1Var2;
            collapsingToolbarLayout.requestLayout();
        }
        return h1Var.consumeSystemWindowInsets();
    }
}
