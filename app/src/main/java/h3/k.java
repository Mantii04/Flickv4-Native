package h3;

import M.AbstractC0181p0;
import M.h1;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;

/* loaded from: classes2.dex */
public final class k implements InterfaceC0983g {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ CollapsingToolbarLayout f16537a;

    public k(CollapsingToolbarLayout collapsingToolbarLayout) {
        this.f16537a = collapsingToolbarLayout;
    }

    public void onOffsetChanged(AppBarLayout appBarLayout, int i2) {
        CollapsingToolbarLayout collapsingToolbarLayout = this.f16537a;
        collapsingToolbarLayout.f12394H = i2;
        h1 h1Var = collapsingToolbarLayout.f12396J;
        int systemWindowInsetTop = h1Var != null ? h1Var.getSystemWindowInsetTop() : 0;
        int childCount = collapsingToolbarLayout.getChildCount();
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = collapsingToolbarLayout.getChildAt(i7);
            j jVar = (j) childAt.getLayoutParams();
            q b7 = CollapsingToolbarLayout.b(childAt);
            int i8 = jVar.f16535a;
            if (i8 == 1) {
                b7.setTopAndBottomOffset(G.a.clamp(-i2, 0, ((collapsingToolbarLayout.getHeight() - CollapsingToolbarLayout.b(childAt).getLayoutTop()) - childAt.getHeight()) - ((FrameLayout.LayoutParams) ((j) childAt.getLayoutParams())).bottomMargin));
            } else if (i8 == 2) {
                b7.setTopAndBottomOffset(Math.round((-i2) * jVar.f16536b));
            }
        }
        collapsingToolbarLayout.d();
        if (collapsingToolbarLayout.f12416y != null && systemWindowInsetTop > 0) {
            AbstractC0181p0.postInvalidateOnAnimation(collapsingToolbarLayout);
        }
        int height = collapsingToolbarLayout.getHeight();
        int minimumHeight = (height - AbstractC0181p0.getMinimumHeight(collapsingToolbarLayout)) - systemWindowInsetTop;
        float scrimVisibleHeightTrigger = height - collapsingToolbarLayout.getScrimVisibleHeightTrigger();
        float f3 = minimumHeight;
        float min = Math.min(1.0f, scrimVisibleHeightTrigger / f3);
        com.google.android.material.internal.a aVar = collapsingToolbarLayout.f12411t;
        aVar.setFadeModeStartFraction(min);
        aVar.setCurrentOffsetY(collapsingToolbarLayout.f12394H + minimumHeight);
        aVar.setExpansionFraction(Math.abs(i2) / f3);
    }
}
