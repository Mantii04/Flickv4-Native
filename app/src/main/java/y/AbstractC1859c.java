package y;

import M.h1;
import android.content.Context;
import android.graphics.Rect;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

/* renamed from: y.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1859c {
    public AbstractC1859c() {
    }

    public boolean blocksInteractionBelow(CoordinatorLayout coordinatorLayout, View view) {
        return getScrimOpacity(coordinatorLayout, view) > 0.0f;
    }

    public boolean getInsetDodgeRect(CoordinatorLayout coordinatorLayout, View view, Rect rect) {
        return false;
    }

    public int getScrimColor(CoordinatorLayout coordinatorLayout, View view) {
        return -16777216;
    }

    public float getScrimOpacity(CoordinatorLayout coordinatorLayout, View view) {
        return 0.0f;
    }

    public boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, View view, View view2) {
        return false;
    }

    public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, View view, View view2) {
        return false;
    }

    public boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        return false;
    }

    public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, View view, int i2) {
        return false;
    }

    public boolean onMeasureChild(CoordinatorLayout coordinatorLayout, View view, int i2, int i7, int i8, int i9) {
        return false;
    }

    public boolean onNestedFling(CoordinatorLayout coordinatorLayout, View view, View view2, float f3, float f7, boolean z6) {
        return false;
    }

    public boolean onNestedPreFling(CoordinatorLayout coordinatorLayout, View view, View view2, float f3, float f7) {
        return false;
    }

    @Deprecated
    public void onNestedPreScroll(CoordinatorLayout coordinatorLayout, View view, View view2, int i2, int i7, int[] iArr) {
    }

    @Deprecated
    public void onNestedScroll(CoordinatorLayout coordinatorLayout, View view, View view2, int i2, int i7, int i8, int i9) {
    }

    @Deprecated
    public void onNestedScrollAccepted(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i2) {
    }

    public boolean onRequestChildRectangleOnScreen(CoordinatorLayout coordinatorLayout, View view, Rect rect, boolean z6) {
        return false;
    }

    public Parcelable onSaveInstanceState(CoordinatorLayout coordinatorLayout, View view) {
        return View.BaseSavedState.EMPTY_STATE;
    }

    @Deprecated
    public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i2) {
        return false;
    }

    @Deprecated
    public void onStopNestedScroll(CoordinatorLayout coordinatorLayout, View view, View view2) {
    }

    public boolean onTouchEvent(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        return false;
    }

    public AbstractC1859c(Context context, AttributeSet attributeSet) {
    }

    public void onNestedPreScroll(CoordinatorLayout coordinatorLayout, View view, View view2, int i2, int i7, int[] iArr, int i8) {
        if (i8 == 0) {
            onNestedPreScroll(coordinatorLayout, view, view2, i2, i7, iArr);
        }
    }

    @Deprecated
    public void onNestedScroll(CoordinatorLayout coordinatorLayout, View view, View view2, int i2, int i7, int i8, int i9, int i10) {
        if (i10 == 0) {
            onNestedScroll(coordinatorLayout, view, view2, i2, i7, i8, i9);
        }
    }

    public void onNestedScrollAccepted(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i2, int i7) {
        if (i7 == 0) {
            onNestedScrollAccepted(coordinatorLayout, view, view2, view3, i2);
        }
    }

    public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i2, int i7) {
        if (i7 == 0) {
            return onStartNestedScroll(coordinatorLayout, view, view2, view3, i2);
        }
        return false;
    }

    public void onStopNestedScroll(CoordinatorLayout coordinatorLayout, View view, View view2, int i2) {
        if (i2 == 0) {
            onStopNestedScroll(coordinatorLayout, view, view2);
        }
    }

    public void onNestedScroll(CoordinatorLayout coordinatorLayout, View view, View view2, int i2, int i7, int i8, int i9, int i10, int[] iArr) {
        iArr[0] = iArr[0] + i8;
        iArr[1] = iArr[1] + i9;
        onNestedScroll(coordinatorLayout, view, view2, i2, i7, i8, i9, i10);
    }

    public void onDetachedFromLayoutParams() {
    }

    public void onAttachedToLayoutParams(C1862f c1862f) {
    }

    public h1 onApplyWindowInsets(CoordinatorLayout coordinatorLayout, View view, h1 h1Var) {
        return h1Var;
    }

    public void onDependentViewRemoved(CoordinatorLayout coordinatorLayout, View view, View view2) {
    }

    public void onRestoreInstanceState(CoordinatorLayout coordinatorLayout, View view, Parcelable parcelable) {
    }
}
