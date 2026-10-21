package androidx.core.widget;

import M.AbstractC0181p0;
import M.C0176n;
import M.F;
import M.G;
import M.H;
import M.J;
import M.K;
import S.j;
import S.o;
import S.p;
import S.q;
import S.r;
import S.t;
import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.AnimationUtils;
import android.widget.EdgeEffect;
import android.widget.FrameLayout;
import android.widget.OverScroller;
import androidx.media3.common.util.Log;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class NestedScrollView extends FrameLayout implements J, G {

    /* renamed from: K, reason: collision with root package name */
    public static final float f5566K = (float) (Math.log(0.78d) / Math.log(0.9d));

    /* renamed from: L, reason: collision with root package name */
    public static final o f5567L = new o();

    /* renamed from: M, reason: collision with root package name */
    public static final int[] f5568M = {R.attr.fillViewport};

    /* renamed from: A, reason: collision with root package name */
    public int f5569A;

    /* renamed from: B, reason: collision with root package name */
    public final int[] f5570B;

    /* renamed from: C, reason: collision with root package name */
    public final int[] f5571C;

    /* renamed from: D, reason: collision with root package name */
    public int f5572D;

    /* renamed from: E, reason: collision with root package name */
    public int f5573E;

    /* renamed from: F, reason: collision with root package name */
    public t f5574F;

    /* renamed from: G, reason: collision with root package name */
    public final K f5575G;

    /* renamed from: H, reason: collision with root package name */
    public final H f5576H;

    /* renamed from: I, reason: collision with root package name */
    public float f5577I;

    /* renamed from: J, reason: collision with root package name */
    public final C0176n f5578J;

    /* renamed from: b, reason: collision with root package name */
    public final float f5579b;

    /* renamed from: e, reason: collision with root package name */
    public long f5580e;

    /* renamed from: f, reason: collision with root package name */
    public final Rect f5581f;

    /* renamed from: j, reason: collision with root package name */
    public final OverScroller f5582j;

    /* renamed from: m, reason: collision with root package name */
    public final EdgeEffect f5583m;

    /* renamed from: n, reason: collision with root package name */
    public final EdgeEffect f5584n;

    /* renamed from: p, reason: collision with root package name */
    public int f5585p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f5586q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f5587r;

    /* renamed from: s, reason: collision with root package name */
    public View f5588s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f5589t;

    /* renamed from: u, reason: collision with root package name */
    public VelocityTracker f5590u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f5591v;

    /* renamed from: w, reason: collision with root package name */
    public boolean f5592w;

    /* renamed from: x, reason: collision with root package name */
    public final int f5593x;

    /* renamed from: y, reason: collision with root package name */
    public final int f5594y;

    /* renamed from: z, reason: collision with root package name */
    public final int f5595z;

    public NestedScrollView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, androidx.core.R.attr.nestedScrollViewStyle);
    }

    public static boolean a(View view, NestedScrollView nestedScrollView) {
        if (view == nestedScrollView) {
            return true;
        }
        Object parent = view.getParent();
        return (parent instanceof ViewGroup) && a((View) parent, nestedScrollView);
    }

    @Override // android.view.ViewGroup
    public void addView(View view) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(view);
    }

    public boolean arrowScroll(int i2) {
        View findFocus = findFocus();
        if (findFocus == this) {
            findFocus = null;
        }
        View findNextFocus = FocusFinder.getInstance().findNextFocus(this, findFocus, i2);
        int maxScrollAmount = getMaxScrollAmount();
        if (findNextFocus == null || !b(findNextFocus, maxScrollAmount, getHeight())) {
            if (i2 == 33 && getScrollY() < maxScrollAmount) {
                maxScrollAmount = getScrollY();
            } else if (i2 == 130 && getChildCount() > 0) {
                View childAt = getChildAt(0);
                maxScrollAmount = Math.min((childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin) - ((getHeight() + getScrollY()) - getPaddingBottom()), maxScrollAmount);
            }
            if (maxScrollAmount == 0) {
                return false;
            }
            if (i2 != 130) {
                maxScrollAmount = -maxScrollAmount;
            }
            g(maxScrollAmount, 0, 1, true);
        } else {
            Rect rect = this.f5581f;
            findNextFocus.getDrawingRect(rect);
            offsetDescendantRectToMyCoords(findNextFocus, rect);
            g(computeScrollDeltaToGetChildRectOnScreen(rect), 0, 1, true);
            findNextFocus.requestFocus(i2);
        }
        if (findFocus != null && findFocus.isFocused() && !b(findFocus, 0, getHeight())) {
            int descendantFocusability = getDescendantFocusability();
            setDescendantFocusability(131072);
            requestFocus();
            setDescendantFocusability(descendantFocusability);
        }
        return true;
    }

    public final boolean b(View view, int i2, int i7) {
        Rect rect = this.f5581f;
        view.getDrawingRect(rect);
        offsetDescendantRectToMyCoords(view, rect);
        return rect.bottom + i2 >= getScrollY() && rect.top - i2 <= getScrollY() + i7;
    }

    public final void c(int i2, int i7, int[] iArr) {
        int scrollY = getScrollY();
        scrollBy(0, i2);
        int scrollY2 = getScrollY() - scrollY;
        if (iArr != null) {
            iArr[1] = iArr[1] + scrollY2;
        }
        this.f5576H.dispatchNestedScroll(0, scrollY2, 0, i2 - scrollY2, null, i7, iArr);
    }

    @Override // android.view.View
    public int computeHorizontalScrollExtent() {
        return super.computeHorizontalScrollExtent();
    }

    @Override // android.view.View
    public int computeHorizontalScrollOffset() {
        return super.computeHorizontalScrollOffset();
    }

    @Override // android.view.View
    public int computeHorizontalScrollRange() {
        return super.computeHorizontalScrollRange();
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00e5  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void computeScroll() {
        /*
            Method dump skipped, instructions count: 233
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.NestedScrollView.computeScroll():void");
    }

    public int computeScrollDeltaToGetChildRectOnScreen(Rect rect) {
        if (getChildCount() == 0) {
            return 0;
        }
        int height = getHeight();
        int scrollY = getScrollY();
        int i2 = scrollY + height;
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        if (rect.top > 0) {
            scrollY += verticalFadingEdgeLength;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        int i7 = rect.bottom < (childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin ? i2 - verticalFadingEdgeLength : i2;
        int i8 = rect.bottom;
        if (i8 > i7 && rect.top > scrollY) {
            return Math.min(rect.height() > height ? rect.top - scrollY : rect.bottom - i7, (childAt.getBottom() + layoutParams.bottomMargin) - i2);
        }
        if (rect.top >= scrollY || i8 >= i7) {
            return 0;
        }
        return Math.max(rect.height() > height ? 0 - (i7 - rect.bottom) : 0 - (scrollY - rect.top), -getScrollY());
    }

    @Override // android.view.View
    public int computeVerticalScrollExtent() {
        return super.computeVerticalScrollExtent();
    }

    @Override // android.view.View
    public int computeVerticalScrollOffset() {
        return Math.max(0, super.computeVerticalScrollOffset());
    }

    @Override // android.view.View
    public int computeVerticalScrollRange() {
        int childCount = getChildCount();
        int height = (getHeight() - getPaddingBottom()) - getPaddingTop();
        if (childCount == 0) {
            return height;
        }
        View childAt = getChildAt(0);
        int bottom = childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin;
        int scrollY = getScrollY();
        int max = Math.max(0, bottom - height);
        return scrollY < 0 ? bottom - scrollY : scrollY > max ? (scrollY - max) + bottom : bottom;
    }

    public final void d(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f5569A) {
            int i2 = actionIndex == 0 ? 1 : 0;
            this.f5585p = (int) motionEvent.getY(i2);
            this.f5569A = motionEvent.getPointerId(i2);
            VelocityTracker velocityTracker = this.f5590u;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || executeKeyEvent(keyEvent);
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f3, float f7, boolean z6) {
        return this.f5576H.dispatchNestedFling(f3, f7, z6);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f3, float f7) {
        return this.f5576H.dispatchNestedPreFling(f3, f7);
    }

    public boolean dispatchNestedPreScroll(int i2, int i7, int[] iArr, int[] iArr2, int i8) {
        return this.f5576H.dispatchNestedPreScroll(i2, i7, iArr, iArr2, i8);
    }

    public void dispatchNestedScroll(int i2, int i7, int i8, int i9, int[] iArr, int i10, int[] iArr2) {
        this.f5576H.dispatchNestedScroll(i2, i7, i8, i9, iArr, i10, iArr2);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        int i2;
        super.draw(canvas);
        int scrollY = getScrollY();
        EdgeEffect edgeEffect = this.f5583m;
        int i7 = 0;
        if (!edgeEffect.isFinished()) {
            int save = canvas.save();
            int width = getWidth();
            int height = getHeight();
            int min = Math.min(0, scrollY);
            if (p.a(this)) {
                width -= getPaddingRight() + getPaddingLeft();
                i2 = getPaddingLeft();
            } else {
                i2 = 0;
            }
            if (p.a(this)) {
                height -= getPaddingBottom() + getPaddingTop();
                min += getPaddingTop();
            }
            canvas.translate(i2, min);
            edgeEffect.setSize(width, height);
            if (edgeEffect.draw(canvas)) {
                postInvalidateOnAnimation();
            }
            canvas.restoreToCount(save);
        }
        EdgeEffect edgeEffect2 = this.f5584n;
        if (edgeEffect2.isFinished()) {
            return;
        }
        int save2 = canvas.save();
        int width2 = getWidth();
        int height2 = getHeight();
        int max = Math.max(getScrollRange(), scrollY) + height2;
        if (p.a(this)) {
            width2 -= getPaddingRight() + getPaddingLeft();
            i7 = getPaddingLeft();
        }
        if (p.a(this)) {
            height2 -= getPaddingBottom() + getPaddingTop();
            max -= getPaddingBottom();
        }
        canvas.translate(i7 - width2, max);
        canvas.rotate(180.0f, width2, 0.0f);
        edgeEffect2.setSize(width2, height2);
        if (edgeEffect2.draw(canvas)) {
            postInvalidateOnAnimation();
        }
        canvas.restoreToCount(save2);
    }

    public final boolean e(int i2, int i7, int i8, int i9) {
        int i10;
        boolean z6;
        int i11;
        boolean z7;
        getOverScrollMode();
        computeHorizontalScrollRange();
        computeHorizontalScrollExtent();
        computeVerticalScrollRange();
        computeVerticalScrollExtent();
        int i12 = i8 + i2;
        if (i7 <= 0 && i7 >= 0) {
            i10 = i7;
            z6 = false;
        } else {
            i10 = 0;
            z6 = true;
        }
        if (i12 > i9) {
            i11 = i9;
        } else {
            if (i12 >= 0) {
                i11 = i12;
                z7 = false;
                if (z7 && !hasNestedScrollingParent(1)) {
                    this.f5582j.springBack(i10, i11, 0, 0, 0, getScrollRange());
                }
                onOverScrolled(i10, i11, z6, z7);
                return !z6 || z7;
            }
            i11 = 0;
        }
        z7 = true;
        if (z7) {
            this.f5582j.springBack(i10, i11, 0, 0, 0, getScrollRange());
        }
        onOverScrolled(i10, i11, z6, z7);
        if (z6) {
        }
    }

    public boolean executeKeyEvent(KeyEvent keyEvent) {
        this.f5581f.setEmpty();
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            if (childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin > (getHeight() - getPaddingTop()) - getPaddingBottom()) {
                if (keyEvent.getAction() == 0) {
                    int keyCode = keyEvent.getKeyCode();
                    if (keyCode == 19) {
                        return keyEvent.isAltPressed() ? fullScroll(33) : arrowScroll(33);
                    }
                    if (keyCode == 20) {
                        return keyEvent.isAltPressed() ? fullScroll(130) : arrowScroll(130);
                    }
                    if (keyCode == 62) {
                        pageScroll(keyEvent.isShiftPressed() ? 33 : 130);
                        return false;
                    }
                    if (keyCode == 92) {
                        return fullScroll(33);
                    }
                    if (keyCode == 93) {
                        return fullScroll(130);
                    }
                    if (keyCode == 122) {
                        pageScroll(33);
                        return false;
                    }
                    if (keyCode == 123) {
                        pageScroll(130);
                        return false;
                    }
                }
                return false;
            }
        }
        if (isFocused() && keyEvent.getKeyCode() != 4) {
            View findFocus = findFocus();
            if (findFocus == this) {
                findFocus = null;
            }
            View findNextFocus = FocusFinder.getInstance().findNextFocus(this, findFocus, 130);
            if (findNextFocus != null && findNextFocus != this && findNextFocus.requestFocus(130)) {
                return true;
            }
        }
        return false;
    }

    public final boolean f(int i2, int i7, int i8) {
        boolean z6;
        int height = getHeight();
        int scrollY = getScrollY();
        int i9 = height + scrollY;
        boolean z7 = i2 == 33;
        ArrayList<View> focusables = getFocusables(2);
        int size = focusables.size();
        View view = null;
        boolean z8 = false;
        for (int i10 = 0; i10 < size; i10++) {
            View view2 = focusables.get(i10);
            int top = view2.getTop();
            int bottom = view2.getBottom();
            if (i7 < bottom && top < i8) {
                boolean z9 = i7 < top && bottom < i8;
                if (view == null) {
                    view = view2;
                    z8 = z9;
                } else {
                    boolean z10 = (z7 && top < view.getTop()) || (!z7 && bottom > view.getBottom());
                    if (z8) {
                        if (z9) {
                            if (!z10) {
                            }
                            view = view2;
                        }
                    } else if (z9) {
                        view = view2;
                        z8 = true;
                    } else {
                        if (!z10) {
                        }
                        view = view2;
                    }
                }
            }
        }
        if (view == null) {
            view = this;
        }
        if (i7 < scrollY || i8 > i9) {
            g(z7 ? i7 - scrollY : i8 - i9, 0, 1, true);
            z6 = true;
        } else {
            z6 = false;
        }
        if (view != findFocus()) {
            view.requestFocus(i2);
        }
        return z6;
    }

    public void fling(int i2) {
        if (getChildCount() > 0) {
            this.f5582j.fling(getScrollX(), getScrollY(), 0, i2, 0, 0, Integer.MIN_VALUE, Log.LOG_LEVEL_OFF, 0, 0);
            startNestedScroll(2, 1);
            this.f5573E = getScrollY();
            postInvalidateOnAnimation();
        }
    }

    public boolean fullScroll(int i2) {
        int childCount;
        boolean z6 = i2 == 130;
        int height = getHeight();
        Rect rect = this.f5581f;
        rect.top = 0;
        rect.bottom = height;
        if (z6 && (childCount = getChildCount()) > 0) {
            View childAt = getChildAt(childCount - 1);
            rect.bottom = getPaddingBottom() + childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin;
            rect.top = rect.bottom - height;
        }
        return f(i2, rect.top, rect.bottom);
    }

    public final int g(int i2, int i7, int i8, boolean z6) {
        int i9;
        int i10;
        VelocityTracker velocityTracker;
        if (i8 == 1) {
            startNestedScroll(2, i8);
        }
        boolean dispatchNestedPreScroll = dispatchNestedPreScroll(0, i2, this.f5571C, this.f5570B, i8);
        boolean z7 = false;
        int[] iArr = this.f5571C;
        int[] iArr2 = this.f5570B;
        if (dispatchNestedPreScroll) {
            i9 = i2 - iArr[1];
            i10 = iArr2[1];
        } else {
            i9 = i2;
            i10 = 0;
        }
        int scrollY = getScrollY();
        int scrollRange = getScrollRange();
        int overScrollMode = getOverScrollMode();
        boolean z8 = (overScrollMode == 0 || (overScrollMode == 1 && getScrollRange() > 0)) && !z6;
        boolean z9 = e(i9, 0, scrollY, scrollRange) && !hasNestedScrollingParent(i8);
        int scrollY2 = getScrollY() - scrollY;
        iArr[1] = 0;
        dispatchNestedScroll(0, scrollY2, 0, i9 - scrollY2, this.f5570B, i8, iArr);
        int i11 = i10 + iArr2[1];
        int i12 = i9 - iArr[1];
        int i13 = scrollY + i12;
        EdgeEffect edgeEffect = this.f5584n;
        EdgeEffect edgeEffect2 = this.f5583m;
        if (i13 < 0) {
            if (z8) {
                j.onPullDistance(edgeEffect2, (-i12) / getHeight(), i7 / getWidth());
                if (!edgeEffect.isFinished()) {
                    edgeEffect.onRelease();
                }
            }
        } else if (i13 > scrollRange && z8) {
            j.onPullDistance(edgeEffect, i12 / getHeight(), 1.0f - (i7 / getWidth()));
            if (!edgeEffect2.isFinished()) {
                edgeEffect2.onRelease();
            }
        }
        if (edgeEffect2.isFinished() && edgeEffect.isFinished()) {
            z7 = z9;
        } else {
            postInvalidateOnAnimation();
        }
        if (z7 && i8 == 0 && (velocityTracker = this.f5590u) != null) {
            velocityTracker.clear();
        }
        if (i8 == 1) {
            stopNestedScroll(i8);
            edgeEffect2.onRelease();
            edgeEffect.onRelease();
        }
        return i11;
    }

    @Override // android.view.View
    public float getBottomFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int bottom = ((childAt.getBottom() + layoutParams.bottomMargin) - getScrollY()) - (getHeight() - getPaddingBottom());
        if (bottom < verticalFadingEdgeLength) {
            return bottom / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    public int getMaxScrollAmount() {
        return (int) (getHeight() * 0.5f);
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.f5575G.getNestedScrollAxes();
    }

    public int getScrollRange() {
        if (getChildCount() <= 0) {
            return 0;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        return Math.max(0, ((childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin) - ((getHeight() - getPaddingTop()) - getPaddingBottom()));
    }

    @Override // android.view.View
    public float getTopFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int scrollY = getScrollY();
        if (scrollY < verticalFadingEdgeLength) {
            return scrollY / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    public float getVerticalScrollFactorCompat() {
        if (this.f5577I == 0.0f) {
            TypedValue typedValue = new TypedValue();
            Context context = getContext();
            if (!context.getTheme().resolveAttribute(R.attr.listPreferredItemHeight, typedValue, true)) {
                throw new IllegalStateException("Expected theme to define listPreferredItemHeight.");
            }
            this.f5577I = typedValue.getDimension(context.getResources().getDisplayMetrics());
        }
        return this.f5577I;
    }

    public final boolean h(EdgeEffect edgeEffect, int i2) {
        if (i2 > 0) {
            return true;
        }
        float distance = j.getDistance(edgeEffect) * getHeight();
        float abs = Math.abs(-i2) * 0.35f;
        float f3 = this.f5579b * 0.015f;
        double log = Math.log(abs / f3);
        double d7 = f5566K;
        return ((float) (Math.exp((d7 / (d7 - 1.0d)) * log) * ((double) f3))) < distance;
    }

    public boolean hasNestedScrollingParent(int i2) {
        return this.f5576H.hasNestedScrollingParent(i2);
    }

    public final void i(int i2, int i7, boolean z6) {
        if (getChildCount() == 0) {
            return;
        }
        if (AnimationUtils.currentAnimationTimeMillis() - this.f5580e > 250) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int height = childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            int height2 = (getHeight() - getPaddingTop()) - getPaddingBottom();
            int scrollY = getScrollY();
            this.f5582j.startScroll(getScrollX(), scrollY, 0, Math.max(0, Math.min(i7 + scrollY, Math.max(0, height - height2))) - scrollY, 250);
            if (z6) {
                startNestedScroll(2, 1);
            } else {
                stopNestedScroll(1);
            }
            this.f5573E = getScrollY();
            postInvalidateOnAnimation();
        } else {
            if (!this.f5582j.isFinished()) {
                this.f5582j.abortAnimation();
                stopNestedScroll(1);
            }
            scrollBy(i2, i7);
        }
        this.f5580e = AnimationUtils.currentAnimationTimeMillis();
    }

    @Override // android.view.View
    public boolean isNestedScrollingEnabled() {
        return this.f5576H.isNestedScrollingEnabled();
    }

    public final boolean j(MotionEvent motionEvent) {
        boolean z6;
        EdgeEffect edgeEffect = this.f5583m;
        if (j.getDistance(edgeEffect) != 0.0f) {
            j.onPullDistance(edgeEffect, 0.0f, motionEvent.getX() / getWidth());
            z6 = true;
        } else {
            z6 = false;
        }
        EdgeEffect edgeEffect2 = this.f5584n;
        if (j.getDistance(edgeEffect2) == 0.0f) {
            return z6;
        }
        j.onPullDistance(edgeEffect2, 0.0f, 1.0f - (motionEvent.getX() / getWidth()));
        return true;
    }

    @Override // android.view.ViewGroup
    public void measureChild(View view, int i2, int i7) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        view.measure(ViewGroup.getChildMeasureSpec(i2, getPaddingRight() + getPaddingLeft(), layoutParams.width), View.MeasureSpec.makeMeasureSpec(0, 0));
    }

    @Override // android.view.ViewGroup
    public void measureChildWithMargins(View view, int i2, int i7, int i8, int i9) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(ViewGroup.getChildMeasureSpec(i2, getPaddingRight() + getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i7, marginLayoutParams.width), View.MeasureSpec.makeMeasureSpec(marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, 0));
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f5587r = false;
    }

    @Override // android.view.View
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        int i2;
        int i7;
        float f3;
        if (motionEvent.getAction() == 8 && !this.f5589t) {
            if (F.isFromSource(motionEvent, 2)) {
                i2 = 9;
                f3 = motionEvent.getAxisValue(9);
                i7 = (int) motionEvent.getX();
            } else if (F.isFromSource(motionEvent, 4194304)) {
                float axisValue = motionEvent.getAxisValue(26);
                i7 = getWidth() / 2;
                i2 = 26;
                f3 = axisValue;
            } else {
                i2 = 0;
                i7 = 0;
                f3 = 0.0f;
            }
            if (f3 != 0.0f) {
                g(-((int) (getVerticalScrollFactorCompat() * f3)), i7, 1, F.isFromSource(motionEvent, 8194));
                if (i2 != 0) {
                    this.f5578J.onMotionEvent(motionEvent, i2);
                }
                return true;
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        boolean z6 = true;
        if (action == 2 && this.f5589t) {
            return true;
        }
        int i2 = action & 255;
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 == 2) {
                    int i7 = this.f5569A;
                    if (i7 != -1) {
                        int findPointerIndex = motionEvent.findPointerIndex(i7);
                        if (findPointerIndex == -1) {
                            android.util.Log.e("NestedScrollView", "Invalid pointerId=" + i7 + " in onInterceptTouchEvent");
                        } else {
                            int y6 = (int) motionEvent.getY(findPointerIndex);
                            if (Math.abs(y6 - this.f5585p) > this.f5593x && (2 & getNestedScrollAxes()) == 0) {
                                this.f5589t = true;
                                this.f5585p = y6;
                                if (this.f5590u == null) {
                                    this.f5590u = VelocityTracker.obtain();
                                }
                                this.f5590u.addMovement(motionEvent);
                                this.f5572D = 0;
                                ViewParent parent = getParent();
                                if (parent != null) {
                                    parent.requestDisallowInterceptTouchEvent(true);
                                }
                            }
                        }
                    }
                } else if (i2 != 3) {
                    if (i2 == 6) {
                        d(motionEvent);
                    }
                }
            }
            this.f5589t = false;
            this.f5569A = -1;
            VelocityTracker velocityTracker = this.f5590u;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.f5590u = null;
            }
            if (this.f5582j.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                postInvalidateOnAnimation();
            }
            stopNestedScroll(0);
        } else {
            int y7 = (int) motionEvent.getY();
            int x6 = (int) motionEvent.getX();
            if (getChildCount() > 0) {
                int scrollY = getScrollY();
                View childAt = getChildAt(0);
                if (y7 >= childAt.getTop() - scrollY && y7 < childAt.getBottom() - scrollY && x6 >= childAt.getLeft() && x6 < childAt.getRight()) {
                    this.f5585p = y7;
                    this.f5569A = motionEvent.getPointerId(0);
                    VelocityTracker velocityTracker2 = this.f5590u;
                    if (velocityTracker2 == null) {
                        this.f5590u = VelocityTracker.obtain();
                    } else {
                        velocityTracker2.clear();
                    }
                    this.f5590u.addMovement(motionEvent);
                    this.f5582j.computeScrollOffset();
                    if (!j(motionEvent) && this.f5582j.isFinished()) {
                        z6 = false;
                    }
                    this.f5589t = z6;
                    startNestedScroll(2, 0);
                }
            }
            if (!j(motionEvent) && this.f5582j.isFinished()) {
                z6 = false;
            }
            this.f5589t = z6;
            VelocityTracker velocityTracker3 = this.f5590u;
            if (velocityTracker3 != null) {
                velocityTracker3.recycle();
                this.f5590u = null;
            }
        }
        return this.f5589t;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z6, int i2, int i7, int i8, int i9) {
        int i10;
        super.onLayout(z6, i2, i7, i8, i9);
        int i11 = 0;
        this.f5586q = false;
        View view = this.f5588s;
        if (view != null && a(view, this)) {
            View view2 = this.f5588s;
            Rect rect = this.f5581f;
            view2.getDrawingRect(rect);
            offsetDescendantRectToMyCoords(view2, rect);
            int computeScrollDeltaToGetChildRectOnScreen = computeScrollDeltaToGetChildRectOnScreen(rect);
            if (computeScrollDeltaToGetChildRectOnScreen != 0) {
                scrollBy(0, computeScrollDeltaToGetChildRectOnScreen);
            }
        }
        this.f5588s = null;
        if (!this.f5587r) {
            if (this.f5574F != null) {
                scrollTo(getScrollX(), this.f5574F.f3243b);
                this.f5574F = null;
            }
            if (getChildCount() > 0) {
                View childAt = getChildAt(0);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                i10 = childAt.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            } else {
                i10 = 0;
            }
            int paddingTop = ((i9 - i7) - getPaddingTop()) - getPaddingBottom();
            int scrollY = getScrollY();
            if (paddingTop < i10 && scrollY >= 0) {
                i11 = paddingTop + scrollY > i10 ? i10 - paddingTop : scrollY;
            }
            if (i11 != scrollY) {
                scrollTo(getScrollX(), i11);
            }
        }
        scrollTo(getScrollX(), getScrollY());
        this.f5587r = true;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i2, int i7) {
        super.onMeasure(i2, i7);
        if (this.f5591v && View.MeasureSpec.getMode(i7) != 0 && getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int measuredHeight2 = (((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom()) - layoutParams.topMargin) - layoutParams.bottomMargin;
            if (measuredHeight < measuredHeight2) {
                childAt.measure(ViewGroup.getChildMeasureSpec(i2, getPaddingRight() + getPaddingLeft() + layoutParams.leftMargin + layoutParams.rightMargin, layoutParams.width), View.MeasureSpec.makeMeasureSpec(measuredHeight2, 1073741824));
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onNestedFling(View view, float f3, float f7, boolean z6) {
        if (z6) {
            return false;
        }
        dispatchNestedFling(0.0f, f7, true);
        fling((int) f7);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onNestedPreFling(View view, float f3, float f7) {
        return dispatchNestedPreFling(f3, f7);
    }

    @Override // M.I
    public void onNestedPreScroll(View view, int i2, int i7, int[] iArr, int i8) {
        dispatchNestedPreScroll(i2, i7, iArr, null, i8);
    }

    @Override // M.J
    public void onNestedScroll(View view, int i2, int i7, int i8, int i9, int i10, int[] iArr) {
        c(i9, i10, iArr);
    }

    @Override // M.I
    public void onNestedScrollAccepted(View view, View view2, int i2, int i7) {
        this.f5575G.onNestedScrollAccepted(view, view2, i2, i7);
        startNestedScroll(2, i7);
    }

    @Override // android.view.View
    public void onOverScrolled(int i2, int i7, boolean z6, boolean z7) {
        super.scrollTo(i2, i7);
    }

    @Override // android.view.ViewGroup
    public boolean onRequestFocusInDescendants(int i2, Rect rect) {
        if (i2 == 2) {
            i2 = 130;
        } else if (i2 == 1) {
            i2 = 33;
        }
        View findNextFocus = rect == null ? FocusFinder.getInstance().findNextFocus(this, null, i2) : FocusFinder.getInstance().findNextFocusFromRect(this, rect, i2);
        if (findNextFocus != null && b(findNextFocus, 0, getHeight())) {
            return findNextFocus.requestFocus(i2, rect);
        }
        return false;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof t)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        t tVar = (t) parcelable;
        super.onRestoreInstanceState(tVar.getSuperState());
        this.f5574F = tVar;
        requestLayout();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        t tVar = new t(super.onSaveInstanceState());
        tVar.f3243b = getScrollY();
        return tVar;
    }

    @Override // android.view.View
    public void onScrollChanged(int i2, int i7, int i8, int i9) {
        super.onScrollChanged(i2, i7, i8, i9);
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i7, int i8, int i9) {
        super.onSizeChanged(i2, i7, i8, i9);
        View findFocus = findFocus();
        if (findFocus == null || this == findFocus || !b(findFocus, 0, i9)) {
            return;
        }
        Rect rect = this.f5581f;
        findFocus.getDrawingRect(rect);
        offsetDescendantRectToMyCoords(findFocus, rect);
        int computeScrollDeltaToGetChildRectOnScreen = computeScrollDeltaToGetChildRectOnScreen(rect);
        if (computeScrollDeltaToGetChildRectOnScreen != 0) {
            if (this.f5592w) {
                smoothScrollBy(0, computeScrollDeltaToGetChildRectOnScreen);
            } else {
                scrollBy(0, computeScrollDeltaToGetChildRectOnScreen);
            }
        }
    }

    @Override // M.I
    public boolean onStartNestedScroll(View view, View view2, int i2, int i7) {
        return (i2 & 2) != 0;
    }

    @Override // M.I
    public void onStopNestedScroll(View view, int i2) {
        this.f5575G.onStopNestedScroll(view, i2);
        stopNestedScroll(i2);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        ViewParent parent;
        if (this.f5590u == null) {
            this.f5590u = VelocityTracker.obtain();
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f5572D = 0;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        float f3 = 0.0f;
        obtain.offsetLocation(0.0f, this.f5572D);
        if (actionMasked != 0) {
            EdgeEffect edgeEffect = this.f5584n;
            EdgeEffect edgeEffect2 = this.f5583m;
            if (actionMasked == 1) {
                VelocityTracker velocityTracker = this.f5590u;
                velocityTracker.computeCurrentVelocity(1000, this.f5595z);
                int yVelocity = (int) velocityTracker.getYVelocity(this.f5569A);
                if (Math.abs(yVelocity) >= this.f5594y) {
                    if (j.getDistance(edgeEffect2) != 0.0f) {
                        if (h(edgeEffect2, yVelocity)) {
                            edgeEffect2.onAbsorb(yVelocity);
                        } else {
                            fling(-yVelocity);
                        }
                    } else if (j.getDistance(edgeEffect) != 0.0f) {
                        int i2 = -yVelocity;
                        if (h(edgeEffect, i2)) {
                            edgeEffect.onAbsorb(i2);
                        } else {
                            fling(i2);
                        }
                    } else {
                        int i7 = -yVelocity;
                        float f7 = i7;
                        if (!dispatchNestedPreFling(0.0f, f7)) {
                            dispatchNestedFling(0.0f, f7, true);
                            fling(i7);
                        }
                    }
                } else if (this.f5582j.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                    postInvalidateOnAnimation();
                }
                this.f5569A = -1;
                this.f5589t = false;
                VelocityTracker velocityTracker2 = this.f5590u;
                if (velocityTracker2 != null) {
                    velocityTracker2.recycle();
                    this.f5590u = null;
                }
                stopNestedScroll(0);
                this.f5583m.onRelease();
                this.f5584n.onRelease();
            } else if (actionMasked == 2) {
                int findPointerIndex = motionEvent.findPointerIndex(this.f5569A);
                if (findPointerIndex == -1) {
                    android.util.Log.e("NestedScrollView", "Invalid pointerId=" + this.f5569A + " in onTouchEvent");
                } else {
                    int y6 = (int) motionEvent.getY(findPointerIndex);
                    int i8 = this.f5585p - y6;
                    float x6 = motionEvent.getX(findPointerIndex) / getWidth();
                    float height = i8 / getHeight();
                    if (j.getDistance(edgeEffect2) != 0.0f) {
                        float f8 = -j.onPullDistance(edgeEffect2, -height, x6);
                        if (j.getDistance(edgeEffect2) == 0.0f) {
                            edgeEffect2.onRelease();
                        }
                        f3 = f8;
                    } else if (j.getDistance(edgeEffect) != 0.0f) {
                        float onPullDistance = j.onPullDistance(edgeEffect, height, 1.0f - x6);
                        if (j.getDistance(edgeEffect) == 0.0f) {
                            edgeEffect.onRelease();
                        }
                        f3 = onPullDistance;
                    }
                    int round = Math.round(f3 * getHeight());
                    if (round != 0) {
                        invalidate();
                    }
                    int i9 = i8 - round;
                    if (!this.f5589t && Math.abs(i9) > this.f5593x) {
                        ViewParent parent2 = getParent();
                        if (parent2 != null) {
                            parent2.requestDisallowInterceptTouchEvent(true);
                        }
                        this.f5589t = true;
                        i9 = i9 > 0 ? i9 - this.f5593x : i9 + this.f5593x;
                    }
                    if (this.f5589t) {
                        int g7 = g(i9, (int) motionEvent.getX(findPointerIndex), 0, false);
                        this.f5585p = y6 - g7;
                        this.f5572D += g7;
                    }
                }
            } else if (actionMasked == 3) {
                if (this.f5589t && getChildCount() > 0 && this.f5582j.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                    postInvalidateOnAnimation();
                }
                this.f5569A = -1;
                this.f5589t = false;
                VelocityTracker velocityTracker3 = this.f5590u;
                if (velocityTracker3 != null) {
                    velocityTracker3.recycle();
                    this.f5590u = null;
                }
                stopNestedScroll(0);
                this.f5583m.onRelease();
                this.f5584n.onRelease();
            } else if (actionMasked == 5) {
                int actionIndex = motionEvent.getActionIndex();
                this.f5585p = (int) motionEvent.getY(actionIndex);
                this.f5569A = motionEvent.getPointerId(actionIndex);
            } else if (actionMasked == 6) {
                d(motionEvent);
                this.f5585p = (int) motionEvent.getY(motionEvent.findPointerIndex(this.f5569A));
            }
        } else {
            if (getChildCount() == 0) {
                return false;
            }
            if (this.f5589t && (parent = getParent()) != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
            if (!this.f5582j.isFinished()) {
                this.f5582j.abortAnimation();
                stopNestedScroll(1);
            }
            int y7 = (int) motionEvent.getY();
            int pointerId = motionEvent.getPointerId(0);
            this.f5585p = y7;
            this.f5569A = pointerId;
            startNestedScroll(2, 0);
        }
        VelocityTracker velocityTracker4 = this.f5590u;
        if (velocityTracker4 != null) {
            velocityTracker4.addMovement(obtain);
        }
        obtain.recycle();
        return true;
    }

    public boolean pageScroll(int i2) {
        boolean z6 = i2 == 130;
        int height = getHeight();
        Rect rect = this.f5581f;
        if (z6) {
            rect.top = getScrollY() + height;
            int childCount = getChildCount();
            if (childCount > 0) {
                View childAt = getChildAt(childCount - 1);
                int paddingBottom = getPaddingBottom() + childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin;
                if (rect.top + height > paddingBottom) {
                    rect.top = paddingBottom - height;
                }
            }
        } else {
            rect.top = getScrollY() - height;
            if (rect.top < 0) {
                rect.top = 0;
            }
        }
        int i7 = rect.top;
        int i8 = height + i7;
        rect.bottom = i8;
        return f(i2, i7, i8);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        if (this.f5586q) {
            this.f5588s = view2;
        } else {
            Rect rect = this.f5581f;
            view2.getDrawingRect(rect);
            offsetDescendantRectToMyCoords(view2, rect);
            int computeScrollDeltaToGetChildRectOnScreen = computeScrollDeltaToGetChildRectOnScreen(rect);
            if (computeScrollDeltaToGetChildRectOnScreen != 0) {
                scrollBy(0, computeScrollDeltaToGetChildRectOnScreen);
            }
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z6) {
        rect.offset(view.getLeft() - view.getScrollX(), view.getTop() - view.getScrollY());
        int computeScrollDeltaToGetChildRectOnScreen = computeScrollDeltaToGetChildRectOnScreen(rect);
        boolean z7 = computeScrollDeltaToGetChildRectOnScreen != 0;
        if (z7) {
            if (z6) {
                scrollBy(0, computeScrollDeltaToGetChildRectOnScreen);
                return z7;
            }
            smoothScrollBy(0, computeScrollDeltaToGetChildRectOnScreen);
        }
        return z7;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z6) {
        VelocityTracker velocityTracker;
        if (z6 && (velocityTracker = this.f5590u) != null) {
            velocityTracker.recycle();
            this.f5590u = null;
        }
        super.requestDisallowInterceptTouchEvent(z6);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        this.f5586q = true;
        super.requestLayout();
    }

    @Override // android.view.View
    public void scrollTo(int i2, int i7) {
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
            int width2 = childAt.getWidth() + layoutParams.leftMargin + layoutParams.rightMargin;
            int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
            int height2 = childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            if (width >= width2 || i2 < 0) {
                i2 = 0;
            } else if (width + i2 > width2) {
                i2 = width2 - width;
            }
            if (height >= height2 || i7 < 0) {
                i7 = 0;
            } else if (height + i7 > height2) {
                i7 = height2 - height;
            }
            if (i2 == getScrollX() && i7 == getScrollY()) {
                return;
            }
            super.scrollTo(i2, i7);
        }
    }

    public void setFillViewport(boolean z6) {
        if (z6 != this.f5591v) {
            this.f5591v = z6;
            requestLayout();
        }
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z6) {
        this.f5576H.setNestedScrollingEnabled(z6);
    }

    public void setSmoothScrollingEnabled(boolean z6) {
        this.f5592w = z6;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return true;
    }

    public final void smoothScrollBy(int i2, int i7) {
        i(i2, i7, false);
    }

    public boolean startNestedScroll(int i2, int i7) {
        return this.f5576H.startNestedScroll(i2, i7);
    }

    public void stopNestedScroll(int i2) {
        this.f5576H.stopNestedScroll(i2);
    }

    public NestedScrollView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f5581f = new Rect();
        this.f5586q = true;
        this.f5587r = false;
        this.f5588s = null;
        this.f5589t = false;
        this.f5592w = true;
        this.f5569A = -1;
        this.f5570B = new int[2];
        this.f5571C = new int[2];
        this.f5578J = new C0176n(getContext(), new q(this));
        this.f5583m = j.create(context, attributeSet);
        this.f5584n = j.create(context, attributeSet);
        this.f5579b = context.getResources().getDisplayMetrics().density * 160.0f * 386.0878f * 0.84f;
        this.f5582j = new OverScroller(getContext());
        setFocusable(true);
        setDescendantFocusability(262144);
        setWillNotDraw(false);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        this.f5593x = viewConfiguration.getScaledTouchSlop();
        this.f5594y = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f5595z = viewConfiguration.getScaledMaximumFlingVelocity();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f5568M, i2, 0);
        setFillViewport(obtainStyledAttributes.getBoolean(0, false));
        obtainStyledAttributes.recycle();
        this.f5575G = new K(this);
        this.f5576H = new H(this);
        setNestedScrollingEnabled(true);
        AbstractC0181p0.setAccessibilityDelegate(this, f5567L);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i2, int i7, int[] iArr, int[] iArr2) {
        return dispatchNestedPreScroll(i2, i7, iArr, iArr2, 0);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i2, int i7, int i8, int i9, int[] iArr) {
        return this.f5576H.dispatchNestedScroll(i2, i7, i8, i9, iArr);
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return hasNestedScrollingParent(0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedPreScroll(View view, int i2, int i7, int[] iArr) {
        onNestedPreScroll(view, i2, i7, iArr, 0);
    }

    @Override // M.I
    public void onNestedScroll(View view, int i2, int i7, int i8, int i9, int i10) {
        c(i9, i10, null);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onStartNestedScroll(View view, View view2, int i2) {
        return onStartNestedScroll(view, view2, i2, 0);
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i2) {
        return startNestedScroll(i2, 0);
    }

    @Override // android.view.View
    public void stopNestedScroll() {
        stopNestedScroll(0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedScroll(View view, int i2, int i7, int i8, int i9) {
        c(i9, 0, null);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedScrollAccepted(View view, View view2, int i2) {
        onNestedScrollAccepted(view, view2, i2, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onStopNestedScroll(View view) {
        onStopNestedScroll(view, 0);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i2) {
        if (getChildCount() <= 0) {
            super.addView(view, i2);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() <= 0) {
            super.addView(view, layoutParams);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() <= 0) {
            super.addView(view, i2, layoutParams);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }

    public void setOnScrollChangeListener(r rVar) {
    }
}
