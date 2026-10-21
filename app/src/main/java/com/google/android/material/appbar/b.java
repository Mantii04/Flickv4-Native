package com.google.android.material.appbar;

import M.C0152b;
import N.h;
import N.n;
import android.os.Bundle;
import android.view.View;
import android.widget.ScrollView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.appbar.AppBarLayout;
import h3.C0982f;

/* loaded from: classes2.dex */
public final class b extends C0152b {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ AppBarLayout f12428d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ CoordinatorLayout f12429e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ AppBarLayout.BaseBehavior f12430f;

    public b(CoordinatorLayout coordinatorLayout, AppBarLayout.BaseBehavior baseBehavior, AppBarLayout appBarLayout) {
        this.f12430f = baseBehavior;
        this.f12428d = appBarLayout;
        this.f12429e = coordinatorLayout;
    }

    @Override // M.C0152b
    public void onInitializeAccessibilityNodeInfo(View view, n nVar) {
        super.onInitializeAccessibilityNodeInfo(view, nVar);
        nVar.setClassName(ScrollView.class.getName());
        AppBarLayout appBarLayout = this.f12428d;
        if (appBarLayout.getTotalScrollRange() == 0) {
            return;
        }
        CoordinatorLayout coordinatorLayout = this.f12429e;
        AppBarLayout.BaseBehavior baseBehavior = this.f12430f;
        View d7 = AppBarLayout.BaseBehavior.d(baseBehavior, coordinatorLayout);
        if (d7 == null) {
            return;
        }
        baseBehavior.getClass();
        int childCount = appBarLayout.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            if (((C0982f) appBarLayout.getChildAt(i2).getLayoutParams()).f16530a != 0) {
                if (baseBehavior.a() != (-appBarLayout.getTotalScrollRange())) {
                    nVar.addAction(h.f2124h);
                    nVar.setScrollable(true);
                }
                if (baseBehavior.a() != 0) {
                    if (!d7.canScrollVertically(-1)) {
                        nVar.addAction(h.f2125i);
                        nVar.setScrollable(true);
                        return;
                    } else {
                        if ((-appBarLayout.getDownNestedPreScrollRange()) != 0) {
                            nVar.addAction(h.f2125i);
                            nVar.setScrollable(true);
                            return;
                        }
                        return;
                    }
                }
                return;
            }
        }
    }

    @Override // M.C0152b
    public boolean performAccessibilityAction(View view, int i2, Bundle bundle) {
        AppBarLayout appBarLayout = this.f12428d;
        if (i2 == 4096) {
            appBarLayout.setExpanded(false);
            return true;
        }
        if (i2 != 8192) {
            return super.performAccessibilityAction(view, i2, bundle);
        }
        AppBarLayout.BaseBehavior baseBehavior = this.f12430f;
        if (baseBehavior.a() != 0) {
            View d7 = AppBarLayout.BaseBehavior.d(baseBehavior, this.f12429e);
            if (!d7.canScrollVertically(-1)) {
                appBarLayout.setExpanded(true);
                return true;
            }
            int i7 = -appBarLayout.getDownNestedPreScrollRange();
            if (i7 != 0) {
                this.f12430f.onNestedPreScroll(this.f12429e, (CoordinatorLayout) this.f12428d, d7, 0, i7, new int[]{0, 0}, 1);
                return true;
            }
        }
        return false;
    }
}
