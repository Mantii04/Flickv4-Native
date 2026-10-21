package com.google.android.material.snackbar;

import I3.q;
import android.view.MotionEvent;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.behavior.SwipeDismissBehavior;

/* loaded from: classes2.dex */
public class BaseTransientBottomBar$Behavior extends SwipeDismissBehavior<View> {

    /* renamed from: s, reason: collision with root package name */
    public final q f12807s = new q(this);

    @Override // com.google.android.material.behavior.SwipeDismissBehavior
    public boolean canSwipeDismissView(View view) {
        return this.f12807s.canSwipeDismissView(view);
    }

    @Override // com.google.android.material.behavior.SwipeDismissBehavior, y.AbstractC1859c
    public boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        this.f12807s.onInterceptTouchEvent(coordinatorLayout, view, motionEvent);
        return super.onInterceptTouchEvent(coordinatorLayout, view, motionEvent);
    }
}
