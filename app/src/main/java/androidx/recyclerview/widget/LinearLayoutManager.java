package androidx.recyclerview.widget;

import A.i;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PointF;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import com.bumptech.glide.e;
import java.util.List;
import m1.AbstractC1286i0;
import m1.B0;
import m1.C1265D;
import m1.C1266E;
import m1.C1267F;
import m1.C1284h0;
import m1.C1288j0;
import m1.C1300p0;
import m1.C1310w;
import m1.H;
import m1.I;
import m1.InterfaceC1282g0;
import m1.L;
import m1.v0;
import m1.x0;

/* loaded from: classes.dex */
public class LinearLayoutManager extends AbstractC1286i0 implements v0 {

    /* renamed from: A, reason: collision with root package name */
    public final C1265D f7983A;

    /* renamed from: B, reason: collision with root package name */
    public final C1266E f7984B;

    /* renamed from: C, reason: collision with root package name */
    public final int f7985C;

    /* renamed from: D, reason: collision with root package name */
    public final int[] f7986D;

    /* renamed from: p, reason: collision with root package name */
    public int f7987p;

    /* renamed from: q, reason: collision with root package name */
    public C1267F f7988q;

    /* renamed from: r, reason: collision with root package name */
    public L f7989r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f7990s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f7991t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f7992u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f7993v;

    /* renamed from: w, reason: collision with root package name */
    public final boolean f7994w;

    /* renamed from: x, reason: collision with root package name */
    public int f7995x;

    /* renamed from: y, reason: collision with root package name */
    public int f7996y;

    /* renamed from: z, reason: collision with root package name */
    public H f7997z;

    public LinearLayoutManager(@SuppressLint({"UnknownNullness"}) Context context) {
        this(context, 1, false);
    }

    public final View A() {
        return getChildAt(this.f7992u ? 0 : getChildCount() - 1);
    }

    public final View B() {
        return getChildAt(this.f7992u ? getChildCount() - 1 : 0);
    }

    public void C(C1300p0 c1300p0, x0 x0Var, C1267F c1267f, C1266E c1266e) {
        int i2;
        int i7;
        int i8;
        int i9;
        int paddingLeft;
        int decoratedMeasurementInOther;
        int i10;
        int i11;
        View a7 = c1267f.a(c1300p0);
        if (a7 == null) {
            c1266e.f18255b = true;
            return;
        }
        C1288j0 c1288j0 = (C1288j0) a7.getLayoutParams();
        if (c1267f.f18269k == null) {
            if (this.f7992u == (c1267f.f18264f == -1)) {
                addView(a7);
            } else {
                addView(a7, 0);
            }
        } else {
            if (this.f7992u == (c1267f.f18264f == -1)) {
                addDisappearingView(a7);
            } else {
                addDisappearingView(a7, 0);
            }
        }
        measureChildWithMargins(a7, 0, 0);
        c1266e.f18254a = this.f7989r.getDecoratedMeasurement(a7);
        if (this.f7987p == 1) {
            if (isLayoutRTL()) {
                decoratedMeasurementInOther = getWidth() - getPaddingRight();
                paddingLeft = decoratedMeasurementInOther - this.f7989r.getDecoratedMeasurementInOther(a7);
            } else {
                paddingLeft = getPaddingLeft();
                decoratedMeasurementInOther = this.f7989r.getDecoratedMeasurementInOther(a7) + paddingLeft;
            }
            if (c1267f.f18264f == -1) {
                i11 = c1267f.f18260b;
                i10 = i11 - c1266e.f18254a;
            } else {
                i10 = c1267f.f18260b;
                i11 = c1266e.f18254a + i10;
            }
            int i12 = paddingLeft;
            i9 = i10;
            i8 = i12;
            i7 = i11;
            i2 = decoratedMeasurementInOther;
        } else {
            int paddingTop = getPaddingTop();
            int decoratedMeasurementInOther2 = this.f7989r.getDecoratedMeasurementInOther(a7) + paddingTop;
            if (c1267f.f18264f == -1) {
                int i13 = c1267f.f18260b;
                i8 = i13 - c1266e.f18254a;
                i2 = i13;
                i7 = decoratedMeasurementInOther2;
            } else {
                int i14 = c1267f.f18260b;
                i2 = c1266e.f18254a + i14;
                i7 = decoratedMeasurementInOther2;
                i8 = i14;
            }
            i9 = paddingTop;
        }
        layoutDecoratedWithMargins(a7, i8, i9, i2, i7);
        if (c1288j0.isItemRemoved() || c1288j0.isItemChanged()) {
            c1266e.f18256c = true;
        }
        c1266e.f18257d = a7.hasFocusable();
    }

    public final void E(C1300p0 c1300p0, C1267F c1267f) {
        if (!c1267f.f18259a || c1267f.f18270l) {
            return;
        }
        int i2 = c1267f.f18265g;
        int i7 = c1267f.f18267i;
        if (c1267f.f18264f == -1) {
            int childCount = getChildCount();
            if (i2 < 0) {
                return;
            }
            int end = (this.f7989r.getEnd() - i2) + i7;
            if (this.f7992u) {
                for (int i8 = 0; i8 < childCount; i8++) {
                    View childAt = getChildAt(i8);
                    if (this.f7989r.getDecoratedStart(childAt) < end || this.f7989r.getTransformedStartWithDecoration(childAt) < end) {
                        F(c1300p0, 0, i8);
                        return;
                    }
                }
                return;
            }
            int i9 = childCount - 1;
            for (int i10 = i9; i10 >= 0; i10--) {
                View childAt2 = getChildAt(i10);
                if (this.f7989r.getDecoratedStart(childAt2) < end || this.f7989r.getTransformedStartWithDecoration(childAt2) < end) {
                    F(c1300p0, i9, i10);
                    return;
                }
            }
            return;
        }
        if (i2 < 0) {
            return;
        }
        int i11 = i2 - i7;
        int childCount2 = getChildCount();
        if (!this.f7992u) {
            for (int i12 = 0; i12 < childCount2; i12++) {
                View childAt3 = getChildAt(i12);
                if (this.f7989r.getDecoratedEnd(childAt3) > i11 || this.f7989r.getTransformedEndWithDecoration(childAt3) > i11) {
                    F(c1300p0, 0, i12);
                    return;
                }
            }
            return;
        }
        int i13 = childCount2 - 1;
        for (int i14 = i13; i14 >= 0; i14--) {
            View childAt4 = getChildAt(i14);
            if (this.f7989r.getDecoratedEnd(childAt4) > i11 || this.f7989r.getTransformedEndWithDecoration(childAt4) > i11) {
                F(c1300p0, i13, i14);
                return;
            }
        }
    }

    public final void F(C1300p0 c1300p0, int i2, int i7) {
        if (i2 == i7) {
            return;
        }
        if (i7 <= i2) {
            while (i2 > i7) {
                removeAndRecycleViewAt(i2, c1300p0);
                i2--;
            }
        } else {
            for (int i8 = i7 - 1; i8 >= i2; i8--) {
                removeAndRecycleViewAt(i8, c1300p0);
            }
        }
    }

    public final void G() {
        if (this.f7987p == 1 || !isLayoutRTL()) {
            this.f7992u = this.f7991t;
        } else {
            this.f7992u = !this.f7991t;
        }
    }

    public final int H(int i2, C1300p0 c1300p0, x0 x0Var) {
        if (getChildCount() == 0 || i2 == 0) {
            return 0;
        }
        r();
        this.f7988q.f18259a = true;
        int i7 = i2 > 0 ? 1 : -1;
        int abs = Math.abs(i2);
        I(i7, abs, true, x0Var);
        C1267F c1267f = this.f7988q;
        int s6 = s(c1300p0, c1267f, x0Var, false) + c1267f.f18265g;
        if (s6 < 0) {
            return 0;
        }
        if (abs > s6) {
            i2 = i7 * s6;
        }
        this.f7989r.offsetChildren(-i2);
        this.f7988q.f18268j = i2;
        return i2;
    }

    public final void I(int i2, int i7, boolean z6, x0 x0Var) {
        int startAfterPadding;
        this.f7988q.f18270l = this.f7989r.getMode() == 0 && this.f7989r.getEnd() == 0;
        this.f7988q.f18264f = i2;
        int[] iArr = this.f7986D;
        iArr[0] = 0;
        iArr[1] = 0;
        calculateExtraLayoutSpace(x0Var, iArr);
        int max = Math.max(0, iArr[0]);
        int max2 = Math.max(0, iArr[1]);
        boolean z7 = i2 == 1;
        C1267F c1267f = this.f7988q;
        int i8 = z7 ? max2 : max;
        c1267f.f18266h = i8;
        if (!z7) {
            max = max2;
        }
        c1267f.f18267i = max;
        if (z7) {
            c1267f.f18266h = this.f7989r.getEndPadding() + i8;
            View A6 = A();
            C1267F c1267f2 = this.f7988q;
            c1267f2.f18263e = this.f7992u ? -1 : 1;
            int position = getPosition(A6);
            C1267F c1267f3 = this.f7988q;
            c1267f2.f18262d = position + c1267f3.f18263e;
            c1267f3.f18260b = this.f7989r.getDecoratedEnd(A6);
            startAfterPadding = this.f7989r.getDecoratedEnd(A6) - this.f7989r.getEndAfterPadding();
        } else {
            View B6 = B();
            C1267F c1267f4 = this.f7988q;
            c1267f4.f18266h = this.f7989r.getStartAfterPadding() + c1267f4.f18266h;
            C1267F c1267f5 = this.f7988q;
            c1267f5.f18263e = this.f7992u ? 1 : -1;
            int position2 = getPosition(B6);
            C1267F c1267f6 = this.f7988q;
            c1267f5.f18262d = position2 + c1267f6.f18263e;
            c1267f6.f18260b = this.f7989r.getDecoratedStart(B6);
            startAfterPadding = (-this.f7989r.getDecoratedStart(B6)) + this.f7989r.getStartAfterPadding();
        }
        C1267F c1267f7 = this.f7988q;
        c1267f7.f18261c = i7;
        if (z6) {
            c1267f7.f18261c = i7 - startAfterPadding;
        }
        c1267f7.f18265g = startAfterPadding;
    }

    public final void J(int i2, int i7) {
        this.f7988q.f18261c = this.f7989r.getEndAfterPadding() - i7;
        C1267F c1267f = this.f7988q;
        c1267f.f18263e = this.f7992u ? -1 : 1;
        c1267f.f18262d = i2;
        c1267f.f18264f = 1;
        c1267f.f18260b = i7;
        c1267f.f18265g = Integer.MIN_VALUE;
    }

    public final void K(int i2, int i7) {
        this.f7988q.f18261c = i7 - this.f7989r.getStartAfterPadding();
        C1267F c1267f = this.f7988q;
        c1267f.f18262d = i2;
        c1267f.f18263e = this.f7992u ? 1 : -1;
        c1267f.f18264f = -1;
        c1267f.f18260b = i7;
        c1267f.f18265g = Integer.MIN_VALUE;
    }

    @Override // m1.AbstractC1286i0
    @SuppressLint({"UnknownNullness"})
    public void assertNotInLayoutOrScroll(String str) {
        if (this.f7997z == null) {
            super.assertNotInLayoutOrScroll(str);
        }
    }

    public void calculateExtraLayoutSpace(x0 x0Var, int[] iArr) {
        int i2;
        int extraLayoutSpace = getExtraLayoutSpace(x0Var);
        if (this.f7988q.f18264f == -1) {
            i2 = 0;
        } else {
            i2 = extraLayoutSpace;
            extraLayoutSpace = 0;
        }
        iArr[0] = extraLayoutSpace;
        iArr[1] = i2;
    }

    @Override // m1.AbstractC1286i0
    public boolean canScrollHorizontally() {
        return this.f7987p == 0;
    }

    @Override // m1.AbstractC1286i0
    public boolean canScrollVertically() {
        return this.f7987p == 1;
    }

    @Override // m1.AbstractC1286i0
    @SuppressLint({"UnknownNullness"})
    public void collectAdjacentPrefetchPositions(int i2, int i7, x0 x0Var, InterfaceC1282g0 interfaceC1282g0) {
        if (this.f7987p != 0) {
            i2 = i7;
        }
        if (getChildCount() == 0 || i2 == 0) {
            return;
        }
        r();
        I(i2 > 0 ? 1 : -1, Math.abs(i2), true, x0Var);
        m(x0Var, this.f7988q, interfaceC1282g0);
    }

    @Override // m1.AbstractC1286i0
    @SuppressLint({"UnknownNullness"})
    public void collectInitialPrefetchPositions(int i2, InterfaceC1282g0 interfaceC1282g0) {
        boolean z6;
        int i7;
        H h7 = this.f7997z;
        if (h7 == null || (i7 = h7.f18275b) < 0) {
            G();
            z6 = this.f7992u;
            i7 = this.f7995x;
            if (i7 == -1) {
                i7 = z6 ? i2 - 1 : 0;
            }
        } else {
            z6 = h7.f18277f;
        }
        int i8 = z6 ? -1 : 1;
        for (int i9 = 0; i9 < this.f7985C && i7 >= 0 && i7 < i2; i9++) {
            ((C1310w) interfaceC1282g0).addPosition(i7, 0);
            i7 += i8;
        }
    }

    @Override // m1.AbstractC1286i0
    @SuppressLint({"UnknownNullness"})
    public int computeHorizontalScrollExtent(x0 x0Var) {
        return n(x0Var);
    }

    @Override // m1.AbstractC1286i0
    @SuppressLint({"UnknownNullness"})
    public int computeHorizontalScrollOffset(x0 x0Var) {
        return o(x0Var);
    }

    @Override // m1.AbstractC1286i0
    @SuppressLint({"UnknownNullness"})
    public int computeHorizontalScrollRange(x0 x0Var) {
        return p(x0Var);
    }

    @Override // m1.v0
    @SuppressLint({"UnknownNullness"})
    public PointF computeScrollVectorForPosition(int i2) {
        if (getChildCount() == 0) {
            return null;
        }
        int i7 = (i2 < getPosition(getChildAt(0))) != this.f7992u ? -1 : 1;
        return this.f7987p == 0 ? new PointF(i7, 0.0f) : new PointF(0.0f, i7);
    }

    @Override // m1.AbstractC1286i0
    @SuppressLint({"UnknownNullness"})
    public int computeVerticalScrollExtent(x0 x0Var) {
        return n(x0Var);
    }

    @Override // m1.AbstractC1286i0
    @SuppressLint({"UnknownNullness"})
    public int computeVerticalScrollOffset(x0 x0Var) {
        return o(x0Var);
    }

    @Override // m1.AbstractC1286i0
    @SuppressLint({"UnknownNullness"})
    public int computeVerticalScrollRange(x0 x0Var) {
        return p(x0Var);
    }

    public int findFirstVisibleItemPosition() {
        View w6 = w(0, getChildCount(), false);
        if (w6 == null) {
            return -1;
        }
        return getPosition(w6);
    }

    public int findLastVisibleItemPosition() {
        View w6 = w(getChildCount() - 1, -1, false);
        if (w6 == null) {
            return -1;
        }
        return getPosition(w6);
    }

    @Override // m1.AbstractC1286i0
    @SuppressLint({"UnknownNullness"})
    public View findViewByPosition(int i2) {
        int childCount = getChildCount();
        if (childCount == 0) {
            return null;
        }
        int position = i2 - getPosition(getChildAt(0));
        if (position >= 0 && position < childCount) {
            View childAt = getChildAt(position);
            if (getPosition(childAt) == i2) {
                return childAt;
            }
        }
        return super.findViewByPosition(i2);
    }

    @Override // m1.AbstractC1286i0
    @SuppressLint({"UnknownNullness"})
    public C1288j0 generateDefaultLayoutParams() {
        return new C1288j0(-2, -2);
    }

    @Deprecated
    public int getExtraLayoutSpace(x0 x0Var) {
        if (x0Var.hasTargetScrollPosition()) {
            return this.f7989r.getTotalSpace();
        }
        return 0;
    }

    public int getOrientation() {
        return this.f7987p;
    }

    @Override // m1.AbstractC1286i0
    public boolean isAutoMeasureEnabled() {
        return true;
    }

    public boolean isLayoutRTL() {
        return getLayoutDirection() == 1;
    }

    @Override // m1.AbstractC1286i0
    public final boolean k() {
        if (getHeightMode() != 1073741824 && getWidthMode() != 1073741824) {
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                ViewGroup.LayoutParams layoutParams = getChildAt(i2).getLayoutParams();
                if (layoutParams.width < 0 && layoutParams.height < 0) {
                    return true;
                }
            }
        }
        return false;
    }

    public void m(x0 x0Var, C1267F c1267f, InterfaceC1282g0 interfaceC1282g0) {
        int i2 = c1267f.f18262d;
        if (i2 < 0 || i2 >= x0Var.getItemCount()) {
            return;
        }
        ((C1310w) interfaceC1282g0).addPosition(i2, Math.max(0, c1267f.f18265g));
    }

    public final int n(x0 x0Var) {
        if (getChildCount() == 0) {
            return 0;
        }
        r();
        L l7 = this.f7989r;
        boolean z6 = !this.f7994w;
        return e.f(x0Var, l7, u(z6), t(z6), this, this.f7994w);
    }

    public final int o(x0 x0Var) {
        if (getChildCount() == 0) {
            return 0;
        }
        r();
        L l7 = this.f7989r;
        boolean z6 = !this.f7994w;
        return e.g(x0Var, l7, u(z6), t(z6), this, this.f7994w, this.f7992u);
    }

    @Override // m1.AbstractC1286i0
    @SuppressLint({"UnknownNullness"})
    public void onDetachedFromWindow(RecyclerView recyclerView, C1300p0 c1300p0) {
        super.onDetachedFromWindow(recyclerView, c1300p0);
    }

    @Override // m1.AbstractC1286i0
    @SuppressLint({"UnknownNullness"})
    public View onFocusSearchFailed(View view, int i2, C1300p0 c1300p0, x0 x0Var) {
        int q6;
        G();
        if (getChildCount() != 0 && (q6 = q(i2)) != Integer.MIN_VALUE) {
            r();
            I(q6, (int) (this.f7989r.getTotalSpace() * 0.33333334f), false, x0Var);
            C1267F c1267f = this.f7988q;
            c1267f.f18265g = Integer.MIN_VALUE;
            c1267f.f18259a = false;
            s(c1300p0, c1267f, x0Var, true);
            View v6 = q6 == -1 ? this.f7992u ? v(getChildCount() - 1, -1) : v(0, getChildCount()) : this.f7992u ? v(0, getChildCount()) : v(getChildCount() - 1, -1);
            View B6 = q6 == -1 ? B() : A();
            if (!B6.hasFocusable()) {
                return v6;
            }
            if (v6 != null) {
                return B6;
            }
        }
        return null;
    }

    @Override // m1.AbstractC1286i0
    @SuppressLint({"UnknownNullness"})
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (getChildCount() > 0) {
            accessibilityEvent.setFromIndex(findFirstVisibleItemPosition());
            accessibilityEvent.setToIndex(findLastVisibleItemPosition());
        }
    }

    @Override // m1.AbstractC1286i0
    @SuppressLint({"UnknownNullness"})
    public void onLayoutChildren(C1300p0 c1300p0, x0 x0Var) {
        View x6;
        int i2;
        int i7;
        int i8;
        int i9;
        int i10;
        int y6;
        int i11;
        View findViewByPosition;
        int decoratedStart;
        int i12;
        int i13;
        int i14 = -1;
        if (!(this.f7997z == null && this.f7995x == -1) && x0Var.getItemCount() == 0) {
            removeAndRecycleAllViews(c1300p0);
            return;
        }
        H h7 = this.f7997z;
        if (h7 != null && (i13 = h7.f18275b) >= 0) {
            this.f7995x = i13;
        }
        r();
        this.f7988q.f18259a = false;
        G();
        View focusedChild = getFocusedChild();
        C1265D c1265d = this.f7983A;
        boolean z6 = true;
        if (!c1265d.f18251e || this.f7995x != -1 || this.f7997z != null) {
            c1265d.b();
            c1265d.f18250d = this.f7992u ^ this.f7993v;
            if (!x0Var.isPreLayout() && (i2 = this.f7995x) != -1) {
                if (i2 < 0 || i2 >= x0Var.getItemCount()) {
                    this.f7995x = -1;
                    this.f7996y = Integer.MIN_VALUE;
                } else {
                    int i15 = this.f7995x;
                    c1265d.f18248b = i15;
                    H h8 = this.f7997z;
                    if (h8 != null && h8.f18275b >= 0) {
                        boolean z7 = h8.f18277f;
                        c1265d.f18250d = z7;
                        if (z7) {
                            c1265d.f18249c = this.f7989r.getEndAfterPadding() - this.f7997z.f18276e;
                        } else {
                            c1265d.f18249c = this.f7989r.getStartAfterPadding() + this.f7997z.f18276e;
                        }
                    } else if (this.f7996y == Integer.MIN_VALUE) {
                        View findViewByPosition2 = findViewByPosition(i15);
                        if (findViewByPosition2 == null) {
                            if (getChildCount() > 0) {
                                c1265d.f18250d = (this.f7995x < getPosition(getChildAt(0))) == this.f7992u;
                            }
                            c1265d.a();
                        } else if (this.f7989r.getDecoratedMeasurement(findViewByPosition2) > this.f7989r.getTotalSpace()) {
                            c1265d.a();
                        } else if (this.f7989r.getDecoratedStart(findViewByPosition2) - this.f7989r.getStartAfterPadding() < 0) {
                            c1265d.f18249c = this.f7989r.getStartAfterPadding();
                            c1265d.f18250d = false;
                        } else if (this.f7989r.getEndAfterPadding() - this.f7989r.getDecoratedEnd(findViewByPosition2) < 0) {
                            c1265d.f18249c = this.f7989r.getEndAfterPadding();
                            c1265d.f18250d = true;
                        } else {
                            c1265d.f18249c = c1265d.f18250d ? this.f7989r.getTotalSpaceChange() + this.f7989r.getDecoratedEnd(findViewByPosition2) : this.f7989r.getDecoratedStart(findViewByPosition2);
                        }
                    } else {
                        boolean z8 = this.f7992u;
                        c1265d.f18250d = z8;
                        if (z8) {
                            c1265d.f18249c = this.f7989r.getEndAfterPadding() - this.f7996y;
                        } else {
                            c1265d.f18249c = this.f7989r.getStartAfterPadding() + this.f7996y;
                        }
                    }
                    c1265d.f18251e = true;
                }
            }
            if (getChildCount() != 0) {
                View focusedChild2 = getFocusedChild();
                if (focusedChild2 != null) {
                    C1288j0 c1288j0 = (C1288j0) focusedChild2.getLayoutParams();
                    if (!c1288j0.isItemRemoved() && c1288j0.getViewLayoutPosition() >= 0 && c1288j0.getViewLayoutPosition() < x0Var.getItemCount()) {
                        c1265d.assignFromViewAndKeepVisibleRect(focusedChild2, getPosition(focusedChild2));
                        c1265d.f18251e = true;
                    }
                }
                boolean z9 = this.f7990s;
                boolean z10 = this.f7993v;
                if (z9 == z10 && (x6 = x(c1300p0, x0Var, c1265d.f18250d, z10)) != null) {
                    c1265d.assignFromView(x6, getPosition(x6));
                    if (!x0Var.isPreLayout() && supportsPredictiveItemAnimations()) {
                        int decoratedStart2 = this.f7989r.getDecoratedStart(x6);
                        int decoratedEnd = this.f7989r.getDecoratedEnd(x6);
                        int startAfterPadding = this.f7989r.getStartAfterPadding();
                        int endAfterPadding = this.f7989r.getEndAfterPadding();
                        boolean z11 = decoratedEnd <= startAfterPadding && decoratedStart2 < startAfterPadding;
                        boolean z12 = decoratedStart2 >= endAfterPadding && decoratedEnd > endAfterPadding;
                        if (z11 || z12) {
                            if (c1265d.f18250d) {
                                startAfterPadding = endAfterPadding;
                            }
                            c1265d.f18249c = startAfterPadding;
                        }
                    }
                    c1265d.f18251e = true;
                }
            }
            c1265d.a();
            c1265d.f18248b = this.f7993v ? x0Var.getItemCount() - 1 : 0;
            c1265d.f18251e = true;
        } else if (focusedChild != null && (this.f7989r.getDecoratedStart(focusedChild) >= this.f7989r.getEndAfterPadding() || this.f7989r.getDecoratedEnd(focusedChild) <= this.f7989r.getStartAfterPadding())) {
            c1265d.assignFromViewAndKeepVisibleRect(focusedChild, getPosition(focusedChild));
        }
        C1267F c1267f = this.f7988q;
        c1267f.f18264f = c1267f.f18268j >= 0 ? 1 : -1;
        int[] iArr = this.f7986D;
        iArr[0] = 0;
        iArr[1] = 0;
        calculateExtraLayoutSpace(x0Var, iArr);
        int startAfterPadding2 = this.f7989r.getStartAfterPadding() + Math.max(0, iArr[0]);
        int endPadding = this.f7989r.getEndPadding() + Math.max(0, iArr[1]);
        if (x0Var.isPreLayout() && (i11 = this.f7995x) != -1 && this.f7996y != Integer.MIN_VALUE && (findViewByPosition = findViewByPosition(i11)) != null) {
            if (this.f7992u) {
                i12 = this.f7989r.getEndAfterPadding() - this.f7989r.getDecoratedEnd(findViewByPosition);
                decoratedStart = this.f7996y;
            } else {
                decoratedStart = this.f7989r.getDecoratedStart(findViewByPosition) - this.f7989r.getStartAfterPadding();
                i12 = this.f7996y;
            }
            int i16 = i12 - decoratedStart;
            if (i16 > 0) {
                startAfterPadding2 += i16;
            } else {
                endPadding -= i16;
            }
        }
        if (!c1265d.f18250d ? !this.f7992u : this.f7992u) {
            i14 = 1;
        }
        D(c1300p0, x0Var, c1265d, i14);
        detachAndScrapAttachedViews(c1300p0);
        this.f7988q.f18270l = this.f7989r.getMode() == 0 && this.f7989r.getEnd() == 0;
        C1267F c1267f2 = this.f7988q;
        x0Var.isPreLayout();
        c1267f2.getClass();
        this.f7988q.f18267i = 0;
        if (c1265d.f18250d) {
            K(c1265d.f18248b, c1265d.f18249c);
            C1267F c1267f3 = this.f7988q;
            c1267f3.f18266h = startAfterPadding2;
            s(c1300p0, c1267f3, x0Var, false);
            C1267F c1267f4 = this.f7988q;
            i8 = c1267f4.f18260b;
            int i17 = c1267f4.f18262d;
            int i18 = c1267f4.f18261c;
            if (i18 > 0) {
                endPadding += i18;
            }
            J(c1265d.f18248b, c1265d.f18249c);
            C1267F c1267f5 = this.f7988q;
            c1267f5.f18266h = endPadding;
            c1267f5.f18262d += c1267f5.f18263e;
            s(c1300p0, c1267f5, x0Var, false);
            C1267F c1267f6 = this.f7988q;
            i7 = c1267f6.f18260b;
            int i19 = c1267f6.f18261c;
            if (i19 > 0) {
                K(i17, i8);
                C1267F c1267f7 = this.f7988q;
                c1267f7.f18266h = i19;
                s(c1300p0, c1267f7, x0Var, false);
                i8 = this.f7988q.f18260b;
            }
        } else {
            J(c1265d.f18248b, c1265d.f18249c);
            C1267F c1267f8 = this.f7988q;
            c1267f8.f18266h = endPadding;
            s(c1300p0, c1267f8, x0Var, false);
            C1267F c1267f9 = this.f7988q;
            i7 = c1267f9.f18260b;
            int i20 = c1267f9.f18262d;
            int i21 = c1267f9.f18261c;
            if (i21 > 0) {
                startAfterPadding2 += i21;
            }
            K(c1265d.f18248b, c1265d.f18249c);
            C1267F c1267f10 = this.f7988q;
            c1267f10.f18266h = startAfterPadding2;
            c1267f10.f18262d += c1267f10.f18263e;
            s(c1300p0, c1267f10, x0Var, false);
            C1267F c1267f11 = this.f7988q;
            int i22 = c1267f11.f18260b;
            int i23 = c1267f11.f18261c;
            if (i23 > 0) {
                J(i20, i7);
                C1267F c1267f12 = this.f7988q;
                c1267f12.f18266h = i23;
                s(c1300p0, c1267f12, x0Var, false);
                i7 = this.f7988q.f18260b;
            }
            i8 = i22;
        }
        if (getChildCount() > 0) {
            if (this.f7992u ^ this.f7993v) {
                int y7 = y(i7, c1300p0, x0Var, true);
                i9 = i8 + y7;
                i10 = i7 + y7;
                y6 = z(i9, c1300p0, x0Var, false);
            } else {
                int z13 = z(i8, c1300p0, x0Var, true);
                i9 = i8 + z13;
                i10 = i7 + z13;
                y6 = y(i10, c1300p0, x0Var, false);
            }
            i8 = i9 + y6;
            i7 = i10 + y6;
        }
        if (x0Var.willRunPredictiveAnimations() && getChildCount() != 0 && !x0Var.isPreLayout() && supportsPredictiveItemAnimations()) {
            List<B0> scrapList = c1300p0.getScrapList();
            int size = scrapList.size();
            int position = getPosition(getChildAt(0));
            int i24 = 0;
            int i25 = 0;
            int i26 = 0;
            while (i24 < size) {
                B0 b02 = scrapList.get(i24);
                if (!b02.f()) {
                    boolean z14 = b02.getLayoutPosition() < position ? z6 : false;
                    boolean z15 = this.f7992u;
                    View view = b02.f18217a;
                    if (z14 != z15) {
                        i25 += this.f7989r.getDecoratedMeasurement(view);
                    } else {
                        i26 += this.f7989r.getDecoratedMeasurement(view);
                    }
                }
                i24++;
                z6 = true;
            }
            this.f7988q.f18269k = scrapList;
            if (i25 > 0) {
                K(getPosition(B()), i8);
                C1267F c1267f13 = this.f7988q;
                c1267f13.f18266h = i25;
                c1267f13.f18261c = 0;
                c1267f13.assignPositionFromScrapList();
                s(c1300p0, this.f7988q, x0Var, false);
            }
            if (i26 > 0) {
                J(getPosition(A()), i7);
                C1267F c1267f14 = this.f7988q;
                c1267f14.f18266h = i26;
                c1267f14.f18261c = 0;
                c1267f14.assignPositionFromScrapList();
                s(c1300p0, this.f7988q, x0Var, false);
            }
            this.f7988q.f18269k = null;
        }
        if (x0Var.isPreLayout()) {
            c1265d.b();
        } else {
            this.f7989r.onLayoutComplete();
        }
        this.f7990s = this.f7993v;
    }

    @Override // m1.AbstractC1286i0
    @SuppressLint({"UnknownNullness"})
    public void onLayoutCompleted(x0 x0Var) {
        super.onLayoutCompleted(x0Var);
        this.f7997z = null;
        this.f7995x = -1;
        this.f7996y = Integer.MIN_VALUE;
        this.f7983A.b();
    }

    @Override // m1.AbstractC1286i0
    @SuppressLint({"UnknownNullness"})
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof H) {
            H h7 = (H) parcelable;
            this.f7997z = h7;
            if (this.f7995x != -1) {
                h7.f18275b = -1;
            }
            requestLayout();
        }
    }

    @Override // m1.AbstractC1286i0
    @SuppressLint({"UnknownNullness"})
    public Parcelable onSaveInstanceState() {
        H h7 = this.f7997z;
        if (h7 != null) {
            return new H(h7);
        }
        H h8 = new H();
        if (getChildCount() <= 0) {
            h8.f18275b = -1;
            return h8;
        }
        r();
        boolean z6 = this.f7990s ^ this.f7992u;
        h8.f18277f = z6;
        if (z6) {
            View A6 = A();
            h8.f18276e = this.f7989r.getEndAfterPadding() - this.f7989r.getDecoratedEnd(A6);
            h8.f18275b = getPosition(A6);
            return h8;
        }
        View B6 = B();
        h8.f18275b = getPosition(B6);
        h8.f18276e = this.f7989r.getDecoratedStart(B6) - this.f7989r.getStartAfterPadding();
        return h8;
    }

    public final int p(x0 x0Var) {
        if (getChildCount() == 0) {
            return 0;
        }
        r();
        L l7 = this.f7989r;
        boolean z6 = !this.f7994w;
        return e.h(x0Var, l7, u(z6), t(z6), this, this.f7994w);
    }

    public final int q(int i2) {
        return i2 != 1 ? i2 != 2 ? i2 != 17 ? i2 != 33 ? i2 != 66 ? (i2 == 130 && this.f7987p == 1) ? 1 : Integer.MIN_VALUE : this.f7987p == 0 ? 1 : Integer.MIN_VALUE : this.f7987p == 1 ? -1 : Integer.MIN_VALUE : this.f7987p == 0 ? -1 : Integer.MIN_VALUE : (this.f7987p != 1 && isLayoutRTL()) ? -1 : 1 : (this.f7987p != 1 && isLayoutRTL()) ? 1 : -1;
    }

    public final void r() {
        if (this.f7988q == null) {
            C1267F c1267f = new C1267F();
            c1267f.f18259a = true;
            c1267f.f18266h = 0;
            c1267f.f18267i = 0;
            c1267f.f18269k = null;
            this.f7988q = c1267f;
        }
    }

    public final int s(C1300p0 c1300p0, C1267F c1267f, x0 x0Var, boolean z6) {
        int i2;
        int i7 = c1267f.f18261c;
        int i8 = c1267f.f18265g;
        if (i8 != Integer.MIN_VALUE) {
            if (i7 < 0) {
                c1267f.f18265g = i8 + i7;
            }
            E(c1300p0, c1267f);
        }
        int i9 = c1267f.f18261c + c1267f.f18266h;
        while (true) {
            if ((!c1267f.f18270l && i9 <= 0) || (i2 = c1267f.f18262d) < 0 || i2 >= x0Var.getItemCount()) {
                break;
            }
            C1266E c1266e = this.f7984B;
            c1266e.f18254a = 0;
            c1266e.f18255b = false;
            c1266e.f18256c = false;
            c1266e.f18257d = false;
            C(c1300p0, x0Var, c1267f, c1266e);
            if (!c1266e.f18255b) {
                c1267f.f18260b = (c1266e.f18254a * c1267f.f18264f) + c1267f.f18260b;
                if (!c1266e.f18256c || c1267f.f18269k != null || !x0Var.isPreLayout()) {
                    int i10 = c1267f.f18261c;
                    int i11 = c1266e.f18254a;
                    c1267f.f18261c = i10 - i11;
                    i9 -= i11;
                }
                int i12 = c1267f.f18265g;
                if (i12 != Integer.MIN_VALUE) {
                    int i13 = i12 + c1266e.f18254a;
                    c1267f.f18265g = i13;
                    int i14 = c1267f.f18261c;
                    if (i14 < 0) {
                        c1267f.f18265g = i13 + i14;
                    }
                    E(c1300p0, c1267f);
                }
                if (z6 && c1266e.f18257d) {
                    break;
                }
            } else {
                break;
            }
        }
        return i7 - c1267f.f18261c;
    }

    @Override // m1.AbstractC1286i0
    @SuppressLint({"UnknownNullness"})
    public int scrollHorizontallyBy(int i2, C1300p0 c1300p0, x0 x0Var) {
        if (this.f7987p == 1) {
            return 0;
        }
        return H(i2, c1300p0, x0Var);
    }

    @Override // m1.AbstractC1286i0
    public void scrollToPosition(int i2) {
        this.f7995x = i2;
        this.f7996y = Integer.MIN_VALUE;
        H h7 = this.f7997z;
        if (h7 != null) {
            h7.f18275b = -1;
        }
        requestLayout();
    }

    @Override // m1.AbstractC1286i0
    @SuppressLint({"UnknownNullness"})
    public int scrollVerticallyBy(int i2, C1300p0 c1300p0, x0 x0Var) {
        if (this.f7987p == 0) {
            return 0;
        }
        return H(i2, c1300p0, x0Var);
    }

    public void setOrientation(int i2) {
        if (i2 != 0 && i2 != 1) {
            throw new IllegalArgumentException(i.f(i2, "invalid orientation:"));
        }
        assertNotInLayoutOrScroll(null);
        if (i2 != this.f7987p || this.f7989r == null) {
            L createOrientationHelper = L.createOrientationHelper(this, i2);
            this.f7989r = createOrientationHelper;
            this.f7983A.f18247a = createOrientationHelper;
            this.f7987p = i2;
            requestLayout();
        }
    }

    public void setReverseLayout(boolean z6) {
        assertNotInLayoutOrScroll(null);
        if (z6 == this.f7991t) {
            return;
        }
        this.f7991t = z6;
        requestLayout();
    }

    public void setStackFromEnd(boolean z6) {
        assertNotInLayoutOrScroll(null);
        if (this.f7993v == z6) {
            return;
        }
        this.f7993v = z6;
        requestLayout();
    }

    @Override // m1.AbstractC1286i0
    @SuppressLint({"UnknownNullness"})
    public void smoothScrollToPosition(RecyclerView recyclerView, x0 x0Var, int i2) {
        I i7 = new I(recyclerView.getContext());
        i7.setTargetPosition(i2);
        startSmoothScroll(i7);
    }

    @Override // m1.AbstractC1286i0
    public boolean supportsPredictiveItemAnimations() {
        return this.f7997z == null && this.f7990s == this.f7993v;
    }

    public final View t(boolean z6) {
        return this.f7992u ? w(0, getChildCount(), z6) : w(getChildCount() - 1, -1, z6);
    }

    public final View u(boolean z6) {
        return this.f7992u ? w(getChildCount() - 1, -1, z6) : w(0, getChildCount(), z6);
    }

    public final View v(int i2, int i7) {
        int i8;
        int i9;
        r();
        if (i7 <= i2 && i7 >= i2) {
            return getChildAt(i2);
        }
        if (this.f7989r.getDecoratedStart(getChildAt(i2)) < this.f7989r.getStartAfterPadding()) {
            i8 = 16644;
            i9 = 16388;
        } else {
            i8 = 4161;
            i9 = 4097;
        }
        return this.f7987p == 0 ? this.f18390c.p(i2, i7, i8, i9) : this.f18391d.p(i2, i7, i8, i9);
    }

    public final View w(int i2, int i7, boolean z6) {
        r();
        int i8 = z6 ? 24579 : 320;
        return this.f7987p == 0 ? this.f18390c.p(i2, i7, i8, 320) : this.f18391d.p(i2, i7, i8, 320);
    }

    public View x(C1300p0 c1300p0, x0 x0Var, boolean z6, boolean z7) {
        int i2;
        int i7;
        int i8;
        r();
        int childCount = getChildCount();
        if (z7) {
            i7 = getChildCount() - 1;
            i2 = -1;
            i8 = -1;
        } else {
            i2 = childCount;
            i7 = 0;
            i8 = 1;
        }
        int itemCount = x0Var.getItemCount();
        int startAfterPadding = this.f7989r.getStartAfterPadding();
        int endAfterPadding = this.f7989r.getEndAfterPadding();
        View view = null;
        View view2 = null;
        View view3 = null;
        while (i7 != i2) {
            View childAt = getChildAt(i7);
            int position = getPosition(childAt);
            int decoratedStart = this.f7989r.getDecoratedStart(childAt);
            int decoratedEnd = this.f7989r.getDecoratedEnd(childAt);
            if (position >= 0 && position < itemCount) {
                if (!((C1288j0) childAt.getLayoutParams()).isItemRemoved()) {
                    boolean z8 = decoratedEnd <= startAfterPadding && decoratedStart < startAfterPadding;
                    boolean z9 = decoratedStart >= endAfterPadding && decoratedEnd > endAfterPadding;
                    if (!z8 && !z9) {
                        return childAt;
                    }
                    if (z6) {
                        if (!z9) {
                            if (view != null) {
                            }
                            view = childAt;
                        }
                        view2 = childAt;
                    } else {
                        if (!z8) {
                            if (view != null) {
                            }
                            view = childAt;
                        }
                        view2 = childAt;
                    }
                } else if (view3 == null) {
                    view3 = childAt;
                }
            }
            i7 += i8;
        }
        return view != null ? view : view2 != null ? view2 : view3;
    }

    public final int y(int i2, C1300p0 c1300p0, x0 x0Var, boolean z6) {
        int endAfterPadding;
        int endAfterPadding2 = this.f7989r.getEndAfterPadding() - i2;
        if (endAfterPadding2 <= 0) {
            return 0;
        }
        int i7 = -H(-endAfterPadding2, c1300p0, x0Var);
        int i8 = i2 + i7;
        if (!z6 || (endAfterPadding = this.f7989r.getEndAfterPadding() - i8) <= 0) {
            return i7;
        }
        this.f7989r.offsetChildren(endAfterPadding);
        return endAfterPadding + i7;
    }

    public final int z(int i2, C1300p0 c1300p0, x0 x0Var, boolean z6) {
        int startAfterPadding;
        int startAfterPadding2 = i2 - this.f7989r.getStartAfterPadding();
        if (startAfterPadding2 <= 0) {
            return 0;
        }
        int i7 = -H(startAfterPadding2, c1300p0, x0Var);
        int i8 = i2 + i7;
        if (!z6 || (startAfterPadding = i8 - this.f7989r.getStartAfterPadding()) <= 0) {
            return i7;
        }
        this.f7989r.offsetChildren(-startAfterPadding);
        return i7 - startAfterPadding;
    }

    public LinearLayoutManager(@SuppressLint({"UnknownNullness"}) Context context, int i2, boolean z6) {
        this.f7987p = 1;
        this.f7991t = false;
        this.f7992u = false;
        this.f7993v = false;
        this.f7994w = true;
        this.f7995x = -1;
        this.f7996y = Integer.MIN_VALUE;
        this.f7997z = null;
        this.f7983A = new C1265D();
        this.f7984B = new C1266E();
        this.f7985C = 2;
        this.f7986D = new int[2];
        setOrientation(i2);
        setReverseLayout(z6);
    }

    @SuppressLint({"UnknownNullness"})
    public LinearLayoutManager(Context context, AttributeSet attributeSet, int i2, int i7) {
        this.f7987p = 1;
        this.f7991t = false;
        this.f7992u = false;
        this.f7993v = false;
        this.f7994w = true;
        this.f7995x = -1;
        this.f7996y = Integer.MIN_VALUE;
        this.f7997z = null;
        this.f7983A = new C1265D();
        this.f7984B = new C1266E();
        this.f7985C = 2;
        this.f7986D = new int[2];
        C1284h0 properties = AbstractC1286i0.getProperties(context, attributeSet, i2, i7);
        setOrientation(properties.f18380a);
        setReverseLayout(properties.f18382c);
        setStackFromEnd(properties.f18383d);
    }

    public void D(C1300p0 c1300p0, x0 x0Var, C1265D c1265d, int i2) {
    }
}
