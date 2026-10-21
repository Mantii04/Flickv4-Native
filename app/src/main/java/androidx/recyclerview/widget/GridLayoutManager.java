package androidx.recyclerview.widget;

import A.i;
import N.m;
import N.n;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import m1.AbstractC1286i0;
import m1.C1262A;
import m1.C1265D;
import m1.C1267F;
import m1.C1288j0;
import m1.C1300p0;
import m1.C1310w;
import m1.C1313z;
import m1.InterfaceC1282g0;
import m1.x0;

/* loaded from: classes.dex */
public class GridLayoutManager extends LinearLayoutManager {

    /* renamed from: E, reason: collision with root package name */
    public boolean f7975E;

    /* renamed from: F, reason: collision with root package name */
    public int f7976F;

    /* renamed from: G, reason: collision with root package name */
    public int[] f7977G;

    /* renamed from: H, reason: collision with root package name */
    public View[] f7978H;

    /* renamed from: I, reason: collision with root package name */
    public final SparseIntArray f7979I;

    /* renamed from: J, reason: collision with root package name */
    public final SparseIntArray f7980J;

    /* renamed from: K, reason: collision with root package name */
    public final C1313z f7981K;

    /* renamed from: L, reason: collision with root package name */
    public final Rect f7982L;

    public GridLayoutManager(Context context, AttributeSet attributeSet, int i2, int i7) {
        super(context, attributeSet, i2, i7);
        this.f7975E = false;
        this.f7976F = -1;
        this.f7979I = new SparseIntArray();
        this.f7980J = new SparseIntArray();
        this.f7981K = new C1313z();
        this.f7982L = new Rect();
        setSpanCount(AbstractC1286i0.getProperties(context, attributeSet, i2, i7).f18381b);
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x008c, code lost:
    
        r21.f18255b = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x008e, code lost:
    
        return;
     */
    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void C(m1.C1300p0 r18, m1.x0 r19, m1.C1267F r20, m1.C1266E r21) {
        /*
            Method dump skipped, instructions count: 606
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.C(m1.p0, m1.x0, m1.F, m1.E):void");
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void D(C1300p0 c1300p0, x0 x0Var, C1265D c1265d, int i2) {
        S();
        if (x0Var.getItemCount() > 0 && !x0Var.isPreLayout()) {
            boolean z6 = i2 == 1;
            int P6 = P(c1265d.f18248b, c1300p0, x0Var);
            if (z6) {
                while (P6 > 0) {
                    int i7 = c1265d.f18248b;
                    if (i7 <= 0) {
                        break;
                    }
                    int i8 = i7 - 1;
                    c1265d.f18248b = i8;
                    P6 = P(i8, c1300p0, x0Var);
                }
            } else {
                int itemCount = x0Var.getItemCount() - 1;
                int i9 = c1265d.f18248b;
                while (i9 < itemCount) {
                    int i10 = i9 + 1;
                    int P7 = P(i10, c1300p0, x0Var);
                    if (P7 <= P6) {
                        break;
                    }
                    i9 = i10;
                    P6 = P7;
                }
                c1265d.f18248b = i9;
            }
        }
        M();
    }

    public final void L(int i2) {
        int i7;
        int[] iArr = this.f7977G;
        int i8 = this.f7976F;
        if (iArr == null || iArr.length != i8 + 1 || iArr[iArr.length - 1] != i2) {
            iArr = new int[i8 + 1];
        }
        int i9 = 0;
        iArr[0] = 0;
        int i10 = i2 / i8;
        int i11 = i2 % i8;
        int i12 = 0;
        for (int i13 = 1; i13 <= i8; i13++) {
            i9 += i11;
            if (i9 <= 0 || i8 - i9 >= i11) {
                i7 = i10;
            } else {
                i7 = i10 + 1;
                i9 -= i8;
            }
            i12 += i7;
            iArr[i13] = i12;
        }
        this.f7977G = iArr;
    }

    public final void M() {
        View[] viewArr = this.f7978H;
        if (viewArr == null || viewArr.length != this.f7976F) {
            this.f7978H = new View[this.f7976F];
        }
    }

    public final int N(int i2, int i7) {
        if (this.f7987p != 1 || !isLayoutRTL()) {
            int[] iArr = this.f7977G;
            return iArr[i7 + i2] - iArr[i2];
        }
        int[] iArr2 = this.f7977G;
        int i8 = this.f7976F;
        return iArr2[i8 - i2] - iArr2[(i8 - i2) - i7];
    }

    public final int O(int i2, C1300p0 c1300p0, x0 x0Var) {
        boolean isPreLayout = x0Var.isPreLayout();
        C1313z c1313z = this.f7981K;
        if (!isPreLayout) {
            return c1313z.getSpanGroupIndex(i2, this.f7976F);
        }
        int convertPreLayoutPositionToPostLayout = c1300p0.convertPreLayoutPositionToPostLayout(i2);
        if (convertPreLayoutPositionToPostLayout != -1) {
            return c1313z.getSpanGroupIndex(convertPreLayoutPositionToPostLayout, this.f7976F);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. " + i2);
        return 0;
    }

    public final int P(int i2, C1300p0 c1300p0, x0 x0Var) {
        boolean isPreLayout = x0Var.isPreLayout();
        C1313z c1313z = this.f7981K;
        if (!isPreLayout) {
            return c1313z.getSpanIndex(i2, this.f7976F);
        }
        int i7 = this.f7980J.get(i2, -1);
        if (i7 != -1) {
            return i7;
        }
        int convertPreLayoutPositionToPostLayout = c1300p0.convertPreLayoutPositionToPostLayout(i2);
        if (convertPreLayoutPositionToPostLayout != -1) {
            return c1313z.getSpanIndex(convertPreLayoutPositionToPostLayout, this.f7976F);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i2);
        return 0;
    }

    public final int Q(int i2, C1300p0 c1300p0, x0 x0Var) {
        boolean isPreLayout = x0Var.isPreLayout();
        C1313z c1313z = this.f7981K;
        if (!isPreLayout) {
            return c1313z.getSpanSize(i2);
        }
        int i7 = this.f7979I.get(i2, -1);
        if (i7 != -1) {
            return i7;
        }
        int convertPreLayoutPositionToPostLayout = c1300p0.convertPreLayoutPositionToPostLayout(i2);
        if (convertPreLayoutPositionToPostLayout != -1) {
            return c1313z.getSpanSize(convertPreLayoutPositionToPostLayout);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i2);
        return 1;
    }

    public final void R(View view, boolean z6, int i2) {
        int i7;
        int i8;
        C1262A c1262a = (C1262A) view.getLayoutParams();
        Rect rect = c1262a.f18410b;
        int i9 = rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) c1262a).topMargin + ((ViewGroup.MarginLayoutParams) c1262a).bottomMargin;
        int i10 = rect.left + rect.right + ((ViewGroup.MarginLayoutParams) c1262a).leftMargin + ((ViewGroup.MarginLayoutParams) c1262a).rightMargin;
        int N6 = N(c1262a.f18205e, c1262a.f18206f);
        if (this.f7987p == 1) {
            i8 = AbstractC1286i0.getChildMeasureSpec(N6, i2, i10, ((ViewGroup.MarginLayoutParams) c1262a).width, false);
            i7 = AbstractC1286i0.getChildMeasureSpec(this.f7989r.getTotalSpace(), getHeightMode(), i9, ((ViewGroup.MarginLayoutParams) c1262a).height, true);
        } else {
            int childMeasureSpec = AbstractC1286i0.getChildMeasureSpec(N6, i2, i9, ((ViewGroup.MarginLayoutParams) c1262a).height, false);
            int childMeasureSpec2 = AbstractC1286i0.getChildMeasureSpec(this.f7989r.getTotalSpace(), getWidthMode(), i10, ((ViewGroup.MarginLayoutParams) c1262a).width, true);
            i7 = childMeasureSpec;
            i8 = childMeasureSpec2;
        }
        C1288j0 c1288j0 = (C1288j0) view.getLayoutParams();
        if (z6 ? l(view, i8, i7, c1288j0) : j(view, i8, i7, c1288j0)) {
            view.measure(i8, i7);
        }
    }

    public final void S() {
        int height;
        int paddingTop;
        if (getOrientation() == 1) {
            height = getWidth() - getPaddingRight();
            paddingTop = getPaddingLeft();
        } else {
            height = getHeight() - getPaddingBottom();
            paddingTop = getPaddingTop();
        }
        L(height - paddingTop);
    }

    @Override // m1.AbstractC1286i0
    public boolean checkLayoutParams(C1288j0 c1288j0) {
        return c1288j0 instanceof C1262A;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, m1.AbstractC1286i0
    public int computeHorizontalScrollOffset(x0 x0Var) {
        return super.computeHorizontalScrollOffset(x0Var);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, m1.AbstractC1286i0
    public int computeHorizontalScrollRange(x0 x0Var) {
        return super.computeHorizontalScrollRange(x0Var);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, m1.AbstractC1286i0
    public int computeVerticalScrollOffset(x0 x0Var) {
        return super.computeVerticalScrollOffset(x0Var);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, m1.AbstractC1286i0
    public int computeVerticalScrollRange(x0 x0Var) {
        return super.computeVerticalScrollRange(x0Var);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, m1.AbstractC1286i0
    public C1288j0 generateDefaultLayoutParams() {
        return this.f7987p == 0 ? new C1262A(-2, -1) : new C1262A(-1, -2);
    }

    @Override // m1.AbstractC1286i0
    public C1288j0 generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new C1262A(context, attributeSet);
    }

    @Override // m1.AbstractC1286i0
    public int getColumnCountForAccessibility(C1300p0 c1300p0, x0 x0Var) {
        if (this.f7987p == 1) {
            return this.f7976F;
        }
        if (x0Var.getItemCount() < 1) {
            return 0;
        }
        return O(x0Var.getItemCount() - 1, c1300p0, x0Var) + 1;
    }

    @Override // m1.AbstractC1286i0
    public int getRowCountForAccessibility(C1300p0 c1300p0, x0 x0Var) {
        if (this.f7987p == 0) {
            return this.f7976F;
        }
        if (x0Var.getItemCount() < 1) {
            return 0;
        }
        return O(x0Var.getItemCount() - 1, c1300p0, x0Var) + 1;
    }

    public int getSpanCount() {
        return this.f7976F;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void m(x0 x0Var, C1267F c1267f, InterfaceC1282g0 interfaceC1282g0) {
        int i2;
        int i7 = this.f7976F;
        for (int i8 = 0; i8 < this.f7976F && (i2 = c1267f.f18262d) >= 0 && i2 < x0Var.getItemCount() && i7 > 0; i8++) {
            int i9 = c1267f.f18262d;
            ((C1310w) interfaceC1282g0).addPosition(i9, Math.max(0, c1267f.f18265g));
            i7 -= this.f7981K.getSpanSize(i9);
            c1267f.f18262d += c1267f.f18263e;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:64:0x00d3, code lost:
    
        if (r13 == (r2 > r15)) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x00f3, code lost:
    
        if (r13 == (r2 > r4)) goto L70;
     */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0111  */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, m1.AbstractC1286i0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View onFocusSearchFailed(android.view.View r24, int r25, m1.C1300p0 r26, m1.x0 r27) {
        /*
            Method dump skipped, instructions count: 316
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.onFocusSearchFailed(android.view.View, int, m1.p0, m1.x0):android.view.View");
    }

    @Override // m1.AbstractC1286i0
    public void onInitializeAccessibilityNodeInfo(C1300p0 c1300p0, x0 x0Var, n nVar) {
        super.onInitializeAccessibilityNodeInfo(c1300p0, x0Var, nVar);
        nVar.setClassName(GridView.class.getName());
    }

    @Override // m1.AbstractC1286i0
    public void onInitializeAccessibilityNodeInfoForItem(C1300p0 c1300p0, x0 x0Var, View view, n nVar) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof C1262A)) {
            c(view, nVar);
            return;
        }
        C1262A c1262a = (C1262A) layoutParams;
        int O6 = O(c1262a.getViewLayoutPosition(), c1300p0, x0Var);
        if (this.f7987p == 0) {
            nVar.setCollectionItemInfo(m.obtain(c1262a.getSpanIndex(), c1262a.getSpanSize(), O6, 1, false, false));
        } else {
            nVar.setCollectionItemInfo(m.obtain(O6, 1, c1262a.getSpanIndex(), c1262a.getSpanSize(), false, false));
        }
    }

    @Override // m1.AbstractC1286i0
    public void onItemsAdded(RecyclerView recyclerView, int i2, int i7) {
        C1313z c1313z = this.f7981K;
        c1313z.invalidateSpanIndexCache();
        c1313z.invalidateSpanGroupIndexCache();
    }

    @Override // m1.AbstractC1286i0
    public void onItemsChanged(RecyclerView recyclerView) {
        C1313z c1313z = this.f7981K;
        c1313z.invalidateSpanIndexCache();
        c1313z.invalidateSpanGroupIndexCache();
    }

    @Override // m1.AbstractC1286i0
    public void onItemsMoved(RecyclerView recyclerView, int i2, int i7, int i8) {
        C1313z c1313z = this.f7981K;
        c1313z.invalidateSpanIndexCache();
        c1313z.invalidateSpanGroupIndexCache();
    }

    @Override // m1.AbstractC1286i0
    public void onItemsRemoved(RecyclerView recyclerView, int i2, int i7) {
        C1313z c1313z = this.f7981K;
        c1313z.invalidateSpanIndexCache();
        c1313z.invalidateSpanGroupIndexCache();
    }

    @Override // m1.AbstractC1286i0
    public void onItemsUpdated(RecyclerView recyclerView, int i2, int i7, Object obj) {
        C1313z c1313z = this.f7981K;
        c1313z.invalidateSpanIndexCache();
        c1313z.invalidateSpanGroupIndexCache();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, m1.AbstractC1286i0
    public void onLayoutChildren(C1300p0 c1300p0, x0 x0Var) {
        boolean isPreLayout = x0Var.isPreLayout();
        SparseIntArray sparseIntArray = this.f7980J;
        SparseIntArray sparseIntArray2 = this.f7979I;
        if (isPreLayout) {
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                C1262A c1262a = (C1262A) getChildAt(i2).getLayoutParams();
                int viewLayoutPosition = c1262a.getViewLayoutPosition();
                sparseIntArray2.put(viewLayoutPosition, c1262a.getSpanSize());
                sparseIntArray.put(viewLayoutPosition, c1262a.getSpanIndex());
            }
        }
        super.onLayoutChildren(c1300p0, x0Var);
        sparseIntArray2.clear();
        sparseIntArray.clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, m1.AbstractC1286i0
    public void onLayoutCompleted(x0 x0Var) {
        super.onLayoutCompleted(x0Var);
        this.f7975E = false;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, m1.AbstractC1286i0
    public int scrollHorizontallyBy(int i2, C1300p0 c1300p0, x0 x0Var) {
        S();
        M();
        return super.scrollHorizontallyBy(i2, c1300p0, x0Var);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, m1.AbstractC1286i0
    public int scrollVerticallyBy(int i2, C1300p0 c1300p0, x0 x0Var) {
        S();
        M();
        return super.scrollVerticallyBy(i2, c1300p0, x0Var);
    }

    @Override // m1.AbstractC1286i0
    public void setMeasuredDimension(Rect rect, int i2, int i7) {
        int chooseSize;
        int chooseSize2;
        if (this.f7977G == null) {
            super.setMeasuredDimension(rect, i2, i7);
        }
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        if (this.f7987p == 1) {
            chooseSize2 = AbstractC1286i0.chooseSize(i7, rect.height() + paddingBottom, getMinimumHeight());
            int[] iArr = this.f7977G;
            chooseSize = AbstractC1286i0.chooseSize(i2, iArr[iArr.length - 1] + paddingRight, getMinimumWidth());
        } else {
            chooseSize = AbstractC1286i0.chooseSize(i2, rect.width() + paddingRight, getMinimumWidth());
            int[] iArr2 = this.f7977G;
            chooseSize2 = AbstractC1286i0.chooseSize(i7, iArr2[iArr2.length - 1] + paddingBottom, getMinimumHeight());
        }
        setMeasuredDimension(chooseSize, chooseSize2);
    }

    public void setSpanCount(int i2) {
        if (i2 == this.f7976F) {
            return;
        }
        this.f7975E = true;
        if (i2 < 1) {
            throw new IllegalArgumentException(i.f(i2, "Span count should be at least 1. Provided "));
        }
        this.f7976F = i2;
        this.f7981K.invalidateSpanIndexCache();
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public void setStackFromEnd(boolean z6) {
        if (z6) {
            throw new UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
        }
        super.setStackFromEnd(false);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, m1.AbstractC1286i0
    public boolean supportsPredictiveItemAnimations() {
        return this.f7997z == null && !this.f7975E;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final View x(C1300p0 c1300p0, x0 x0Var, boolean z6, boolean z7) {
        int i2;
        int i7;
        int childCount = getChildCount();
        int i8 = 1;
        if (z7) {
            i7 = getChildCount() - 1;
            i2 = -1;
            i8 = -1;
        } else {
            i2 = childCount;
            i7 = 0;
        }
        int itemCount = x0Var.getItemCount();
        r();
        int startAfterPadding = this.f7989r.getStartAfterPadding();
        int endAfterPadding = this.f7989r.getEndAfterPadding();
        View view = null;
        View view2 = null;
        while (i7 != i2) {
            View childAt = getChildAt(i7);
            int position = getPosition(childAt);
            if (position >= 0 && position < itemCount && P(position, c1300p0, x0Var) == 0) {
                if (((C1288j0) childAt.getLayoutParams()).isItemRemoved()) {
                    if (view2 == null) {
                        view2 = childAt;
                    }
                } else {
                    if (this.f7989r.getDecoratedStart(childAt) < endAfterPadding && this.f7989r.getDecoratedEnd(childAt) >= startAfterPadding) {
                        return childAt;
                    }
                    if (view == null) {
                        view = childAt;
                    }
                }
            }
            i7 += i8;
        }
        return view != null ? view : view2;
    }

    @Override // m1.AbstractC1286i0
    public C1288j0 generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new C1262A((ViewGroup.MarginLayoutParams) layoutParams) : new C1262A(layoutParams);
    }

    public GridLayoutManager(Context context, int i2) {
        super(context);
        this.f7975E = false;
        this.f7976F = -1;
        this.f7979I = new SparseIntArray();
        this.f7980J = new SparseIntArray();
        this.f7981K = new C1313z();
        this.f7982L = new Rect();
        setSpanCount(i2);
    }

    public GridLayoutManager(Context context, int i2, int i7, boolean z6) {
        super(context, i7, z6);
        this.f7975E = false;
        this.f7976F = -1;
        this.f7979I = new SparseIntArray();
        this.f7980J = new SparseIntArray();
        this.f7981K = new C1313z();
        this.f7982L = new Rect();
        setSpanCount(i2);
    }
}
