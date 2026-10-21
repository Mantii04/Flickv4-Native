package y;

import M.AbstractC0181p0;
import M.L;
import M.h1;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

/* renamed from: y.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1857a implements L {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ CoordinatorLayout f20934a;

    public C1857a(CoordinatorLayout coordinatorLayout) {
        this.f20934a = coordinatorLayout;
    }

    @Override // M.L
    public h1 onApplyWindowInsets(View view, h1 h1Var) {
        AbstractC1859c behavior;
        CoordinatorLayout coordinatorLayout = this.f20934a;
        if (!L.c.equals(coordinatorLayout.f5533x, h1Var)) {
            coordinatorLayout.f5533x = h1Var;
            boolean z6 = h1Var != null && h1Var.getSystemWindowInsetTop() > 0;
            coordinatorLayout.f5534y = z6;
            coordinatorLayout.setWillNotDraw(!z6 && coordinatorLayout.getBackground() == null);
            if (!h1Var.isConsumed()) {
                int childCount = coordinatorLayout.getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    View childAt = coordinatorLayout.getChildAt(i2);
                    if (AbstractC0181p0.getFitsSystemWindows(childAt) && (behavior = ((C1862f) childAt.getLayoutParams()).getBehavior()) != null) {
                        h1Var = behavior.onApplyWindowInsets(coordinatorLayout, childAt, h1Var);
                        if (h1Var.isConsumed()) {
                            break;
                        }
                    }
                }
            }
            coordinatorLayout.requestLayout();
        }
        return h1Var;
    }
}
