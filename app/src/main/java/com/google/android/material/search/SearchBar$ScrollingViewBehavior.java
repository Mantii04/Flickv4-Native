package com.google.android.material.search;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.appbar.AppBarLayout;

/* loaded from: classes2.dex */
public class SearchBar$ScrollingViewBehavior extends AppBarLayout.ScrollingViewBehavior {

    /* renamed from: p, reason: collision with root package name */
    public boolean f12781p;

    public SearchBar$ScrollingViewBehavior() {
        this.f12781p = false;
    }

    @Override // com.google.android.material.appbar.AppBarLayout.ScrollingViewBehavior, y.AbstractC1859c
    public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, View view, View view2) {
        boolean onDependentViewChanged = super.onDependentViewChanged(coordinatorLayout, view, view2);
        if (!this.f12781p && (view2 instanceof AppBarLayout)) {
            this.f12781p = true;
            AppBarLayout appBarLayout = (AppBarLayout) view2;
            appBarLayout.setBackgroundColor(0);
            appBarLayout.setTargetElevation(0.0f);
        }
        return onDependentViewChanged;
    }

    @Override // h3.o
    public boolean shouldHeaderOverlapScrollingChild() {
        return true;
    }

    public SearchBar$ScrollingViewBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f12781p = false;
    }
}
