package e;

import M.AbstractC0181p0;
import M.h1;
import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.R;
import androidx.appcompat.widget.ActionBarContextView;
import l.z2;

/* renamed from: e.C, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0815C implements M.L {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ a0 f13646a;

    public C0815C(a0 a0Var) {
        this.f13646a = a0Var;
    }

    @Override // M.L
    public h1 onApplyWindowInsets(View view, h1 h1Var) {
        boolean z6;
        boolean z7;
        int systemWindowInsetTop = h1Var.getSystemWindowInsetTop();
        a0 a0Var = this.f13646a;
        a0Var.getClass();
        int systemWindowInsetTop2 = h1Var.getSystemWindowInsetTop();
        ActionBarContextView actionBarContextView = a0Var.f13695E;
        if (actionBarContextView == null || !(actionBarContextView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            z6 = false;
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) a0Var.f13695E.getLayoutParams();
            if (a0Var.f13695E.isShown()) {
                if (a0Var.f13729m0 == null) {
                    a0Var.f13729m0 = new Rect();
                    a0Var.f13730n0 = new Rect();
                }
                Rect rect = a0Var.f13729m0;
                Rect rect2 = a0Var.f13730n0;
                rect.set(h1Var.getSystemWindowInsetLeft(), h1Var.getSystemWindowInsetTop(), h1Var.getSystemWindowInsetRight(), h1Var.getSystemWindowInsetBottom());
                z2.computeFitSystemWindows(a0Var.f13701K, rect, rect2);
                int i2 = rect.top;
                int i7 = rect.left;
                int i8 = rect.right;
                h1 rootWindowInsets = AbstractC0181p0.getRootWindowInsets(a0Var.f13701K);
                int systemWindowInsetLeft = rootWindowInsets == null ? 0 : rootWindowInsets.getSystemWindowInsetLeft();
                int systemWindowInsetRight = rootWindowInsets == null ? 0 : rootWindowInsets.getSystemWindowInsetRight();
                if (marginLayoutParams.topMargin == i2 && marginLayoutParams.leftMargin == i7 && marginLayoutParams.rightMargin == i8) {
                    z7 = false;
                } else {
                    marginLayoutParams.topMargin = i2;
                    marginLayoutParams.leftMargin = i7;
                    marginLayoutParams.rightMargin = i8;
                    z7 = true;
                }
                Context context = a0Var.f13735t;
                if (i2 <= 0 || a0Var.f13703M != null) {
                    View view2 = a0Var.f13703M;
                    if (view2 != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) view2.getLayoutParams();
                        int i9 = marginLayoutParams2.height;
                        int i10 = marginLayoutParams.topMargin;
                        if (i9 != i10 || marginLayoutParams2.leftMargin != systemWindowInsetLeft || marginLayoutParams2.rightMargin != systemWindowInsetRight) {
                            marginLayoutParams2.height = i10;
                            marginLayoutParams2.leftMargin = systemWindowInsetLeft;
                            marginLayoutParams2.rightMargin = systemWindowInsetRight;
                            a0Var.f13703M.setLayoutParams(marginLayoutParams2);
                        }
                    }
                } else {
                    View view3 = new View(context);
                    a0Var.f13703M = view3;
                    view3.setVisibility(8);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, marginLayoutParams.topMargin, 51);
                    layoutParams.leftMargin = systemWindowInsetLeft;
                    layoutParams.rightMargin = systemWindowInsetRight;
                    a0Var.f13701K.addView(a0Var.f13703M, -1, layoutParams);
                }
                View view4 = a0Var.f13703M;
                r8 = view4 != null;
                if (r8 && view4.getVisibility() != 0) {
                    View view5 = a0Var.f13703M;
                    view5.setBackgroundColor((AbstractC0181p0.getWindowSystemUiVisibility(view5) & 8192) != 0 ? A.h.getColor(context, R.color.abc_decor_view_status_guard_light) : A.h.getColor(context, R.color.abc_decor_view_status_guard));
                }
                if (!a0Var.f13708R && r8) {
                    systemWindowInsetTop2 = 0;
                }
                boolean z8 = r8;
                r8 = z7;
                z6 = z8;
            } else if (marginLayoutParams.topMargin != 0) {
                marginLayoutParams.topMargin = 0;
                z6 = false;
            } else {
                z6 = false;
                r8 = false;
            }
            if (r8) {
                a0Var.f13695E.setLayoutParams(marginLayoutParams);
            }
        }
        View view6 = a0Var.f13703M;
        if (view6 != null) {
            view6.setVisibility(z6 ? 0 : 8);
        }
        return AbstractC0181p0.onApplyWindowInsets(view, systemWindowInsetTop != systemWindowInsetTop2 ? h1Var.replaceSystemWindowInsets(h1Var.getSystemWindowInsetLeft(), systemWindowInsetTop2, h1Var.getSystemWindowInsetRight(), h1Var.getSystemWindowInsetBottom()) : h1Var);
    }
}
