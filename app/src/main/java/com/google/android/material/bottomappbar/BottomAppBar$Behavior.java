package com.google.android.material.bottomappbar;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import java.lang.ref.WeakReference;
import k3.AbstractC1098b;
import k3.ViewOnLayoutChangeListenerC1097a;

/* loaded from: classes2.dex */
public class BottomAppBar$Behavior extends HideBottomViewOnScrollBehavior<AbstractC1098b> {

    /* renamed from: u, reason: collision with root package name */
    public WeakReference f12456u;

    public BottomAppBar$Behavior() {
        new ViewOnLayoutChangeListenerC1097a(this);
        new Rect();
    }

    @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior, y.AbstractC1859c
    public /* synthetic */ boolean onLayoutChild(CoordinatorLayout coordinatorLayout, View view, int i2) {
        if (view == null) {
            return onLayoutChild(coordinatorLayout, (AbstractC1098b) null, i2);
        }
        throw new ClassCastException();
    }

    @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior, y.AbstractC1859c
    public /* synthetic */ boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i2, int i7) {
        if (view == null) {
            return onStartNestedScroll(coordinatorLayout, (AbstractC1098b) null, view2, view3, i2, i7);
        }
        throw new ClassCastException();
    }

    public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, AbstractC1098b abstractC1098b, int i2) {
        this.f12456u = new WeakReference(abstractC1098b);
        int i7 = AbstractC1098b.f17297g0;
        throw null;
    }

    public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, AbstractC1098b abstractC1098b, View view, View view2, int i2, int i7) {
        throw null;
    }

    public BottomAppBar$Behavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        new ViewOnLayoutChangeListenerC1097a(this);
        new Rect();
    }
}
