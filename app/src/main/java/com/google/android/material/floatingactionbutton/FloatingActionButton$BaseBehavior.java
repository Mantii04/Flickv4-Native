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
import w3.AbstractC1779b;
import y.AbstractC1859c;
import y.C1862f;

/* loaded from: classes2.dex */
public class FloatingActionButton$BaseBehavior<T extends AbstractC1779b> extends AbstractC1859c {
    public FloatingActionButton$BaseBehavior() {
    }

    @Override // y.AbstractC1859c
    public /* synthetic */ boolean getInsetDodgeRect(CoordinatorLayout coordinatorLayout, View view, Rect rect) {
        if (view == null) {
            return getInsetDodgeRect(coordinatorLayout, (AbstractC1779b) null, rect);
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
            return onDependentViewChanged(coordinatorLayout, (AbstractC1779b) null, view2);
        }
        throw new ClassCastException();
    }

    @Override // y.AbstractC1859c
    public /* synthetic */ boolean onLayoutChild(CoordinatorLayout coordinatorLayout, View view, int i2) {
        if (view == null) {
            return onLayoutChild(coordinatorLayout, (AbstractC1779b) null, i2);
        }
        throw new ClassCastException();
    }

    public FloatingActionButton$BaseBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.FloatingActionButton_Behavior_Layout);
        obtainStyledAttributes.getBoolean(R.styleable.FloatingActionButton_Behavior_Layout_behavior_autoHide, true);
        obtainStyledAttributes.recycle();
    }

    public boolean getInsetDodgeRect(CoordinatorLayout coordinatorLayout, AbstractC1779b abstractC1779b, Rect rect) {
        throw null;
    }

    public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, AbstractC1779b abstractC1779b, View view) {
        if (view instanceof AppBarLayout) {
            throw null;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof C1862f ? ((C1862f) layoutParams).getBehavior() instanceof BottomSheetBehavior : false) {
            throw null;
        }
        return false;
    }

    public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, AbstractC1779b abstractC1779b, int i2) {
        List<View> dependencies = coordinatorLayout.getDependencies(abstractC1779b);
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
        coordinatorLayout.onLayoutChild(abstractC1779b, i2);
        throw null;
    }
}
