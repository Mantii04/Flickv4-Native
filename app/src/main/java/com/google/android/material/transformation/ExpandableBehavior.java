package com.google.android.material.transformation;

import M.AbstractC0181p0;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import java.util.List;
import v3.InterfaceC1761a;
import y.AbstractC1859c;

@Deprecated
/* loaded from: classes2.dex */
public abstract class ExpandableBehavior extends AbstractC1859c {
    public ExpandableBehavior() {
    }

    public InterfaceC1761a findExpandableWidget(CoordinatorLayout coordinatorLayout, View view) {
        List<View> dependencies = coordinatorLayout.getDependencies(view);
        int size = dependencies.size();
        for (int i2 = 0; i2 < size; i2++) {
            View view2 = dependencies.get(i2);
            if (layoutDependsOn(coordinatorLayout, view, view2)) {
                if (view2 == null) {
                    return null;
                }
                throw new ClassCastException();
            }
        }
        return null;
    }

    @Override // y.AbstractC1859c
    public abstract boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, View view, View view2);

    @Override // y.AbstractC1859c
    public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, View view, View view2) {
        view2.getClass();
        throw new ClassCastException();
    }

    @Override // y.AbstractC1859c
    public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, View view, int i2) {
        if (AbstractC0181p0.isLaidOut(view)) {
            return false;
        }
        findExpandableWidget(coordinatorLayout, view);
        return false;
    }

    public ExpandableBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
