package m1;

import M.AbstractC0181p0;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.R;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;

/* renamed from: m1.i0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1286i0 {

    /* renamed from: a, reason: collision with root package name */
    public C1275d f18388a;

    /* renamed from: b, reason: collision with root package name */
    public RecyclerView f18389b;

    /* renamed from: c, reason: collision with root package name */
    public final C.k f18390c;

    /* renamed from: d, reason: collision with root package name */
    public final C.k f18391d;

    /* renamed from: e, reason: collision with root package name */
    public w0 f18392e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f18393f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f18394g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f18395h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f18396i;

    /* renamed from: j, reason: collision with root package name */
    public int f18397j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f18398k;

    /* renamed from: l, reason: collision with root package name */
    public int f18399l;

    /* renamed from: m, reason: collision with root package name */
    public int f18400m;

    /* renamed from: n, reason: collision with root package name */
    public int f18401n;

    /* renamed from: o, reason: collision with root package name */
    public int f18402o;

    public AbstractC1286i0() {
        C1278e0 c1278e0 = new C1278e0(this);
        C1280f0 c1280f0 = new C1280f0(this);
        this.f18390c = new C.k(c1278e0);
        this.f18391d = new C.k(c1280f0);
        this.f18393f = false;
        this.f18394g = false;
        this.f18395h = true;
        this.f18396i = true;
    }

    public static boolean b(int i2, int i7, int i8) {
        int mode = View.MeasureSpec.getMode(i7);
        int size = View.MeasureSpec.getSize(i7);
        if (i8 > 0 && i2 != i8) {
            return false;
        }
        if (mode == Integer.MIN_VALUE) {
            return size >= i2;
        }
        if (mode != 0) {
            return mode == 1073741824 && size == i2;
        }
        return true;
    }

    public static int chooseSize(int i2, int i7, int i8) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        return mode != Integer.MIN_VALUE ? mode != 1073741824 ? Math.max(i7, i8) : size : Math.min(size, Math.max(i7, i8));
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0018, code lost:
    
        if (r5 == 1073741824) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int getChildMeasureSpec(int r4, int r5, int r6, int r7, boolean r8) {
        /*
            int r4 = r4 - r6
            r6 = 0
            int r4 = java.lang.Math.max(r6, r4)
            r0 = -2
            r1 = -1
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = 1073741824(0x40000000, float:2.0)
            if (r8 == 0) goto L1d
            if (r7 < 0) goto L12
        L10:
            r5 = r3
            goto L30
        L12:
            if (r7 != r1) goto L1a
            if (r5 == r2) goto L22
            if (r5 == 0) goto L1a
            if (r5 == r3) goto L22
        L1a:
            r5 = r6
            r7 = r5
            goto L30
        L1d:
            if (r7 < 0) goto L20
            goto L10
        L20:
            if (r7 != r1) goto L24
        L22:
            r7 = r4
            goto L30
        L24:
            if (r7 != r0) goto L1a
            if (r5 == r2) goto L2e
            if (r5 != r3) goto L2b
            goto L2e
        L2b:
            r7 = r4
            r5 = r6
            goto L30
        L2e:
            r7 = r4
            r5 = r2
        L30:
            int r4 = android.view.View.MeasureSpec.makeMeasureSpec(r7, r5)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: m1.AbstractC1286i0.getChildMeasureSpec(int, int, int, int, boolean):int");
    }

    public static C1284h0 getProperties(Context context, AttributeSet attributeSet, int i2, int i7) {
        C1284h0 c1284h0 = new C1284h0();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.RecyclerView, i2, i7);
        c1284h0.f18380a = obtainStyledAttributes.getInt(R.styleable.RecyclerView_android_orientation, 1);
        c1284h0.f18381b = obtainStyledAttributes.getInt(R.styleable.RecyclerView_spanCount, 1);
        c1284h0.f18382c = obtainStyledAttributes.getBoolean(R.styleable.RecyclerView_reverseLayout, false);
        c1284h0.f18383d = obtainStyledAttributes.getBoolean(R.styleable.RecyclerView_stackFromEnd, false);
        obtainStyledAttributes.recycle();
        return c1284h0;
    }

    public final void a(View view, boolean z6, int i2) {
        B0 E6 = RecyclerView.E(view);
        if (z6 || E6.f()) {
            p.q qVar = this.f18389b.f8061p.f18336a;
            S0 s02 = (S0) qVar.get(E6);
            if (s02 == null) {
                s02 = S0.a();
                qVar.put(E6, s02);
            }
            s02.f18332a |= 1;
        } else {
            this.f18389b.f8061p.c(E6);
        }
        C1288j0 c1288j0 = (C1288j0) view.getLayoutParams();
        if (E6.m() || E6.g()) {
            if (E6.g()) {
                E6.f18230n.j(E6);
            } else {
                E6.f18226j &= -33;
            }
            this.f18388a.b(view, i2, view.getLayoutParams(), false);
        } else if (view.getParent() == this.f18389b) {
            int f3 = this.f18388a.f(view);
            if (i2 == -1) {
                i2 = this.f18388a.d();
            }
            if (f3 == -1) {
                StringBuilder sb = new StringBuilder("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:");
                sb.append(this.f18389b.indexOfChild(view));
                throw new IllegalStateException(b.c.i(this.f18389b, sb));
            }
            if (f3 != i2) {
                this.f18389b.f8075w.moveView(f3, i2);
            }
        } else {
            this.f18388a.a(view, false, i2);
            c1288j0.f18411c = true;
            w0 w0Var = this.f18392e;
            if (w0Var != null && w0Var.isRunning()) {
                this.f18392e.onChildAttachedToWindow(view);
            }
        }
        if (c1288j0.f18412d) {
            if (RecyclerView.f7999K0) {
                Log.d("RecyclerView", "consuming pending invalidate on child " + c1288j0.f18409a);
            }
            E6.f18217a.invalidate();
            c1288j0.f18412d = false;
        }
    }

    @SuppressLint({"UnknownNullness"})
    public void addDisappearingView(View view) {
        addDisappearingView(view, -1);
    }

    @SuppressLint({"UnknownNullness"})
    public void addView(View view) {
        addView(view, -1);
    }

    @SuppressLint({"UnknownNullness"})
    public void assertNotInLayoutOrScroll(String str) {
        RecyclerView recyclerView = this.f18389b;
        if (recyclerView != null) {
            recyclerView.h(str);
        }
    }

    public void attachView(View view, int i2, C1288j0 c1288j0) {
        B0 E6 = RecyclerView.E(view);
        if (E6.f()) {
            p.q qVar = this.f18389b.f8061p.f18336a;
            S0 s02 = (S0) qVar.get(E6);
            if (s02 == null) {
                s02 = S0.a();
                qVar.put(E6, s02);
            }
            s02.f18332a |= 1;
        } else {
            this.f18389b.f8061p.c(E6);
        }
        this.f18388a.b(view, i2, c1288j0, E6.f());
    }

    public final void c(View view, N.n nVar) {
        B0 E6 = RecyclerView.E(view);
        if (E6 == null || E6.f()) {
            return;
        }
        C1275d c1275d = this.f18388a;
        if (c1275d.f18365c.contains(E6.f18217a)) {
            return;
        }
        RecyclerView recyclerView = this.f18389b;
        onInitializeAccessibilityNodeInfoForItem(recyclerView.f8047f, recyclerView.f8064q0, view, nVar);
    }

    public void calculateItemDecorationsForChild(View view, Rect rect) {
        RecyclerView recyclerView = this.f18389b;
        if (recyclerView == null) {
            rect.set(0, 0, 0, 0);
        } else {
            rect.set(recyclerView.G(view));
        }
    }

    public abstract boolean canScrollHorizontally();

    public abstract boolean canScrollVertically();

    public boolean checkLayoutParams(C1288j0 c1288j0) {
        return c1288j0 != null;
    }

    public int computeHorizontalScrollExtent(x0 x0Var) {
        return 0;
    }

    public int computeHorizontalScrollOffset(x0 x0Var) {
        return 0;
    }

    public int computeHorizontalScrollRange(x0 x0Var) {
        return 0;
    }

    public int computeVerticalScrollExtent(x0 x0Var) {
        return 0;
    }

    public int computeVerticalScrollOffset(x0 x0Var) {
        return 0;
    }

    public int computeVerticalScrollRange(x0 x0Var) {
        return 0;
    }

    public final void d(C1300p0 c1300p0) {
        ArrayList arrayList;
        int size = c1300p0.f18455a.size();
        int i2 = size - 1;
        while (true) {
            arrayList = c1300p0.f18455a;
            if (i2 < 0) {
                break;
            }
            View view = ((B0) arrayList.get(i2)).f18217a;
            B0 E6 = RecyclerView.E(view);
            if (!E6.l()) {
                E6.setIsRecyclable(false);
                if (E6.h()) {
                    this.f18389b.removeDetachedView(view, false);
                }
                AbstractC1272b0 abstractC1272b0 = this.f18389b.f8038V;
                if (abstractC1272b0 != null) {
                    abstractC1272b0.endAnimation(E6);
                }
                E6.setIsRecyclable(true);
                B0 E7 = RecyclerView.E(view);
                E7.f18230n = null;
                E7.f18231o = false;
                E7.f18226j &= -33;
                c1300p0.g(E7);
            }
            i2--;
        }
        arrayList.clear();
        ArrayList arrayList2 = c1300p0.f18456b;
        if (arrayList2 != null) {
            arrayList2.clear();
        }
        if (size > 0) {
            this.f18389b.invalidate();
        }
    }

    public void detachAndScrapAttachedViews(C1300p0 c1300p0) {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            e(c1300p0, childCount, getChildAt(childCount));
        }
    }

    public void detachAndScrapView(View view, C1300p0 c1300p0) {
        e(c1300p0, this.f18388a.f(view), view);
    }

    public void detachViewAt(int i2) {
        getChildAt(i2);
        C1275d c1275d = this.f18388a;
        int e3 = c1275d.e(i2);
        c1275d.f18364b.f(e3);
        c1275d.f18363a.detachViewFromParent(e3);
    }

    public final void e(C1300p0 c1300p0, int i2, View view) {
        B0 E6 = RecyclerView.E(view);
        if (E6.l()) {
            if (RecyclerView.f7999K0) {
                Log.d("RecyclerView", "ignoring view " + E6);
                return;
            }
            return;
        }
        if (E6.e() && !E6.f() && !this.f18389b.f8073v.hasStableIds()) {
            removeViewAt(i2);
            c1300p0.g(E6);
        } else {
            detachViewAt(i2);
            c1300p0.h(view);
            this.f18389b.f8061p.onViewDetached(E6);
        }
    }

    public final void f(RecyclerView recyclerView) {
        g(View.MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(recyclerView.getHeight(), 1073741824));
    }

    public View findContainingItemView(View view) {
        View findContainingItemView;
        RecyclerView recyclerView = this.f18389b;
        if (recyclerView == null || (findContainingItemView = recyclerView.findContainingItemView(view)) == null || this.f18388a.f18365c.contains(findContainingItemView)) {
            return null;
        }
        return findContainingItemView;
    }

    public View findViewByPosition(int i2) {
        int childCount = getChildCount();
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            B0 E6 = RecyclerView.E(childAt);
            if (E6 != null && E6.getLayoutPosition() == i2 && !E6.l() && (this.f18389b.f8064q0.isPreLayout() || !E6.f())) {
                return childAt;
            }
        }
        return null;
    }

    public final void g(int i2, int i7) {
        this.f18401n = View.MeasureSpec.getSize(i2);
        int mode = View.MeasureSpec.getMode(i2);
        this.f18399l = mode;
        if (mode == 0 && !RecyclerView.f8002N0) {
            this.f18401n = 0;
        }
        this.f18402o = View.MeasureSpec.getSize(i7);
        int mode2 = View.MeasureSpec.getMode(i7);
        this.f18400m = mode2;
        if (mode2 != 0 || RecyclerView.f8002N0) {
            return;
        }
        this.f18402o = 0;
    }

    @SuppressLint({"UnknownNullness"})
    public abstract C1288j0 generateDefaultLayoutParams();

    @SuppressLint({"UnknownNullness"})
    public C1288j0 generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C1288j0 ? new C1288j0((C1288j0) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new C1288j0((ViewGroup.MarginLayoutParams) layoutParams) : new C1288j0(layoutParams);
    }

    public int getBaseline() {
        return -1;
    }

    public int getBottomDecorationHeight(View view) {
        return ((C1288j0) view.getLayoutParams()).f18410b.bottom;
    }

    public View getChildAt(int i2) {
        C1275d c1275d = this.f18388a;
        if (c1275d != null) {
            return c1275d.c(i2);
        }
        return null;
    }

    public int getChildCount() {
        C1275d c1275d = this.f18388a;
        if (c1275d != null) {
            return c1275d.d();
        }
        return 0;
    }

    public boolean getClipToPadding() {
        RecyclerView recyclerView = this.f18389b;
        return recyclerView != null && recyclerView.f8063q;
    }

    public int getColumnCountForAccessibility(C1300p0 c1300p0, x0 x0Var) {
        return -1;
    }

    public int getDecoratedBottom(View view) {
        return getBottomDecorationHeight(view) + view.getBottom();
    }

    public void getDecoratedBoundsWithMargins(View view, Rect rect) {
        RecyclerView.F(view, rect);
    }

    public int getDecoratedLeft(View view) {
        return view.getLeft() - getLeftDecorationWidth(view);
    }

    public int getDecoratedMeasuredHeight(View view) {
        Rect rect = ((C1288j0) view.getLayoutParams()).f18410b;
        return view.getMeasuredHeight() + rect.top + rect.bottom;
    }

    public int getDecoratedMeasuredWidth(View view) {
        Rect rect = ((C1288j0) view.getLayoutParams()).f18410b;
        return view.getMeasuredWidth() + rect.left + rect.right;
    }

    public int getDecoratedRight(View view) {
        return getRightDecorationWidth(view) + view.getRight();
    }

    public int getDecoratedTop(View view) {
        return view.getTop() - getTopDecorationHeight(view);
    }

    public View getFocusedChild() {
        View focusedChild;
        RecyclerView recyclerView = this.f18389b;
        if (recyclerView == null || (focusedChild = recyclerView.getFocusedChild()) == null || this.f18388a.f18365c.contains(focusedChild)) {
            return null;
        }
        return focusedChild;
    }

    public int getHeight() {
        return this.f18402o;
    }

    public int getHeightMode() {
        return this.f18400m;
    }

    public int getItemCount() {
        RecyclerView recyclerView = this.f18389b;
        V adapter = recyclerView != null ? recyclerView.getAdapter() : null;
        if (adapter != null) {
            return adapter.getItemCount();
        }
        return 0;
    }

    public int getLayoutDirection() {
        return AbstractC0181p0.getLayoutDirection(this.f18389b);
    }

    public int getLeftDecorationWidth(View view) {
        return ((C1288j0) view.getLayoutParams()).f18410b.left;
    }

    public int getMinimumHeight() {
        return AbstractC0181p0.getMinimumHeight(this.f18389b);
    }

    public int getMinimumWidth() {
        return AbstractC0181p0.getMinimumWidth(this.f18389b);
    }

    public int getPaddingBottom() {
        RecyclerView recyclerView = this.f18389b;
        if (recyclerView != null) {
            return recyclerView.getPaddingBottom();
        }
        return 0;
    }

    public int getPaddingLeft() {
        RecyclerView recyclerView = this.f18389b;
        if (recyclerView != null) {
            return recyclerView.getPaddingLeft();
        }
        return 0;
    }

    public int getPaddingRight() {
        RecyclerView recyclerView = this.f18389b;
        if (recyclerView != null) {
            return recyclerView.getPaddingRight();
        }
        return 0;
    }

    public int getPaddingTop() {
        RecyclerView recyclerView = this.f18389b;
        if (recyclerView != null) {
            return recyclerView.getPaddingTop();
        }
        return 0;
    }

    public int getPosition(View view) {
        return ((C1288j0) view.getLayoutParams()).getViewLayoutPosition();
    }

    public int getRightDecorationWidth(View view) {
        return ((C1288j0) view.getLayoutParams()).f18410b.right;
    }

    public int getRowCountForAccessibility(C1300p0 c1300p0, x0 x0Var) {
        return -1;
    }

    public int getSelectionModeForAccessibility(C1300p0 c1300p0, x0 x0Var) {
        return 0;
    }

    public int getTopDecorationHeight(View view) {
        return ((C1288j0) view.getLayoutParams()).f18410b.top;
    }

    public void getTransformedBoundingBox(View view, boolean z6, Rect rect) {
        Matrix matrix;
        if (z6) {
            Rect rect2 = ((C1288j0) view.getLayoutParams()).f18410b;
            rect.set(-rect2.left, -rect2.top, view.getWidth() + rect2.right, view.getHeight() + rect2.bottom);
        } else {
            rect.set(0, 0, view.getWidth(), view.getHeight());
        }
        if (this.f18389b != null && (matrix = view.getMatrix()) != null && !matrix.isIdentity()) {
            RectF rectF = this.f18389b.f8071u;
            rectF.set(rect);
            matrix.mapRect(rectF);
            rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
        }
        rect.offset(view.getLeft(), view.getTop());
    }

    public int getWidth() {
        return this.f18401n;
    }

    public int getWidthMode() {
        return this.f18399l;
    }

    public final void h(int i2, int i7) {
        int childCount = getChildCount();
        if (childCount == 0) {
            this.f18389b.n(i2, i7);
            return;
        }
        int i8 = Integer.MIN_VALUE;
        int i9 = Integer.MAX_VALUE;
        int i10 = Integer.MIN_VALUE;
        int i11 = Integer.MAX_VALUE;
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            Rect rect = this.f18389b.f8067s;
            getDecoratedBoundsWithMargins(childAt, rect);
            int i13 = rect.left;
            if (i13 < i11) {
                i11 = i13;
            }
            int i14 = rect.right;
            if (i14 > i8) {
                i8 = i14;
            }
            int i15 = rect.top;
            if (i15 < i9) {
                i9 = i15;
            }
            int i16 = rect.bottom;
            if (i16 > i10) {
                i10 = i16;
            }
        }
        this.f18389b.f8067s.set(i11, i9, i8, i10);
        setMeasuredDimension(this.f18389b.f8067s, i2, i7);
    }

    public boolean hasFocus() {
        RecyclerView recyclerView = this.f18389b;
        return recyclerView != null && recyclerView.hasFocus();
    }

    public final void i(RecyclerView recyclerView) {
        if (recyclerView == null) {
            this.f18389b = null;
            this.f18388a = null;
            this.f18401n = 0;
            this.f18402o = 0;
        } else {
            this.f18389b = recyclerView;
            this.f18388a = recyclerView.f8058n;
            this.f18401n = recyclerView.getWidth();
            this.f18402o = recyclerView.getHeight();
        }
        this.f18399l = 1073741824;
        this.f18400m = 1073741824;
    }

    public boolean isAttachedToWindow() {
        return this.f18394g;
    }

    public boolean isAutoMeasureEnabled() {
        return false;
    }

    public final boolean isItemPrefetchEnabled() {
        return this.f18396i;
    }

    public boolean isLayoutHierarchical(C1300p0 c1300p0, x0 x0Var) {
        return false;
    }

    public boolean isSmoothScrolling() {
        w0 w0Var = this.f18392e;
        return w0Var != null && w0Var.isRunning();
    }

    public boolean isViewPartiallyVisible(View view, boolean z6, boolean z7) {
        boolean z8 = this.f18390c.s(view) && this.f18391d.s(view);
        return z6 ? z8 : !z8;
    }

    public final boolean j(View view, int i2, int i7, C1288j0 c1288j0) {
        return (!view.isLayoutRequested() && this.f18395h && b(view.getWidth(), i2, ((ViewGroup.MarginLayoutParams) c1288j0).width) && b(view.getHeight(), i7, ((ViewGroup.MarginLayoutParams) c1288j0).height)) ? false : true;
    }

    public boolean k() {
        return false;
    }

    public final boolean l(View view, int i2, int i7, C1288j0 c1288j0) {
        return (this.f18395h && b(view.getMeasuredWidth(), i2, ((ViewGroup.MarginLayoutParams) c1288j0).width) && b(view.getMeasuredHeight(), i7, ((ViewGroup.MarginLayoutParams) c1288j0).height)) ? false : true;
    }

    public void layoutDecoratedWithMargins(View view, int i2, int i7, int i8, int i9) {
        C1288j0 c1288j0 = (C1288j0) view.getLayoutParams();
        Rect rect = c1288j0.f18410b;
        view.layout(i2 + rect.left + ((ViewGroup.MarginLayoutParams) c1288j0).leftMargin, i7 + rect.top + ((ViewGroup.MarginLayoutParams) c1288j0).topMargin, (i8 - rect.right) - ((ViewGroup.MarginLayoutParams) c1288j0).rightMargin, (i9 - rect.bottom) - ((ViewGroup.MarginLayoutParams) c1288j0).bottomMargin);
    }

    public void measureChildWithMargins(View view, int i2, int i7) {
        C1288j0 c1288j0 = (C1288j0) view.getLayoutParams();
        Rect G6 = this.f18389b.G(view);
        int i8 = G6.left + G6.right + i2;
        int i9 = G6.top + G6.bottom + i7;
        int childMeasureSpec = getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingRight() + getPaddingLeft() + ((ViewGroup.MarginLayoutParams) c1288j0).leftMargin + ((ViewGroup.MarginLayoutParams) c1288j0).rightMargin + i8, ((ViewGroup.MarginLayoutParams) c1288j0).width, canScrollHorizontally());
        int childMeasureSpec2 = getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingBottom() + getPaddingTop() + ((ViewGroup.MarginLayoutParams) c1288j0).topMargin + ((ViewGroup.MarginLayoutParams) c1288j0).bottomMargin + i9, ((ViewGroup.MarginLayoutParams) c1288j0).height, canScrollVertically());
        if (j(view, childMeasureSpec, childMeasureSpec2, c1288j0)) {
            view.measure(childMeasureSpec, childMeasureSpec2);
        }
    }

    public void moveView(int i2, int i7) {
        View childAt = getChildAt(i2);
        if (childAt != null) {
            detachViewAt(i2);
            attachView(childAt, i7);
        } else {
            throw new IllegalArgumentException("Cannot move a child from non-existing index:" + i2 + this.f18389b.toString());
        }
    }

    public void offsetChildrenHorizontal(int i2) {
        RecyclerView recyclerView = this.f18389b;
        if (recyclerView != null) {
            recyclerView.offsetChildrenHorizontal(i2);
        }
    }

    public void offsetChildrenVertical(int i2) {
        RecyclerView recyclerView = this.f18389b;
        if (recyclerView != null) {
            recyclerView.offsetChildrenVertical(i2);
        }
    }

    public boolean onAddFocusables(RecyclerView recyclerView, ArrayList<View> arrayList, int i2, int i7) {
        return false;
    }

    @Deprecated
    public void onDetachedFromWindow(RecyclerView recyclerView) {
    }

    public View onFocusSearchFailed(View view, int i2, C1300p0 c1300p0, x0 x0Var) {
        return null;
    }

    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        RecyclerView recyclerView = this.f18389b;
        onInitializeAccessibilityEvent(recyclerView.f8047f, recyclerView.f8064q0, accessibilityEvent);
    }

    public void onInitializeAccessibilityNodeInfo(C1300p0 c1300p0, x0 x0Var, N.n nVar) {
        if (this.f18389b.canScrollVertically(-1) || this.f18389b.canScrollHorizontally(-1)) {
            nVar.addAction(8192);
            nVar.setScrollable(true);
        }
        if (this.f18389b.canScrollVertically(1) || this.f18389b.canScrollHorizontally(1)) {
            nVar.addAction(4096);
            nVar.setScrollable(true);
        }
        nVar.setCollectionInfo(N.l.obtain(getRowCountForAccessibility(c1300p0, x0Var), getColumnCountForAccessibility(c1300p0, x0Var), isLayoutHierarchical(c1300p0, x0Var), getSelectionModeForAccessibility(c1300p0, x0Var)));
    }

    public View onInterceptFocusSearch(View view, int i2) {
        return null;
    }

    public void onItemsUpdated(RecyclerView recyclerView, int i2, int i7) {
    }

    @SuppressLint({"UnknownNullness"})
    public abstract void onLayoutChildren(C1300p0 c1300p0, x0 x0Var);

    public void onMeasure(C1300p0 c1300p0, x0 x0Var, int i2, int i7) {
        this.f18389b.n(i2, i7);
    }

    @Deprecated
    public boolean onRequestChildFocus(RecyclerView recyclerView, View view, View view2) {
        return isSmoothScrolling() || recyclerView.isComputingLayout();
    }

    public Parcelable onSaveInstanceState() {
        return null;
    }

    public boolean performAccessibilityAction(C1300p0 c1300p0, x0 x0Var, int i2, Bundle bundle) {
        int paddingTop;
        int paddingLeft;
        int i7;
        int i8;
        if (this.f18389b == null) {
            return false;
        }
        int height = getHeight();
        int width = getWidth();
        Rect rect = new Rect();
        if (this.f18389b.getMatrix().isIdentity() && this.f18389b.getGlobalVisibleRect(rect)) {
            height = rect.height();
            width = rect.width();
        }
        if (i2 == 4096) {
            paddingTop = this.f18389b.canScrollVertically(1) ? (height - getPaddingTop()) - getPaddingBottom() : 0;
            if (this.f18389b.canScrollHorizontally(1)) {
                paddingLeft = (width - getPaddingLeft()) - getPaddingRight();
                i7 = paddingTop;
                i8 = paddingLeft;
            }
            i7 = paddingTop;
            i8 = 0;
        } else if (i2 != 8192) {
            i8 = 0;
            i7 = 0;
        } else {
            paddingTop = this.f18389b.canScrollVertically(-1) ? -((height - getPaddingTop()) - getPaddingBottom()) : 0;
            if (this.f18389b.canScrollHorizontally(-1)) {
                paddingLeft = -((width - getPaddingLeft()) - getPaddingRight());
                i7 = paddingTop;
                i8 = paddingLeft;
            }
            i7 = paddingTop;
            i8 = 0;
        }
        if (i7 == 0 && i8 == 0) {
            return false;
        }
        this.f18389b.a0(i8, i7, null, Integer.MIN_VALUE, true);
        return true;
    }

    public boolean performAccessibilityActionForItem(C1300p0 c1300p0, x0 x0Var, View view, int i2, Bundle bundle) {
        return false;
    }

    public void removeAndRecycleAllViews(C1300p0 c1300p0) {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            if (!RecyclerView.E(getChildAt(childCount)).l()) {
                removeAndRecycleViewAt(childCount, c1300p0);
            }
        }
    }

    public void removeAndRecycleView(View view, C1300p0 c1300p0) {
        removeView(view);
        c1300p0.recycleView(view);
    }

    public void removeAndRecycleViewAt(int i2, C1300p0 c1300p0) {
        View childAt = getChildAt(i2);
        removeViewAt(i2);
        c1300p0.recycleView(childAt);
    }

    public boolean removeCallbacks(Runnable runnable) {
        RecyclerView recyclerView = this.f18389b;
        if (recyclerView != null) {
            return recyclerView.removeCallbacks(runnable);
        }
        return false;
    }

    @SuppressLint({"UnknownNullness"})
    public void removeView(View view) {
        C1275d c1275d = this.f18388a;
        T t6 = c1275d.f18363a;
        int i2 = c1275d.f18366d;
        if (i2 == 1) {
            throw new IllegalStateException("Cannot call removeView(At) within removeView(At)");
        }
        if (i2 == 2) {
            throw new IllegalStateException("Cannot call removeView(At) within removeViewIfHidden");
        }
        try {
            c1275d.f18366d = 1;
            c1275d.f18367e = view;
            int indexOfChild = t6.indexOfChild(view);
            if (indexOfChild >= 0) {
                if (c1275d.f18364b.f(indexOfChild)) {
                    c1275d.g(view);
                }
                t6.removeViewAt(indexOfChild);
            }
            c1275d.f18366d = 0;
            c1275d.f18367e = null;
        } catch (Throwable th) {
            c1275d.f18366d = 0;
            c1275d.f18367e = null;
            throw th;
        }
    }

    public void removeViewAt(int i2) {
        if (getChildAt(i2) != null) {
            C1275d c1275d = this.f18388a;
            T t6 = c1275d.f18363a;
            int i7 = c1275d.f18366d;
            if (i7 == 1) {
                throw new IllegalStateException("Cannot call removeView(At) within removeView(At)");
            }
            if (i7 == 2) {
                throw new IllegalStateException("Cannot call removeView(At) within removeViewIfHidden");
            }
            try {
                int e3 = c1275d.e(i2);
                View childAt = t6.getChildAt(e3);
                if (childAt != null) {
                    c1275d.f18366d = 1;
                    c1275d.f18367e = childAt;
                    if (c1275d.f18364b.f(e3)) {
                        c1275d.g(childAt);
                    }
                    t6.removeViewAt(e3);
                }
                c1275d.f18366d = 0;
                c1275d.f18367e = null;
            } catch (Throwable th) {
                c1275d.f18366d = 0;
                c1275d.f18367e = null;
                throw th;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x00b3, code lost:
    
        if ((r5.bottom - r10) > r2) goto L28;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean requestChildRectangleOnScreen(androidx.recyclerview.widget.RecyclerView r9, android.view.View r10, android.graphics.Rect r11, boolean r12, boolean r13) {
        /*
            r8 = this;
            int r0 = r8.getPaddingLeft()
            int r1 = r8.getPaddingTop()
            int r2 = r8.getWidth()
            int r3 = r8.getPaddingRight()
            int r2 = r2 - r3
            int r3 = r8.getHeight()
            int r4 = r8.getPaddingBottom()
            int r3 = r3 - r4
            int r4 = r10.getLeft()
            int r5 = r11.left
            int r4 = r4 + r5
            int r5 = r10.getScrollX()
            int r4 = r4 - r5
            int r5 = r10.getTop()
            int r6 = r11.top
            int r5 = r5 + r6
            int r10 = r10.getScrollY()
            int r5 = r5 - r10
            int r10 = r11.width()
            int r10 = r10 + r4
            int r11 = r11.height()
            int r11 = r11 + r5
            int r4 = r4 - r0
            r0 = 0
            int r6 = java.lang.Math.min(r0, r4)
            int r5 = r5 - r1
            int r1 = java.lang.Math.min(r0, r5)
            int r10 = r10 - r2
            int r2 = java.lang.Math.max(r0, r10)
            int r11 = r11 - r3
            int r11 = java.lang.Math.max(r0, r11)
            int r3 = r8.getLayoutDirection()
            r7 = 1
            if (r3 != r7) goto L60
            if (r2 == 0) goto L5b
            goto L68
        L5b:
            int r2 = java.lang.Math.max(r6, r10)
            goto L68
        L60:
            if (r6 == 0) goto L63
            goto L67
        L63:
            int r6 = java.lang.Math.min(r4, r2)
        L67:
            r2 = r6
        L68:
            if (r1 == 0) goto L6b
            goto L6f
        L6b:
            int r1 = java.lang.Math.min(r5, r11)
        L6f:
            int[] r10 = new int[]{r2, r1}
            r11 = r10[r0]
            r10 = r10[r7]
            if (r13 == 0) goto Lb6
            android.view.View r13 = r9.getFocusedChild()
            if (r13 != 0) goto L80
            goto Lbb
        L80:
            int r1 = r8.getPaddingLeft()
            int r2 = r8.getPaddingTop()
            int r3 = r8.getWidth()
            int r4 = r8.getPaddingRight()
            int r3 = r3 - r4
            int r4 = r8.getHeight()
            int r5 = r8.getPaddingBottom()
            int r4 = r4 - r5
            androidx.recyclerview.widget.RecyclerView r5 = r8.f18389b
            android.graphics.Rect r5 = r5.f8067s
            r8.getDecoratedBoundsWithMargins(r13, r5)
            int r13 = r5.left
            int r13 = r13 - r11
            if (r13 >= r3) goto Lbb
            int r13 = r5.right
            int r13 = r13 - r11
            if (r13 <= r1) goto Lbb
            int r13 = r5.top
            int r13 = r13 - r10
            if (r13 >= r4) goto Lbb
            int r13 = r5.bottom
            int r13 = r13 - r10
            if (r13 > r2) goto Lb6
            goto Lbb
        Lb6:
            if (r11 != 0) goto Lbc
            if (r10 == 0) goto Lbb
            goto Lbc
        Lbb:
            return r0
        Lbc:
            if (r12 == 0) goto Lc2
            r9.scrollBy(r11, r10)
            goto Lc5
        Lc2:
            r9.smoothScrollBy(r11, r10)
        Lc5:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: m1.AbstractC1286i0.requestChildRectangleOnScreen(androidx.recyclerview.widget.RecyclerView, android.view.View, android.graphics.Rect, boolean, boolean):boolean");
    }

    public void requestLayout() {
        RecyclerView recyclerView = this.f18389b;
        if (recyclerView != null) {
            recyclerView.requestLayout();
        }
    }

    public void requestSimpleAnimationsInNextLayout() {
        this.f18393f = true;
    }

    @SuppressLint({"UnknownNullness"})
    public abstract int scrollHorizontallyBy(int i2, C1300p0 c1300p0, x0 x0Var);

    public abstract void scrollToPosition(int i2);

    @SuppressLint({"UnknownNullness"})
    public abstract int scrollVerticallyBy(int i2, C1300p0 c1300p0, x0 x0Var);

    public final void setItemPrefetchEnabled(boolean z6) {
        if (z6 != this.f18396i) {
            this.f18396i = z6;
            this.f18397j = 0;
            RecyclerView recyclerView = this.f18389b;
            if (recyclerView != null) {
                recyclerView.f8047f.k();
            }
        }
    }

    public void setMeasuredDimension(Rect rect, int i2, int i7) {
        setMeasuredDimension(chooseSize(i2, getPaddingRight() + getPaddingLeft() + rect.width(), getMinimumWidth()), chooseSize(i7, getPaddingBottom() + getPaddingTop() + rect.height(), getMinimumHeight()));
    }

    @SuppressLint({"UnknownNullness"})
    public abstract void smoothScrollToPosition(RecyclerView recyclerView, x0 x0Var, int i2);

    @SuppressLint({"UnknownNullness"})
    public void startSmoothScroll(w0 w0Var) {
        w0 w0Var2 = this.f18392e;
        if (w0Var2 != null && w0Var != w0Var2 && w0Var2.isRunning()) {
            this.f18392e.stop();
        }
        this.f18392e = w0Var;
        RecyclerView recyclerView = this.f18389b;
        w0Var.getClass();
        recyclerView.f8059n0.stop();
        if (w0Var.f18519h) {
            Log.w("RecyclerView", "An instance of " + w0Var.getClass().getSimpleName() + " was started more than once. Each instance of" + w0Var.getClass().getSimpleName() + " is intended to only be used once. You should create a new instance for each use.");
        }
        w0Var.f18513b = recyclerView;
        w0Var.f18514c = this;
        int i2 = w0Var.f18512a;
        if (i2 == -1) {
            throw new IllegalArgumentException("Invalid target position");
        }
        recyclerView.f8064q0.f18525a = i2;
        w0Var.f18516e = true;
        w0Var.f18515d = true;
        w0Var.f18517f = w0Var.findViewByPosition(w0Var.getTargetPosition());
        w0Var.onStart();
        w0Var.f18513b.f8059n0.a();
        w0Var.f18519h = true;
    }

    public boolean supportsPredictiveItemAnimations() {
        return false;
    }

    @SuppressLint({"UnknownNullness"})
    public void addDisappearingView(View view, int i2) {
        a(view, true, i2);
    }

    @SuppressLint({"UnknownNullness"})
    public void addView(View view, int i2) {
        a(view, false, i2);
    }

    @SuppressLint({"UnknownNullness"})
    public void onDetachedFromWindow(RecyclerView recyclerView, C1300p0 c1300p0) {
        onDetachedFromWindow(recyclerView);
    }

    public void onInitializeAccessibilityEvent(C1300p0 c1300p0, x0 x0Var, AccessibilityEvent accessibilityEvent) {
        RecyclerView recyclerView = this.f18389b;
        if (recyclerView == null || accessibilityEvent == null) {
            return;
        }
        boolean z6 = true;
        if (!recyclerView.canScrollVertically(1) && !this.f18389b.canScrollVertically(-1) && !this.f18389b.canScrollHorizontally(-1) && !this.f18389b.canScrollHorizontally(1)) {
            z6 = false;
        }
        accessibilityEvent.setScrollable(z6);
        V v6 = this.f18389b.f8073v;
        if (v6 != null) {
            accessibilityEvent.setItemCount(v6.getItemCount());
        }
    }

    public void onItemsUpdated(RecyclerView recyclerView, int i2, int i7, Object obj) {
        onItemsUpdated(recyclerView, i2, i7);
    }

    public boolean onRequestChildFocus(RecyclerView recyclerView, x0 x0Var, View view, View view2) {
        return onRequestChildFocus(recyclerView, view, view2);
    }

    @SuppressLint({"UnknownNullness"})
    public C1288j0 generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new C1288j0(context, attributeSet);
    }

    public void setMeasuredDimension(int i2, int i7) {
        this.f18389b.setMeasuredDimension(i2, i7);
    }

    public void attachView(View view, int i2) {
        attachView(view, i2, (C1288j0) view.getLayoutParams());
    }

    public void onAttachedToWindow(RecyclerView recyclerView) {
    }

    public void onItemsChanged(RecyclerView recyclerView) {
    }

    @SuppressLint({"UnknownNullness"})
    public void onLayoutCompleted(x0 x0Var) {
    }

    @SuppressLint({"UnknownNullness"})
    public void onRestoreInstanceState(Parcelable parcelable) {
    }

    public void onScrollStateChanged(int i2) {
    }

    public boolean requestChildRectangleOnScreen(RecyclerView recyclerView, View view, Rect rect, boolean z6) {
        return requestChildRectangleOnScreen(recyclerView, view, rect, z6, false);
    }

    @SuppressLint({"UnknownNullness"})
    public void collectInitialPrefetchPositions(int i2, InterfaceC1282g0 interfaceC1282g0) {
    }

    public void onAdapterChanged(V v6, V v7) {
    }

    public void onItemsAdded(RecyclerView recyclerView, int i2, int i7) {
    }

    public void onItemsRemoved(RecyclerView recyclerView, int i2, int i7) {
    }

    @SuppressLint({"UnknownNullness"})
    public void collectAdjacentPrefetchPositions(int i2, int i7, x0 x0Var, InterfaceC1282g0 interfaceC1282g0) {
    }

    public void onInitializeAccessibilityNodeInfoForItem(C1300p0 c1300p0, x0 x0Var, View view, N.n nVar) {
    }

    public void onItemsMoved(RecyclerView recyclerView, int i2, int i7, int i8) {
    }
}
