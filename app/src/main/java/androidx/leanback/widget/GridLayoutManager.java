package androidx.leanback.widget;

import M.AbstractC0181p0;
import android.content.Context;
import android.graphics.Rect;
import android.media.AudioManager;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import androidx.media3.common.MimeTypes;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Map;
import m1.AbstractC1286i0;
import m1.C1288j0;
import m1.C1300p0;
import m1.C1310w;
import m1.InterfaceC1282g0;

/* loaded from: classes.dex */
public final class GridLayoutManager extends AbstractC1286i0 {

    /* renamed from: h0, reason: collision with root package name */
    public static final Rect f6496h0 = new Rect();

    /* renamed from: i0, reason: collision with root package name */
    public static final int[] f6497i0 = new int[2];

    /* renamed from: A, reason: collision with root package name */
    public AudioManager f6498A;

    /* renamed from: B, reason: collision with root package name */
    public C1300p0 f6499B;

    /* renamed from: C, reason: collision with root package name */
    public int f6500C;

    /* renamed from: D, reason: collision with root package name */
    public InterfaceC0530t0 f6501D;

    /* renamed from: E, reason: collision with root package name */
    public ArrayList f6502E;

    /* renamed from: F, reason: collision with root package name */
    public int f6503F;

    /* renamed from: G, reason: collision with root package name */
    public I f6504G;

    /* renamed from: H, reason: collision with root package name */
    public K f6505H;

    /* renamed from: I, reason: collision with root package name */
    public int f6506I;

    /* renamed from: J, reason: collision with root package name */
    public int f6507J;

    /* renamed from: K, reason: collision with root package name */
    public int f6508K;

    /* renamed from: L, reason: collision with root package name */
    public int f6509L;

    /* renamed from: M, reason: collision with root package name */
    public int f6510M;

    /* renamed from: N, reason: collision with root package name */
    public int[] f6511N;

    /* renamed from: O, reason: collision with root package name */
    public int f6512O;

    /* renamed from: P, reason: collision with root package name */
    public int f6513P;

    /* renamed from: Q, reason: collision with root package name */
    public int f6514Q;

    /* renamed from: R, reason: collision with root package name */
    public int f6515R;

    /* renamed from: S, reason: collision with root package name */
    public int f6516S;

    /* renamed from: T, reason: collision with root package name */
    public int f6517T;

    /* renamed from: U, reason: collision with root package name */
    public int f6518U;

    /* renamed from: V, reason: collision with root package name */
    public int f6519V;

    /* renamed from: W, reason: collision with root package name */
    public E f6520W;

    /* renamed from: X, reason: collision with root package name */
    public int f6521X;

    /* renamed from: Y, reason: collision with root package name */
    public final C1 f6522Y;

    /* renamed from: Z, reason: collision with root package name */
    public final U f6523Z;

    /* renamed from: a0, reason: collision with root package name */
    public int f6524a0;

    /* renamed from: b0, reason: collision with root package name */
    public int f6525b0;

    /* renamed from: c0, reason: collision with root package name */
    public final int[] f6526c0;

    /* renamed from: d0, reason: collision with root package name */
    public final G2.b f6527d0;

    /* renamed from: e0, reason: collision with root package name */
    public C0498d0 f6528e0;

    /* renamed from: f0, reason: collision with root package name */
    public final F f6529f0;

    /* renamed from: g0, reason: collision with root package name */
    public final G f6530g0;

    /* renamed from: p, reason: collision with root package name */
    public float f6531p;

    /* renamed from: q, reason: collision with root package name */
    public int f6532q;

    /* renamed from: r, reason: collision with root package name */
    public AbstractC0529t f6533r;

    /* renamed from: s, reason: collision with root package name */
    public int f6534s;

    /* renamed from: t, reason: collision with root package name */
    public m1.L f6535t;

    /* renamed from: u, reason: collision with root package name */
    public int f6536u;

    /* renamed from: v, reason: collision with root package name */
    public m1.x0 f6537v;

    /* renamed from: w, reason: collision with root package name */
    public int f6538w;

    /* renamed from: x, reason: collision with root package name */
    public int f6539x;

    /* renamed from: y, reason: collision with root package name */
    public final SparseIntArray f6540y;

    /* renamed from: z, reason: collision with root package name */
    public int[] f6541z;

    public GridLayoutManager() {
        this(null);
    }

    public static int p(View view) {
        J j7;
        if (view == null || (j7 = (J) view.getLayoutParams()) == null || j7.isItemRemoved()) {
            return -1;
        }
        return j7.getAbsoluteAdapterPosition();
    }

    public final boolean A(int i2) {
        m1.B0 findViewHolderForAdapterPosition = this.f6533r.findViewHolderForAdapterPosition(i2);
        if (findViewHolderForAdapterPosition == null) {
            return false;
        }
        View view = findViewHolderForAdapterPosition.f18217a;
        return view.getLeft() >= 0 && view.getRight() <= this.f6533r.getWidth() && view.getTop() >= 0 && view.getBottom() <= this.f6533r.getHeight();
    }

    public final void B(View view, int i2, int i7, int i8, int i9) {
        int t6;
        int i10;
        int i11;
        int i12;
        int i13;
        int q6 = this.f6534s == 0 ? q(view) : r(view);
        int i14 = this.f6510M;
        if (i14 > 0) {
            q6 = Math.min(q6, i14);
        }
        int i15 = this.f6517T;
        int i16 = i15 & 112;
        int absoluteGravity = (this.f6500C & 786432) != 0 ? Gravity.getAbsoluteGravity(i15 & 8388615, 1) : i15 & 7;
        int i17 = this.f6534s;
        if ((i17 != 0 || i16 != 48) && (i17 != 1 || absoluteGravity != 3)) {
            if ((i17 == 0 && i16 == 80) || (i17 == 1 && absoluteGravity == 5)) {
                t6 = t(i2) - q6;
            } else if ((i17 == 0 && i16 == 16) || (i17 == 1 && absoluteGravity == 1)) {
                t6 = (t(i2) - q6) / 2;
            }
            i9 += t6;
        }
        if (this.f6534s == 0) {
            i12 = i7;
            i13 = i8;
            i10 = i9;
            i11 = q6 + i9;
        } else {
            i10 = i7;
            i11 = i8;
            i12 = i9;
            i13 = q6 + i9;
        }
        J j7 = (J) view.getLayoutParams();
        layoutDecoratedWithMargins(view, i12, i10, i13, i11);
        Rect rect = f6496h0;
        super.getDecoratedBoundsWithMargins(view, rect);
        int i18 = i12 - rect.left;
        int i19 = i10 - rect.top;
        int i20 = rect.right - i13;
        int i21 = rect.bottom - i11;
        j7.f6576e = i18;
        j7.f6577f = i19;
        j7.f6578g = i20;
        j7.f6579h = i21;
        J j8 = (J) view.getLayoutParams();
        j8.getClass();
        U u6 = this.f6523Z;
        j8.f6580i = u6.f6750b.getAlignmentPosition(view);
        j8.f6581j = u6.f6749a.getAlignmentPosition(view);
    }

    public final void C() {
        int i2 = this.f6536u - 1;
        this.f6536u = i2;
        if (i2 == 0) {
            this.f6499B = null;
            this.f6537v = null;
            this.f6538w = 0;
            this.f6539x = 0;
        }
    }

    public final void D(View view) {
        int childMeasureSpec;
        int i2;
        J j7 = (J) view.getLayoutParams();
        Rect rect = f6496h0;
        calculateItemDecorationsForChild(view, rect);
        int i7 = ((ViewGroup.MarginLayoutParams) j7).leftMargin + ((ViewGroup.MarginLayoutParams) j7).rightMargin + rect.left + rect.right;
        int i8 = ((ViewGroup.MarginLayoutParams) j7).topMargin + ((ViewGroup.MarginLayoutParams) j7).bottomMargin + rect.top + rect.bottom;
        int makeMeasureSpec = this.f6509L == -2 ? View.MeasureSpec.makeMeasureSpec(0, 0) : View.MeasureSpec.makeMeasureSpec(this.f6510M, 1073741824);
        if (this.f6534s == 0) {
            childMeasureSpec = ViewGroup.getChildMeasureSpec(View.MeasureSpec.makeMeasureSpec(0, 0), i7, ((ViewGroup.MarginLayoutParams) j7).width);
            i2 = ViewGroup.getChildMeasureSpec(makeMeasureSpec, i8, ((ViewGroup.MarginLayoutParams) j7).height);
        } else {
            int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(View.MeasureSpec.makeMeasureSpec(0, 0), i8, ((ViewGroup.MarginLayoutParams) j7).height);
            childMeasureSpec = ViewGroup.getChildMeasureSpec(makeMeasureSpec, i7, ((ViewGroup.MarginLayoutParams) j7).width);
            i2 = childMeasureSpec2;
        }
        view.measure(childMeasureSpec, i2);
    }

    public final void E() {
        this.f6520W.prependVisibleItems((this.f6500C & 262144) != 0 ? this.f6524a0 + this.f6525b0 + this.f6539x : (-this.f6525b0) - this.f6539x);
    }

    public final void F(boolean z6) {
        int i2;
        if (z6) {
            if (z()) {
                return;
            }
        } else if (getItemCount() == 0 || this.f6533r.findViewHolderForAdapterPosition(0) != null) {
            return;
        }
        K k7 = this.f6505H;
        if (k7 == null) {
            K k8 = new K(this, z6 ? 1 : -1, this.f6518U > 1);
            this.f6506I = 0;
            startSmoothScroll(k8);
        } else {
            GridLayoutManager gridLayoutManager = k7.f6588u;
            if (z6) {
                int i7 = k7.f6587t;
                if (i7 < gridLayoutManager.f6532q) {
                    k7.f6587t = i7 + 1;
                }
            } else {
                int i8 = k7.f6587t;
                if (i8 > (-gridLayoutManager.f6532q)) {
                    k7.f6587t = i8 - 1;
                }
            }
        }
        if (this.f6534s == 0) {
            i2 = 4;
            if (getLayoutDirection() != 1 ? !z6 : z6) {
                i2 = 3;
            }
        } else {
            i2 = z6 ? 2 : 1;
        }
        if (this.f6498A == null) {
            this.f6498A = (AudioManager) this.f6533r.getContext().getSystemService(MimeTypes.BASE_TYPE_AUDIO);
        }
        this.f6498A.playSoundEffect(i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:71:0x014a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean G(boolean r18) {
        /*
            Method dump skipped, instructions count: 355
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.leanback.widget.GridLayoutManager.G(boolean):boolean");
    }

    public final int H(int i2, boolean z6) {
        E e3 = this.f6520W;
        if (e3 == null) {
            return i2;
        }
        int i7 = this.f6503F;
        int rowIndex = i7 != -1 ? e3.getRowIndex(i7) : -1;
        int childCount = getChildCount();
        View view = null;
        for (int i8 = 0; i8 < childCount && i2 != 0; i8++) {
            int i9 = i2 > 0 ? i8 : (childCount - 1) - i8;
            View childAt = getChildAt(i9);
            if (childAt.getVisibility() == 0 && (!hasFocus() || childAt.hasFocusable())) {
                int p6 = p(getChildAt(i9));
                int rowIndex2 = this.f6520W.getRowIndex(p6);
                if (rowIndex == -1) {
                    i7 = p6;
                    view = childAt;
                    rowIndex = rowIndex2;
                } else if (rowIndex2 == rowIndex && ((i2 > 0 && p6 > i7) || (i2 < 0 && p6 < i7))) {
                    i2 = i2 > 0 ? i2 - 1 : i2 + 1;
                    i7 = p6;
                    view = childAt;
                }
            }
        }
        if (view != null) {
            if (z6) {
                if (hasFocus()) {
                    this.f6500C |= 32;
                    view.requestFocus();
                    this.f6500C &= -33;
                }
                this.f6503F = i7;
                return i2;
            }
            O(view, view.findFocus(), true, 0, 0);
        }
        return i2;
    }

    public final void I() {
        int i2 = this.f6500C;
        if ((65600 & i2) == 65536) {
            this.f6520W.removeInvisibleItemsAtEnd(this.f6503F, (i2 & 262144) != 0 ? -this.f6525b0 : this.f6524a0 + this.f6525b0);
        }
    }

    public final void J() {
        int i2 = this.f6500C;
        if ((65600 & i2) == 65536) {
            this.f6520W.removeInvisibleItemsAtFront(this.f6503F, (i2 & 262144) != 0 ? this.f6524a0 + this.f6525b0 : -this.f6525b0);
        }
    }

    public final void K(C1300p0 c1300p0, m1.x0 x0Var) {
        int i2 = this.f6536u;
        if (i2 == 0) {
            this.f6499B = c1300p0;
            this.f6537v = x0Var;
            this.f6538w = 0;
            this.f6539x = 0;
        }
        this.f6536u = i2 + 1;
    }

    public final int L(int i2) {
        int minScroll;
        int i7 = this.f6500C;
        if ((i7 & 64) == 0 && (i7 & 3) != 1) {
            C1 c12 = this.f6522Y;
            if (i2 <= 0 ? !(i2 >= 0 || c12.mainAxis().isMinUnknown() || i2 >= (minScroll = c12.mainAxis().getMinScroll())) : !(c12.mainAxis().isMaxUnknown() || i2 <= (minScroll = c12.mainAxis().getMaxScroll()))) {
                i2 = minScroll;
            }
        }
        if (i2 == 0) {
            return 0;
        }
        int i8 = -i2;
        int childCount = getChildCount();
        if (this.f6534s == 1) {
            for (int i9 = 0; i9 < childCount; i9++) {
                getChildAt(i9).offsetTopAndBottom(i8);
            }
        } else {
            for (int i10 = 0; i10 < childCount; i10++) {
                getChildAt(i10).offsetLeftAndRight(i8);
            }
        }
        if ((this.f6500C & 3) == 1) {
            U();
            return i2;
        }
        int childCount2 = getChildCount();
        if ((this.f6500C & 262144) == 0 ? i2 >= 0 : i2 <= 0) {
            m();
        } else {
            E();
        }
        boolean z6 = getChildCount() > childCount2;
        int childCount3 = getChildCount();
        if ((262144 & this.f6500C) == 0 ? i2 >= 0 : i2 <= 0) {
            J();
        } else {
            I();
        }
        if (z6 | (getChildCount() < childCount3)) {
            T();
        }
        this.f6533r.invalidate();
        U();
        return i2;
    }

    public final int M(int i2) {
        int i7 = 0;
        if (i2 == 0) {
            return 0;
        }
        int i8 = -i2;
        int childCount = getChildCount();
        if (this.f6534s == 0) {
            while (i7 < childCount) {
                getChildAt(i7).offsetTopAndBottom(i8);
                i7++;
            }
        } else {
            while (i7 < childCount) {
                getChildAt(i7).offsetLeftAndRight(i8);
                i7++;
            }
        }
        this.f6508K += i2;
        V();
        this.f6533r.invalidate();
        return i2;
    }

    public final void N(int i2, boolean z6) {
        View findViewByPosition = findViewByPosition(i2);
        boolean isSmoothScrolling = isSmoothScrolling();
        if (!isSmoothScrolling && !this.f6533r.isLayoutRequested() && findViewByPosition != null && p(findViewByPosition) == i2) {
            this.f6500C |= 32;
            O(findViewByPosition, findViewByPosition.findFocus(), z6, 0, 0);
            this.f6500C &= -33;
            return;
        }
        int i7 = this.f6500C;
        if ((i7 & 512) == 0 || (i7 & 64) != 0) {
            this.f6503F = i2;
            this.f6506I = Integer.MIN_VALUE;
            return;
        }
        if (z6 && !this.f6533r.isLayoutRequested()) {
            this.f6503F = i2;
            this.f6506I = Integer.MIN_VALUE;
            if (this.f6520W == null) {
                Log.w("GridLayoutManager:" + this.f6533r.getId(), "setSelectionSmooth should not be called before first layout pass");
                return;
            }
            H h7 = new H(this);
            h7.setTargetPosition(i2);
            startSmoothScroll(h7);
            int targetPosition = h7.getTargetPosition();
            if (targetPosition != this.f6503F) {
                this.f6503F = targetPosition;
                return;
            }
            return;
        }
        if (isSmoothScrolling) {
            I i8 = this.f6504G;
            if (i8 != null) {
                i8.f6564q = true;
            }
            this.f6533r.stopScroll();
        }
        if (!this.f6533r.isLayoutRequested() && findViewByPosition != null && p(findViewByPosition) == i2) {
            this.f6500C |= 32;
            O(findViewByPosition, findViewByPosition.findFocus(), z6, 0, 0);
            this.f6500C &= -33;
        } else {
            this.f6503F = i2;
            this.f6506I = Integer.MIN_VALUE;
            this.f6500C |= 256;
            requestLayout();
        }
    }

    public final void O(View view, View view2, boolean z6, int i2, int i7) {
        if ((this.f6500C & 64) != 0) {
            return;
        }
        int p6 = p(view);
        if (view != null && view2 != null) {
            ((J) view.getLayoutParams()).getClass();
        }
        if (p6 != this.f6503F) {
            this.f6503F = p6;
            this.f6506I = 0;
            if ((this.f6500C & 3) != 1) {
                n();
            }
            if (this.f6533r.H()) {
                this.f6533r.invalidate();
            }
        }
        if (view == null) {
            return;
        }
        if (!view.hasFocus() && this.f6533r.hasFocus()) {
            view.requestFocus();
        }
        if ((this.f6500C & 131072) == 0 && z6) {
            return;
        }
        int[] iArr = f6497i0;
        if (!v(view, view2, iArr) && i2 == 0 && i7 == 0) {
            return;
        }
        int i8 = iArr[0] + i2;
        int i9 = iArr[1] + i7;
        if ((this.f6500C & 3) == 1) {
            L(i8);
            M(i9);
            return;
        }
        if (this.f6534s != 0) {
            i9 = i8;
            i8 = i9;
        }
        if (z6) {
            this.f6533r.smoothScrollBy(i8, i9);
        } else {
            this.f6533r.scrollBy(i8, i9);
            o();
        }
    }

    public final void P(int i2) {
        if (i2 < 0 && i2 != -2) {
            throw new IllegalArgumentException(A.i.f(i2, "Invalid row height: "));
        }
        this.f6509L = i2;
    }

    public final void Q(int i2, boolean z6) {
        if (this.f6503F == i2 || i2 == -1) {
            return;
        }
        N(i2, z6);
    }

    public final void R() {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            J j7 = (J) childAt.getLayoutParams();
            j7.getClass();
            U u6 = this.f6523Z;
            j7.f6580i = u6.f6750b.getAlignmentPosition(childAt);
            j7.f6581j = u6.f6749a.getAlignmentPosition(childAt);
        }
    }

    public final void S() {
        if (getChildCount() <= 0) {
            this.f6538w = 0;
        } else {
            this.f6538w = this.f6520W.getFirstVisibleIndex() - ((J) getChildAt(0).getLayoutParams()).getViewLayoutPosition();
        }
    }

    public final void T() {
        int i2 = (this.f6500C & (-1025)) | (G(false) ? 1024 : 0);
        this.f6500C = i2;
        if ((i2 & 1024) != 0) {
            AbstractC0181p0.postOnAnimation(this.f6533r, this.f6529f0);
        }
    }

    public final void U() {
        int firstVisibleIndex;
        int lastVisibleIndex;
        int itemCount;
        int i2;
        int i7;
        int i8;
        int i9;
        int i10;
        int top;
        int i11;
        int top2;
        int i12;
        if (this.f6537v.getItemCount() == 0) {
            return;
        }
        if ((this.f6500C & 262144) == 0) {
            firstVisibleIndex = this.f6520W.getLastVisibleIndex();
            i2 = this.f6537v.getItemCount() - 1;
            lastVisibleIndex = this.f6520W.getFirstVisibleIndex();
            itemCount = 0;
        } else {
            firstVisibleIndex = this.f6520W.getFirstVisibleIndex();
            lastVisibleIndex = this.f6520W.getLastVisibleIndex();
            itemCount = this.f6537v.getItemCount() - 1;
            i2 = 0;
        }
        if (firstVisibleIndex < 0 || lastVisibleIndex < 0) {
            return;
        }
        boolean z6 = firstVisibleIndex == i2;
        boolean z7 = lastVisibleIndex == itemCount;
        C1 c12 = this.f6522Y;
        if (z6 || !c12.mainAxis().isMaxUnknown() || z7 || !c12.mainAxis().isMinUnknown()) {
            int[] iArr = f6497i0;
            if (z6) {
                i7 = this.f6520W.findRowMax(true, iArr);
                View findViewByPosition = findViewByPosition(iArr[1]);
                if (this.f6534s == 0) {
                    J j7 = (J) findViewByPosition.getLayoutParams();
                    j7.getClass();
                    top2 = findViewByPosition.getLeft() + j7.f6576e;
                    i12 = j7.f6580i;
                } else {
                    J j8 = (J) findViewByPosition.getLayoutParams();
                    j8.getClass();
                    top2 = findViewByPosition.getTop() + j8.f6577f;
                    i12 = j8.f6581j;
                }
                i8 = top2 + i12;
                ((J) findViewByPosition.getLayoutParams()).getClass();
            } else {
                i7 = androidx.media3.common.util.Log.LOG_LEVEL_OFF;
                i8 = Integer.MAX_VALUE;
            }
            if (z7) {
                i9 = this.f6520W.findRowMin(false, iArr);
                View findViewByPosition2 = findViewByPosition(iArr[1]);
                if (this.f6534s == 0) {
                    J j9 = (J) findViewByPosition2.getLayoutParams();
                    j9.getClass();
                    top = findViewByPosition2.getLeft() + j9.f6576e;
                    i11 = j9.f6580i;
                } else {
                    J j10 = (J) findViewByPosition2.getLayoutParams();
                    j10.getClass();
                    top = findViewByPosition2.getTop() + j10.f6577f;
                    i11 = j10.f6581j;
                }
                i10 = top + i11;
            } else {
                i9 = Integer.MIN_VALUE;
                i10 = Integer.MIN_VALUE;
            }
            c12.mainAxis().updateMinMax(i9, i7, i10, i8);
        }
    }

    public final void V() {
        B1 secondAxis = this.f6522Y.secondAxis();
        int paddingMin = secondAxis.getPaddingMin() - this.f6508K;
        int x6 = x() + paddingMin;
        secondAxis.updateMinMax(paddingMin, x6, paddingMin, x6);
    }

    @Override // m1.AbstractC1286i0
    public boolean canScrollHorizontally() {
        return this.f6534s == 0 || this.f6518U > 1;
    }

    @Override // m1.AbstractC1286i0
    public boolean canScrollVertically() {
        return this.f6534s == 1 || this.f6518U > 1;
    }

    @Override // m1.AbstractC1286i0
    public boolean checkLayoutParams(C1288j0 c1288j0) {
        return c1288j0 instanceof J;
    }

    @Override // m1.AbstractC1286i0
    public void collectAdjacentPrefetchPositions(int i2, int i7, m1.x0 x0Var, InterfaceC1282g0 interfaceC1282g0) {
        try {
            K(null, x0Var);
            if (this.f6534s != 0) {
                i2 = i7;
            }
            if (getChildCount() != 0 && i2 != 0) {
                this.f6520W.collectAdjacentPrefetchPositions(i2 < 0 ? -this.f6525b0 : this.f6524a0 + this.f6525b0, i2, interfaceC1282g0);
                C();
            }
        } finally {
            C();
        }
    }

    @Override // m1.AbstractC1286i0
    public void collectInitialPrefetchPositions(int i2, InterfaceC1282g0 interfaceC1282g0) {
        int i7 = this.f6533r.f6909Y0;
        if (i2 == 0 || i7 == 0) {
            return;
        }
        int max = Math.max(0, Math.min(this.f6503F - ((i7 - 1) / 2), i2 - i7));
        for (int i8 = max; i8 < i2 && i8 < max + i7; i8++) {
            ((C1310w) interfaceC1282g0).addPosition(i8, 0);
        }
    }

    @Override // m1.AbstractC1286i0
    public C1288j0 generateDefaultLayoutParams() {
        return new J(-2, -2);
    }

    @Override // m1.AbstractC1286i0
    public C1288j0 generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new J(context, attributeSet);
    }

    @Override // m1.AbstractC1286i0
    public int getColumnCountForAccessibility(C1300p0 c1300p0, m1.x0 x0Var) {
        E e3;
        return (this.f6534s != 1 || (e3 = this.f6520W) == null) ? super.getColumnCountForAccessibility(c1300p0, x0Var) : e3.getNumRows();
    }

    @Override // m1.AbstractC1286i0
    public int getDecoratedBottom(View view) {
        return super.getDecoratedBottom(view) - ((J) view.getLayoutParams()).f6579h;
    }

    @Override // m1.AbstractC1286i0
    public void getDecoratedBoundsWithMargins(View view, Rect rect) {
        super.getDecoratedBoundsWithMargins(view, rect);
        J j7 = (J) view.getLayoutParams();
        rect.left += j7.f6576e;
        rect.top += j7.f6577f;
        rect.right -= j7.f6578g;
        rect.bottom -= j7.f6579h;
    }

    @Override // m1.AbstractC1286i0
    public int getDecoratedLeft(View view) {
        return super.getDecoratedLeft(view) + ((J) view.getLayoutParams()).f6576e;
    }

    @Override // m1.AbstractC1286i0
    public int getDecoratedRight(View view) {
        return super.getDecoratedRight(view) - ((J) view.getLayoutParams()).f6578g;
    }

    @Override // m1.AbstractC1286i0
    public int getDecoratedTop(View view) {
        return super.getDecoratedTop(view) + ((J) view.getLayoutParams()).f6577f;
    }

    @Override // m1.AbstractC1286i0
    public int getRowCountForAccessibility(C1300p0 c1300p0, m1.x0 x0Var) {
        E e3;
        return (this.f6534s != 0 || (e3 = this.f6520W) == null) ? super.getRowCountForAccessibility(c1300p0, x0Var) : e3.getNumRows();
    }

    public final void m() {
        this.f6520W.appendVisibleItems((this.f6500C & 262144) != 0 ? (-this.f6525b0) - this.f6539x : this.f6524a0 + this.f6525b0 + this.f6539x);
    }

    public final void n() {
        ArrayList arrayList;
        if (this.f6501D != null || ((arrayList = this.f6502E) != null && arrayList.size() > 0)) {
            int i2 = this.f6503F;
            View findViewByPosition = i2 == -1 ? null : findViewByPosition(i2);
            if (findViewByPosition != null) {
                m1.B0 childViewHolder = this.f6533r.getChildViewHolder(findViewByPosition);
                InterfaceC0530t0 interfaceC0530t0 = this.f6501D;
                if (interfaceC0530t0 != null) {
                    ((C0504g0) interfaceC0530t0).onChildSelected(this.f6533r, findViewByPosition, this.f6503F, childViewHolder == null ? -1L : childViewHolder.getItemId());
                }
                AbstractC0529t abstractC0529t = this.f6533r;
                int i7 = this.f6503F;
                ArrayList arrayList2 = this.f6502E;
                if (arrayList2 != null) {
                    for (int size = arrayList2.size() - 1; size >= 0; size--) {
                        ((AbstractC0532u0) this.f6502E.get(size)).onChildViewHolderSelected(abstractC0529t, childViewHolder, i7, 0);
                    }
                }
            } else {
                InterfaceC0530t0 interfaceC0530t02 = this.f6501D;
                if (interfaceC0530t02 != null) {
                    ((C0504g0) interfaceC0530t02).onChildSelected(this.f6533r, null, -1, -1L);
                }
                AbstractC0529t abstractC0529t2 = this.f6533r;
                ArrayList arrayList3 = this.f6502E;
                if (arrayList3 != null) {
                    for (int size2 = arrayList3.size() - 1; size2 >= 0; size2--) {
                        ((AbstractC0532u0) this.f6502E.get(size2)).onChildViewHolderSelected(abstractC0529t2, null, -1, 0);
                    }
                }
            }
            if ((this.f6500C & 3) == 1 || this.f6533r.isLayoutRequested()) {
                return;
            }
            int childCount = getChildCount();
            for (int i8 = 0; i8 < childCount; i8++) {
                if (getChildAt(i8).isLayoutRequested()) {
                    AbstractC0181p0.postOnAnimation(this.f6533r, this.f6529f0);
                    return;
                }
            }
        }
    }

    public final void o() {
        ArrayList arrayList = this.f6502E;
        if (arrayList == null || arrayList.size() <= 0) {
            return;
        }
        int i2 = this.f6503F;
        View findViewByPosition = i2 == -1 ? null : findViewByPosition(i2);
        if (findViewByPosition != null) {
            m1.B0 childViewHolder = this.f6533r.getChildViewHolder(findViewByPosition);
            AbstractC0529t abstractC0529t = this.f6533r;
            int i7 = this.f6503F;
            ArrayList arrayList2 = this.f6502E;
            if (arrayList2 == null) {
                return;
            }
            for (int size = arrayList2.size() - 1; size >= 0; size--) {
                ((AbstractC0532u0) this.f6502E.get(size)).onChildViewHolderSelectedAndPositioned(abstractC0529t, childViewHolder, i7, 0);
            }
            return;
        }
        InterfaceC0530t0 interfaceC0530t0 = this.f6501D;
        if (interfaceC0530t0 != null) {
            ((C0504g0) interfaceC0530t0).onChildSelected(this.f6533r, null, -1, -1L);
        }
        AbstractC0529t abstractC0529t2 = this.f6533r;
        ArrayList arrayList3 = this.f6502E;
        if (arrayList3 == null) {
            return;
        }
        for (int size2 = arrayList3.size() - 1; size2 >= 0; size2--) {
            ((AbstractC0532u0) this.f6502E.get(size2)).onChildViewHolderSelectedAndPositioned(abstractC0529t2, null, -1, 0);
        }
    }

    @Override // m1.AbstractC1286i0
    public void onAdapterChanged(m1.V v6, m1.V v7) {
        if (v6 != null) {
            this.f6520W = null;
            this.f6511N = null;
            this.f6500C &= -1025;
            this.f6503F = -1;
            this.f6506I = 0;
            p.p pVar = (p.p) this.f6527d0.f1026c;
            if (pVar != null) {
                pVar.evictAll();
            }
        }
        if (v7 instanceof C0498d0) {
            this.f6528e0 = (C0498d0) v7;
        } else {
            this.f6528e0 = null;
        }
        super.onAdapterChanged(v6, v7);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00db  */
    /* JADX WARN: Type inference failed for: r17v1 */
    /* JADX WARN: Type inference failed for: r17v2 */
    /* JADX WARN: Type inference failed for: r17v3, types: [boolean] */
    /* JADX WARN: Type inference failed for: r17v4 */
    /* JADX WARN: Type inference failed for: r17v5 */
    /* JADX WARN: Type inference failed for: r17v6, types: [boolean] */
    @Override // m1.AbstractC1286i0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onAddFocusables(androidx.recyclerview.widget.RecyclerView r19, @android.annotation.SuppressLint({"ConcreteCollection"}) java.util.ArrayList<android.view.View> r20, int r21, int r22) {
        /*
            Method dump skipped, instructions count: 442
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.leanback.widget.GridLayoutManager.onAddFocusables(androidx.recyclerview.widget.RecyclerView, java.util.ArrayList, int, int):boolean");
    }

    @Override // m1.AbstractC1286i0
    public void onInitializeAccessibilityNodeInfo(C1300p0 c1300p0, m1.x0 x0Var, N.n nVar) {
        K(c1300p0, x0Var);
        int itemCount = x0Var.getItemCount();
        int i2 = this.f6500C;
        boolean z6 = (262144 & i2) != 0;
        if ((i2 & 2048) == 0 || (itemCount > 1 && !A(0))) {
            if (this.f6534s == 0) {
                nVar.addAction(z6 ? N.h.f2132p : N.h.f2130n);
            } else {
                nVar.addAction(N.h.f2129m);
            }
            nVar.setScrollable(true);
        }
        if ((this.f6500C & 4096) == 0 || (itemCount > 1 && !A(itemCount - 1))) {
            if (this.f6534s == 0) {
                nVar.addAction(z6 ? N.h.f2130n : N.h.f2132p);
            } else {
                nVar.addAction(N.h.f2131o);
            }
            nVar.setScrollable(true);
        }
        nVar.setCollectionInfo(N.l.obtain(getRowCountForAccessibility(c1300p0, x0Var), getColumnCountForAccessibility(c1300p0, x0Var), isLayoutHierarchical(c1300p0, x0Var), getSelectionModeForAccessibility(c1300p0, x0Var)));
        nVar.setClassName(GridView.class.getName());
        C();
    }

    @Override // m1.AbstractC1286i0
    public void onInitializeAccessibilityNodeInfoForItem(C1300p0 c1300p0, m1.x0 x0Var, View view, N.n nVar) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (this.f6520W == null || !(layoutParams instanceof J)) {
            return;
        }
        int absoluteAdapterPosition = ((J) layoutParams).getAbsoluteAdapterPosition();
        int rowIndex = absoluteAdapterPosition >= 0 ? this.f6520W.getRowIndex(absoluteAdapterPosition) : -1;
        if (rowIndex < 0) {
            return;
        }
        int numRows = absoluteAdapterPosition / this.f6520W.getNumRows();
        if (this.f6534s == 0) {
            nVar.setCollectionItemInfo(N.m.obtain(rowIndex, 1, numRows, 1, false, false));
        } else {
            nVar.setCollectionItemInfo(N.m.obtain(numRows, 1, rowIndex, 1, false, false));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00d4 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00d5  */
    @Override // m1.AbstractC1286i0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View onInterceptFocusSearch(android.view.View r8, int r9) {
        /*
            Method dump skipped, instructions count: 232
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.leanback.widget.GridLayoutManager.onInterceptFocusSearch(android.view.View, int):android.view.View");
    }

    @Override // m1.AbstractC1286i0
    public void onItemsAdded(RecyclerView recyclerView, int i2, int i7) {
        E e3;
        int i8;
        if (this.f6503F != -1 && (e3 = this.f6520W) != null && e3.getFirstVisibleIndex() >= 0 && (i8 = this.f6506I) != Integer.MIN_VALUE && i2 <= this.f6503F + i8) {
            this.f6506I = i8 + i7;
        }
        p.p pVar = (p.p) this.f6527d0.f1026c;
        if (pVar != null) {
            pVar.evictAll();
        }
    }

    @Override // m1.AbstractC1286i0
    public void onItemsChanged(RecyclerView recyclerView) {
        this.f6506I = 0;
        p.p pVar = (p.p) this.f6527d0.f1026c;
        if (pVar != null) {
            pVar.evictAll();
        }
    }

    @Override // m1.AbstractC1286i0
    public void onItemsMoved(RecyclerView recyclerView, int i2, int i7, int i8) {
        int i9;
        int i10 = this.f6503F;
        if (i10 != -1 && (i9 = this.f6506I) != Integer.MIN_VALUE) {
            int i11 = i10 + i9;
            if (i2 <= i11 && i11 < i2 + i8) {
                this.f6506I = (i7 - i2) + i9;
            } else if (i2 < i11 && i7 > i11 - i8) {
                this.f6506I = i9 - i8;
            } else if (i2 > i11 && i7 < i11) {
                this.f6506I = i9 + i8;
            }
        }
        p.p pVar = (p.p) this.f6527d0.f1026c;
        if (pVar != null) {
            pVar.evictAll();
        }
    }

    @Override // m1.AbstractC1286i0
    public void onItemsRemoved(RecyclerView recyclerView, int i2, int i7) {
        E e3;
        int i8;
        int i9;
        int i10;
        if (this.f6503F != -1 && (e3 = this.f6520W) != null && e3.getFirstVisibleIndex() >= 0 && (i8 = this.f6506I) != Integer.MIN_VALUE && i2 <= (i10 = (i9 = this.f6503F) + i8)) {
            if (i2 + i7 > i10) {
                this.f6503F = (i2 - i10) + i8 + i9;
                this.f6506I = Integer.MIN_VALUE;
            } else {
                this.f6506I = i8 - i7;
            }
        }
        p.p pVar = (p.p) this.f6527d0.f1026c;
        if (pVar != null) {
            pVar.evictAll();
        }
    }

    @Override // m1.AbstractC1286i0
    public void onItemsUpdated(RecyclerView recyclerView, int i2, int i7) {
        int i8 = i7 + i2;
        while (i2 < i8) {
            G2.b bVar = this.f6527d0;
            p.p pVar = (p.p) bVar.f1026c;
            if (pVar != null && pVar.size() != 0) {
                ((p.p) bVar.f1026c).remove(Integer.toString(i2));
            }
            i2++;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:195:0x0521, code lost:
    
        if (r2 < 0) goto L260;
     */
    /* JADX WARN: Code restructure failed: missing block: B:196:0x0523, code lost:
    
        r1 = r1 + r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:208:0x0554, code lost:
    
        if (r2 < 0) goto L260;
     */
    /* JADX WARN: Code restructure failed: missing block: B:266:0x0337, code lost:
    
        if (((r21.f6500C & 262144) != 0 ? r16 : false) != r21.f6520W.isReversedFlow()) goto L156;
     */
    /* JADX WARN: Removed duplicated region for block: B:135:0x03fc A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0408 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0468 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:150:0x047c  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x04a3  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x04bb  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x0492  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0498 A[LOOP:7: B:171:0x0496->B:172:0x0498, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:175:0x0495  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x04d1  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x04df  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x0507  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x04fb  */
    /* JADX WARN: Removed duplicated region for block: B:214:0x04d6  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x03e3 A[ADDED_TO_REGION, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:219:0x0416  */
    /* JADX WARN: Removed duplicated region for block: B:232:0x0433  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x0448 A[EDGE_INSN: B:241:0x0448->B:225:0x0448 BREAK  A[LOOP:8: B:231:0x0431->B:239:0x0445], SYNTHETIC] */
    @Override // m1.AbstractC1286i0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onLayoutChildren(m1.C1300p0 r22, m1.x0 r23) {
        /*
            Method dump skipped, instructions count: 1380
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.leanback.widget.GridLayoutManager.onLayoutChildren(m1.p0, m1.x0):void");
    }

    @Override // m1.AbstractC1286i0
    public void onMeasure(C1300p0 c1300p0, m1.x0 x0Var, int i2, int i7) {
        int size;
        int size2;
        int mode;
        int paddingLeft;
        int paddingRight;
        int i8;
        K(c1300p0, x0Var);
        if (this.f6534s == 0) {
            size2 = View.MeasureSpec.getSize(i2);
            size = View.MeasureSpec.getSize(i7);
            mode = View.MeasureSpec.getMode(i7);
            paddingLeft = getPaddingTop();
            paddingRight = getPaddingBottom();
        } else {
            size = View.MeasureSpec.getSize(i2);
            size2 = View.MeasureSpec.getSize(i7);
            mode = View.MeasureSpec.getMode(i2);
            paddingLeft = getPaddingLeft();
            paddingRight = getPaddingRight();
        }
        int i9 = paddingRight + paddingLeft;
        this.f6512O = size;
        int i10 = this.f6509L;
        if (i10 == -2) {
            int i11 = this.f6519V;
            if (i11 == 0) {
                i11 = 1;
            }
            this.f6518U = i11;
            this.f6510M = 0;
            int[] iArr = this.f6511N;
            if (iArr == null || iArr.length != i11) {
                this.f6511N = new int[i11];
            }
            if (this.f6537v.isPreLayout()) {
                S();
            }
            G(true);
            if (mode == Integer.MIN_VALUE) {
                size = Math.min(x() + i9, this.f6512O);
            } else if (mode == 0) {
                i8 = x();
                size = i8 + i9;
            } else {
                if (mode != 1073741824) {
                    throw new IllegalStateException("wrong spec");
                }
                size = this.f6512O;
            }
        } else {
            if (mode != Integer.MIN_VALUE) {
                if (mode == 0) {
                    if (i10 == 0) {
                        i10 = size - i9;
                    }
                    this.f6510M = i10;
                    int i12 = this.f6519V;
                    if (i12 == 0) {
                        i12 = 1;
                    }
                    this.f6518U = i12;
                    i8 = ((i12 - 1) * this.f6516S) + (i10 * i12);
                    size = i8 + i9;
                } else if (mode != 1073741824) {
                    throw new IllegalStateException("wrong spec");
                }
            }
            int i13 = this.f6519V;
            if (i13 == 0 && i10 == 0) {
                this.f6518U = 1;
                this.f6510M = size - i9;
            } else if (i13 == 0) {
                this.f6510M = i10;
                int i14 = this.f6516S;
                this.f6518U = (size + i14) / (i10 + i14);
            } else if (i10 == 0) {
                this.f6518U = i13;
                this.f6510M = ((size - i9) - ((i13 - 1) * this.f6516S)) / i13;
            } else {
                this.f6518U = i13;
                this.f6510M = i10;
            }
            if (mode == Integer.MIN_VALUE) {
                int i15 = this.f6510M;
                int i16 = this.f6518U;
                int i17 = ((i16 - 1) * this.f6516S) + (i15 * i16) + i9;
                if (i17 < size) {
                    size = i17;
                }
            }
        }
        if (this.f6534s == 0) {
            setMeasuredDimension(size2, size);
        } else {
            setMeasuredDimension(size, size2);
        }
        C();
    }

    @Override // m1.AbstractC1286i0
    public boolean onRequestChildFocus(RecyclerView recyclerView, m1.x0 x0Var, View view, View view2) {
        if ((this.f6500C & 32768) == 0 && p(view) != -1 && (this.f6500C & 35) == 0) {
            O(view, view2, true, 0, 0);
        }
        return true;
    }

    @Override // m1.AbstractC1286i0
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof M) {
            M m7 = (M) parcelable;
            this.f6503F = m7.f6594b;
            this.f6506I = 0;
            Bundle bundle = m7.f6595e;
            G2.b bVar = this.f6527d0;
            p.p pVar = (p.p) bVar.f1026c;
            if (pVar != null && bundle != null) {
                pVar.evictAll();
                for (String str : bundle.keySet()) {
                    ((p.p) bVar.f1026c).put(str, bundle.getSparseParcelableArray(str));
                }
            }
            this.f6500C |= 256;
            requestLayout();
        }
    }

    @Override // m1.AbstractC1286i0
    public Parcelable onSaveInstanceState() {
        Bundle bundle;
        M m7 = new M();
        m7.f6595e = Bundle.EMPTY;
        m7.f6594b = this.f6503F;
        G2.b bVar = this.f6527d0;
        p.p pVar = (p.p) bVar.f1026c;
        if (pVar == null || pVar.size() == 0) {
            bundle = null;
        } else {
            Map<Object, Object> snapshot = ((p.p) bVar.f1026c).snapshot();
            bundle = new Bundle();
            for (Map.Entry<Object, Object> entry : snapshot.entrySet()) {
                bundle.putSparseParcelableArray((String) entry.getKey(), (SparseArray) entry.getValue());
            }
        }
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            int p6 = p(childAt);
            if (p6 != -1 && bVar.f1024a != 0) {
                String num = Integer.toString(p6);
                SparseArray<Parcelable> sparseArray = new SparseArray<>();
                childAt.saveHierarchyState(sparseArray);
                if (bundle == null) {
                    bundle = new Bundle();
                }
                bundle.putSparseParcelableArray(num, sparseArray);
            }
        }
        m7.f6595e = bundle;
        return m7;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0026, code lost:
    
        if (r5 != false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0046, code lost:
    
        r7 = 4096;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0031, code lost:
    
        if (r5 != false) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0044, code lost:
    
        if (r7 == N.h.f2131o.getId()) goto L23;
     */
    @Override // m1.AbstractC1286i0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean performAccessibilityAction(m1.C1300p0 r5, m1.x0 r6, int r7, android.os.Bundle r8) {
        /*
            r4 = this;
            int r8 = r4.f6500C
            r0 = 131072(0x20000, float:1.83671E-40)
            r8 = r8 & r0
            r0 = 1
            if (r8 == 0) goto L86
            r4.K(r5, r6)
            int r5 = r4.f6500C
            r8 = 262144(0x40000, float:3.67342E-40)
            r5 = r5 & r8
            r8 = 0
            if (r5 == 0) goto L15
            r5 = r0
            goto L16
        L15:
            r5 = r8
        L16:
            int r1 = r4.f6534s
            r2 = 8192(0x2000, float:1.14794E-41)
            r3 = 4096(0x1000, float:5.74E-42)
            if (r1 != 0) goto L34
            N.h r1 = N.h.f2130n
            int r1 = r1.getId()
            if (r7 != r1) goto L29
            if (r5 == 0) goto L3c
            goto L46
        L29:
            N.h r1 = N.h.f2132p
            int r1 = r1.getId()
            if (r7 != r1) goto L47
            if (r5 == 0) goto L46
            goto L3c
        L34:
            N.h r5 = N.h.f2129m
            int r5 = r5.getId()
            if (r7 != r5) goto L3e
        L3c:
            r7 = r2
            goto L47
        L3e:
            N.h r5 = N.h.f2131o
            int r5 = r5.getId()
            if (r7 != r5) goto L47
        L46:
            r7 = r3
        L47:
            int r5 = r4.f6503F
            if (r5 != 0) goto L4f
            if (r7 != r2) goto L4f
            r1 = r0
            goto L50
        L4f:
            r1 = r8
        L50:
            int r6 = r6.getItemCount()
            int r6 = r6 - r0
            if (r5 != r6) goto L5b
            if (r7 != r3) goto L5b
            r5 = r0
            goto L5c
        L5b:
            r5 = r8
        L5c:
            if (r1 != 0) goto L75
            if (r5 == 0) goto L61
            goto L75
        L61:
            if (r7 == r3) goto L6e
            if (r7 == r2) goto L66
            goto L83
        L66:
            r4.F(r8)
            r5 = -1
            r4.H(r5, r8)
            goto L83
        L6e:
            r4.F(r0)
            r4.H(r0, r8)
            goto L83
        L75:
            android.view.accessibility.AccessibilityEvent r5 = android.view.accessibility.AccessibilityEvent.obtain(r3)
            androidx.leanback.widget.t r6 = r4.f6533r
            r6.onInitializeAccessibilityEvent(r5)
            androidx.leanback.widget.t r6 = r4.f6533r
            r6.requestSendAccessibilityEvent(r6, r5)
        L83:
            r4.C()
        L86:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.leanback.widget.GridLayoutManager.performAccessibilityAction(m1.p0, m1.x0, int, android.os.Bundle):boolean");
    }

    public final int q(View view) {
        J j7 = (J) view.getLayoutParams();
        return getDecoratedMeasuredHeight(view) + ((ViewGroup.MarginLayoutParams) j7).topMargin + ((ViewGroup.MarginLayoutParams) j7).bottomMargin;
    }

    public final int r(View view) {
        J j7 = (J) view.getLayoutParams();
        return getDecoratedMeasuredWidth(view) + ((ViewGroup.MarginLayoutParams) j7).leftMargin + ((ViewGroup.MarginLayoutParams) j7).rightMargin;
    }

    @Override // m1.AbstractC1286i0
    public void removeAndRecycleAllViews(C1300p0 c1300p0) {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            removeAndRecycleViewAt(childCount, c1300p0);
        }
    }

    @Override // m1.AbstractC1286i0
    public boolean requestChildRectangleOnScreen(RecyclerView recyclerView, View view, Rect rect, boolean z6) {
        return false;
    }

    public final int s(int i2) {
        int i7 = this.f6534s;
        if (i7 == 0) {
            if (i2 == 17) {
                return (this.f6500C & 262144) == 0 ? 0 : 1;
            }
            if (i2 == 33) {
                return 2;
            }
            if (i2 == 66) {
                return (this.f6500C & 262144) == 0 ? 1 : 0;
            }
            if (i2 == 130) {
                return 3;
            }
        } else if (i7 == 1) {
            if (i2 == 17) {
                return (this.f6500C & 524288) == 0 ? 2 : 3;
            }
            if (i2 == 33) {
                return 0;
            }
            if (i2 == 66) {
                return (this.f6500C & 524288) == 0 ? 3 : 2;
            }
            if (i2 == 130) {
                return 1;
            }
        }
        return 17;
    }

    @Override // m1.AbstractC1286i0
    public int scrollHorizontallyBy(int i2, C1300p0 c1300p0, m1.x0 x0Var) {
        if ((this.f6500C & 512) == 0 || this.f6520W == null) {
            return 0;
        }
        K(c1300p0, x0Var);
        this.f6500C = (this.f6500C & (-4)) | 2;
        int L6 = this.f6534s == 0 ? L(i2) : M(i2);
        C();
        this.f6500C &= -4;
        return L6;
    }

    @Override // m1.AbstractC1286i0
    public void scrollToPosition(int i2) {
        Q(i2, false);
    }

    @Override // m1.AbstractC1286i0
    public int scrollVerticallyBy(int i2, C1300p0 c1300p0, m1.x0 x0Var) {
        int i7 = this.f6500C;
        if ((i7 & 512) == 0 || this.f6520W == null) {
            return 0;
        }
        this.f6500C = (i7 & (-4)) | 2;
        K(c1300p0, x0Var);
        int L6 = this.f6534s == 1 ? L(i2) : M(i2);
        C();
        this.f6500C &= -4;
        return L6;
    }

    public void setFocusOutAllowed(boolean z6, boolean z7) {
        this.f6500C = (z6 ? 2048 : 0) | (this.f6500C & (-6145)) | (z7 ? 4096 : 0);
    }

    public void setOrientation(int i2) {
        if (i2 == 0 || i2 == 1) {
            this.f6534s = i2;
            this.f6535t = m1.L.createOrientationHelper(this, i2);
            this.f6522Y.setOrientation(i2);
            this.f6523Z.setOrientation(i2);
            this.f6500C |= 256;
        }
    }

    @Override // m1.AbstractC1286i0
    public void smoothScrollToPosition(RecyclerView recyclerView, m1.x0 x0Var, int i2) {
        Q(i2, true);
    }

    @Override // m1.AbstractC1286i0
    public void startSmoothScroll(m1.w0 w0Var) {
        I i2 = this.f6504G;
        if (i2 != null) {
            i2.f6564q = true;
        }
        super.startSmoothScroll(w0Var);
        if (!w0Var.isRunning() || !(w0Var instanceof I)) {
            this.f6504G = null;
            this.f6505H = null;
            return;
        }
        I i7 = (I) w0Var;
        this.f6504G = i7;
        if (i7 instanceof K) {
            this.f6505H = (K) i7;
        } else {
            this.f6505H = null;
        }
    }

    @Override // m1.AbstractC1286i0
    public boolean supportsPredictiveItemAnimations() {
        return true;
    }

    public final int t(int i2) {
        int i7 = this.f6510M;
        if (i7 != 0) {
            return i7;
        }
        int[] iArr = this.f6511N;
        if (iArr == null) {
            return 0;
        }
        return iArr[i2];
    }

    public final int u(int i2) {
        int i7 = 0;
        if ((this.f6500C & 524288) != 0) {
            for (int i8 = this.f6518U - 1; i8 > i2; i8--) {
                i7 += t(i8) + this.f6516S;
            }
            return i7;
        }
        int i9 = 0;
        while (i7 < i2) {
            i9 += t(i7) + this.f6516S;
            i7++;
        }
        return i9;
    }

    /* JADX WARN: Code restructure failed: missing block: B:64:0x0100, code lost:
    
        if (r3 != null) goto L51;
     */
    /* JADX WARN: Removed duplicated region for block: B:38:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x011f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean v(android.view.View r12, android.view.View r13, int[] r14) {
        /*
            Method dump skipped, instructions count: 305
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.leanback.widget.GridLayoutManager.v(android.view.View, android.view.View, int[]):boolean");
    }

    public final int w(View view) {
        int left;
        int i2;
        if (this.f6534s == 0) {
            J j7 = (J) view.getLayoutParams();
            j7.getClass();
            left = view.getTop() + j7.f6577f;
            i2 = j7.f6581j;
        } else {
            J j8 = (J) view.getLayoutParams();
            j8.getClass();
            left = view.getLeft() + j8.f6576e;
            i2 = j8.f6580i;
        }
        return this.f6522Y.secondAxis().getScroll(left + i2);
    }

    public final int x() {
        int i2 = (this.f6500C & 524288) != 0 ? 0 : this.f6518U - 1;
        return t(i2) + u(i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final View y(int i2) {
        C0498d0 c0498d0;
        InterfaceC0539y facetProvider;
        View viewForPosition = this.f6499B.getViewForPosition(i2);
        J j7 = (J) viewForPosition.getLayoutParams();
        m1.B0 childViewHolder = this.f6533r.getChildViewHolder(viewForPosition);
        Object facet = childViewHolder instanceof InterfaceC0539y ? ((InterfaceC0539y) childViewHolder).getFacet(W.class) : null;
        if (facet == null && (c0498d0 = this.f6528e0) != null && (facetProvider = c0498d0.getFacetProvider(childViewHolder.getItemViewType())) != null) {
            facet = facetProvider.getFacet(W.class);
        }
        if (facet != null) {
            throw new ClassCastException();
        }
        j7.getClass();
        return viewForPosition;
    }

    public final boolean z() {
        int itemCount = getItemCount();
        return itemCount == 0 || this.f6533r.findViewHolderForAdapterPosition(itemCount - 1) != null;
    }

    public GridLayoutManager(AbstractC0529t abstractC0529t) {
        this.f6531p = 1.0f;
        this.f6532q = 10;
        this.f6534s = 0;
        this.f6535t = m1.L.createHorizontalHelper(this);
        this.f6540y = new SparseIntArray();
        this.f6500C = 221696;
        this.f6501D = null;
        this.f6502E = null;
        this.f6503F = -1;
        this.f6506I = 0;
        this.f6517T = 8388659;
        this.f6519V = 1;
        this.f6521X = 0;
        this.f6522Y = new C1();
        this.f6523Z = new U();
        this.f6526c0 = new int[2];
        G2.b bVar = new G2.b();
        bVar.f1024a = 0;
        bVar.f1025b = 100;
        this.f6527d0 = bVar;
        this.f6529f0 = new F(this);
        this.f6530g0 = new G(this);
        this.f6533r = abstractC0529t;
        this.f6507J = -1;
        setItemPrefetchEnabled(false);
    }

    @Override // m1.AbstractC1286i0
    public C1288j0 generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof J) {
            return new J((J) layoutParams);
        }
        if (layoutParams instanceof C1288j0) {
            return new J((C1288j0) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new J((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new J(layoutParams);
    }

    @Override // m1.AbstractC1286i0
    public void onLayoutCompleted(m1.x0 x0Var) {
    }
}
