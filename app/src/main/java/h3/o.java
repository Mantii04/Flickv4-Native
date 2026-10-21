package h3;

import M.AbstractC0181p0;
import M.AbstractC0185s;
import M.h1;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.appbar.AppBarLayout;
import y.AbstractC1859c;
import y.C1862f;

/* loaded from: classes2.dex */
public abstract class o extends p {

    /* renamed from: f, reason: collision with root package name */
    public final Rect f16548f;

    /* renamed from: j, reason: collision with root package name */
    public final Rect f16549j;

    /* renamed from: m, reason: collision with root package name */
    public int f16550m;

    /* renamed from: n, reason: collision with root package name */
    public int f16551n;

    public o() {
        this.f16548f = new Rect();
        this.f16549j = new Rect();
        this.f16550m = 0;
    }

    public final int a(View view) {
        int i2;
        if (this.f16551n == 0) {
            return 0;
        }
        float f3 = 0.0f;
        if (view instanceof AppBarLayout) {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            int totalScrollRange = appBarLayout.getTotalScrollRange();
            int downNestedPreScrollRange = appBarLayout.getDownNestedPreScrollRange();
            AbstractC1859c behavior = ((C1862f) appBarLayout.getLayoutParams()).getBehavior();
            int a7 = behavior instanceof AppBarLayout.BaseBehavior ? ((AppBarLayout.BaseBehavior) behavior).a() : 0;
            if ((downNestedPreScrollRange == 0 || totalScrollRange + a7 > downNestedPreScrollRange) && (i2 = totalScrollRange - downNestedPreScrollRange) != 0) {
                f3 = (a7 / i2) + 1.0f;
            }
        }
        int i7 = this.f16551n;
        return G.a.clamp((int) (f3 * i7), 0, i7);
    }

    public final int getOverlayTop() {
        return this.f16551n;
    }

    @Override // h3.p
    public void layoutChild(CoordinatorLayout coordinatorLayout, View view, int i2) {
        AppBarLayout b7 = AppBarLayout.ScrollingViewBehavior.b(coordinatorLayout.getDependencies(view));
        if (b7 == null) {
            super.layoutChild(coordinatorLayout, view, i2);
            this.f16550m = 0;
            return;
        }
        C1862f c1862f = (C1862f) view.getLayoutParams();
        int paddingLeft = coordinatorLayout.getPaddingLeft() + ((ViewGroup.MarginLayoutParams) c1862f).leftMargin;
        int bottom = b7.getBottom() + ((ViewGroup.MarginLayoutParams) c1862f).topMargin;
        int width = (coordinatorLayout.getWidth() - coordinatorLayout.getPaddingRight()) - ((ViewGroup.MarginLayoutParams) c1862f).rightMargin;
        int bottom2 = ((b7.getBottom() + coordinatorLayout.getHeight()) - coordinatorLayout.getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) c1862f).bottomMargin;
        Rect rect = this.f16548f;
        rect.set(paddingLeft, bottom, width, bottom2);
        h1 lastWindowInsets = coordinatorLayout.getLastWindowInsets();
        if (lastWindowInsets != null && AbstractC0181p0.getFitsSystemWindows(coordinatorLayout) && !AbstractC0181p0.getFitsSystemWindows(view)) {
            rect.left = lastWindowInsets.getSystemWindowInsetLeft() + rect.left;
            rect.right -= lastWindowInsets.getSystemWindowInsetRight();
        }
        int i7 = c1862f.f20938c;
        if (i7 == 0) {
            i7 = 8388659;
        }
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        Rect rect2 = this.f16549j;
        AbstractC0185s.apply(i7, measuredWidth, measuredHeight, rect, rect2, i2);
        int a7 = a(b7);
        view.layout(rect2.left, rect2.top - a7, rect2.right, rect2.bottom - a7);
        this.f16550m = rect2.top - b7.getBottom();
    }

    @Override // y.AbstractC1859c
    public boolean onMeasureChild(CoordinatorLayout coordinatorLayout, View view, int i2, int i7, int i8, int i9) {
        AppBarLayout b7;
        h1 lastWindowInsets;
        int i10 = view.getLayoutParams().height;
        if ((i10 != -1 && i10 != -2) || (b7 = AppBarLayout.ScrollingViewBehavior.b(coordinatorLayout.getDependencies(view))) == null) {
            return false;
        }
        int size = View.MeasureSpec.getSize(i8);
        if (size <= 0) {
            size = coordinatorLayout.getHeight();
        } else if (AbstractC0181p0.getFitsSystemWindows(b7) && (lastWindowInsets = coordinatorLayout.getLastWindowInsets()) != null) {
            size += lastWindowInsets.getSystemWindowInsetBottom() + lastWindowInsets.getSystemWindowInsetTop();
        }
        int totalScrollRange = b7.getTotalScrollRange() + size;
        int measuredHeight = b7.getMeasuredHeight();
        if (shouldHeaderOverlapScrollingChild()) {
            view.setTranslationY(-measuredHeight);
        } else {
            view.setTranslationY(0.0f);
            totalScrollRange -= measuredHeight;
        }
        coordinatorLayout.onMeasureChild(view, i2, i7, View.MeasureSpec.makeMeasureSpec(totalScrollRange, i10 == -1 ? 1073741824 : Integer.MIN_VALUE), i9);
        return true;
    }

    public final void setOverlayTop(int i2) {
        this.f16551n = i2;
    }

    public boolean shouldHeaderOverlapScrollingChild() {
        return false;
    }

    public o(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f16548f = new Rect();
        this.f16549j = new Rect();
        this.f16550m = 0;
    }
}
