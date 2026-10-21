package com.google.android.material.floatingactionbutton;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.R;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import java.util.List;
import w3.AbstractC1778a;
import y.AbstractC1859c;
import y.C1862f;

/* loaded from: classes2.dex */
public class ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior<T extends AbstractC1778a> extends AbstractC1859c {
    public ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior() {
    }

    @Override // y.AbstractC1859c
    public /* synthetic */ boolean getInsetDodgeRect(CoordinatorLayout coordinatorLayout, View view, Rect rect) {
        if (view == null) {
            return getInsetDodgeRect(coordinatorLayout, (AbstractC1778a) null, rect);
        }
        throw new ClassCastException();
    }

    @Override // y.AbstractC1859c
    public void onAttachedToLayoutParams(C1862f c1862f) {
        if (c1862f.f20943h == 0) {
            c1862f.f20943h = 80;
        }
    }

    @Override // y.AbstractC1859c
    public /* synthetic */ boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, View view, View view2) {
        if (view == null) {
            return onDependentViewChanged(coordinatorLayout, (AbstractC1778a) null, view2);
        }
        throw new ClassCastException();
    }

    @Override // y.AbstractC1859c
    public /* synthetic */ boolean onLayoutChild(CoordinatorLayout coordinatorLayout, View view, int i2) {
        if (view == null) {
            return onLayoutChild(coordinatorLayout, (AbstractC1778a) null, i2);
        }
        throw new ClassCastException();
    }

    public ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ExtendedFloatingActionButton_Behavior_Layout);
        obtainStyledAttributes.getBoolean(R.styleable.ExtendedFloatingActionButton_Behavior_Layout_behavior_autoHide, false);
        obtainStyledAttributes.getBoolean(R.styleable.ExtendedFloatingActionButton_Behavior_Layout_behavior_autoShrink, true);
        obtainStyledAttributes.recycle();
    }

    public boolean getInsetDodgeRect(CoordinatorLayout coordinatorLayout, AbstractC1778a abstractC1778a, Rect rect) {
        return super.getInsetDodgeRect(coordinatorLayout, (View) abstractC1778a, rect);
    }

    public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, AbstractC1778a abstractC1778a, View view) {
        if (view instanceof AppBarLayout) {
            throw null;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof C1862f ? ((C1862f) layoutParams).getBehavior() instanceof BottomSheetBehavior : false) {
            throw null;
        }
        return false;
    }

    public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, AbstractC1778a abstractC1778a, int i2) {
        List<View> dependencies = coordinatorLayout.getDependencies(abstractC1778a);
        int size = dependencies.size();
        for (int i7 = 0; i7 < size; i7++) {
            View view = dependencies.get(i7);
            if (view instanceof AppBarLayout) {
                throw null;
            }
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof C1862f ? ((C1862f) layoutParams).getBehavior() instanceof BottomSheetBehavior : false) {
                throw null;
            }
        }
        coordinatorLayout.onLayoutChild(abstractC1778a, i2);
        return true;
    }
}
