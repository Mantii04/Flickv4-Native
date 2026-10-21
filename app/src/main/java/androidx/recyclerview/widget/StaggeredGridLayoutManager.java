package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.media3.common.util.Log;
import com.bumptech.glide.e;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import m1.AbstractC1286i0;
import m1.C1264C;
import m1.C1284h0;
import m1.C1288j0;
import m1.C1300p0;
import m1.C1310w;
import m1.H0;
import m1.I;
import m1.I0;
import m1.InterfaceC1282g0;
import m1.J0;
import m1.L;
import m1.M0;
import m1.O0;
import m1.P0;
import m1.V;
import m1.v0;
import m1.x0;

/* loaded from: classes.dex */
public class StaggeredGridLayoutManager extends AbstractC1286i0 implements v0 {

    /* renamed from: D, reason: collision with root package name */
    public boolean f8088D;

    /* renamed from: E, reason: collision with root package name */
    public boolean f8089E;

    /* renamed from: F, reason: collision with root package name */
    public O0 f8090F;

    /* renamed from: J, reason: collision with root package name */
    public int[] f8094J;

    /* renamed from: q, reason: collision with root package name */
    public P0[] f8097q;

    /* renamed from: r, reason: collision with root package name */
    public L f8098r;

    /* renamed from: s, reason: collision with root package name */
    public L f8099s;

    /* renamed from: t, reason: collision with root package name */
    public int f8100t;

    /* renamed from: u, reason: collision with root package name */
    public int f8101u;

    /* renamed from: v, reason: collision with root package name */
    public final C1264C f8102v;

    /* renamed from: y, reason: collision with root package name */
    public BitSet f8105y;

    /* renamed from: p, reason: collision with root package name */
    public int f8096p = -1;

    /* renamed from: w, reason: collision with root package name */
    public boolean f8103w = false;

    /* renamed from: x, reason: collision with root package name */
    public boolean f8104x = false;

    /* renamed from: z, reason: collision with root package name */
    public int f8106z = -1;

    /* renamed from: A, reason: collision with root package name */
    public int f8085A = Integer.MIN_VALUE;

    /* renamed from: B, reason: collision with root package name */
    public final M0 f8086B = new M0();

    /* renamed from: C, reason: collision with root package name */
    public final int f8087C = 2;

    /* renamed from: G, reason: collision with root package name */
    public final Rect f8091G = new Rect();

    /* renamed from: H, reason: collision with root package name */
    public final I0 f8092H = new I0(this);

    /* renamed from: I, reason: collision with root package name */
    public final boolean f8093I = true;

    /* renamed from: K, reason: collision with root package name */
    public final H0 f8095K = new H0(this);

    public StaggeredGridLayoutManager(Context context, AttributeSet attributeSet, int i2, int i7) {
        C1284h0 properties = AbstractC1286i0.getProperties(context, attributeSet, i2, i7);
        setOrientation(properties.f18380a);
        setSpanCount(properties.f18381b);
        setReverseLayout(properties.f18382c);
        C1264C c1264c = new C1264C();
        c1264c.f18236a = true;
        c1264c.f18241f = 0;
        c1264c.f18242g = 0;
        this.f8102v = c1264c;
        this.f8098r = L.createOrientationHelper(this, this.f8100t);
        this.f8099s = L.createOrientationHelper(this, 1 - this.f8100t);
    }

    public static int N(int i2, int i7, int i8) {
        int mode;
        return (!(i7 == 0 && i8 == 0) && ((mode = View.MeasureSpec.getMode(i2)) == Integer.MIN_VALUE || mode == 1073741824)) ? View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i2) - i7) - i8), mode) : i2;
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00fa A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x002c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00f2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View A() {
        /*
            Method dump skipped, instructions count: 253
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.A():android.view.View");
    }

    public final void B(View view, int i2, int i7) {
        Rect rect = this.f8091G;
        calculateItemDecorationsForChild(view, rect);
        J0 j02 = (J0) view.getLayoutParams();
        int N6 = N(i2, ((ViewGroup.MarginLayoutParams) j02).leftMargin + rect.left, ((ViewGroup.MarginLayoutParams) j02).rightMargin + rect.right);
        int N7 = N(i7, ((ViewGroup.MarginLayoutParams) j02).topMargin + rect.top, ((ViewGroup.MarginLayoutParams) j02).bottomMargin + rect.bottom);
        if (j(view, N6, N7, j02)) {
            view.measure(N6, N7);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x0199, code lost:
    
        if ((r11 < v()) != r16.f8104x) goto L103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:257:0x040f, code lost:
    
        if (m() != false) goto L251;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x018b, code lost:
    
        if (r16.f8104x != false) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x019b, code lost:
    
        r11 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x019d, code lost:
    
        r11 = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void C(m1.C1300p0 r17, m1.x0 r18, boolean r19) {
        /*
            Method dump skipped, instructions count: 1071
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.C(m1.p0, m1.x0, boolean):void");
    }

    public final boolean D(int i2) {
        if (this.f8100t == 0) {
            return (i2 == -1) != this.f8104x;
        }
        return ((i2 == -1) == this.f8104x) == isLayoutRTL();
    }

    public final void E(int i2, x0 x0Var) {
        int v6;
        int i7;
        if (i2 > 0) {
            v6 = w();
            i7 = 1;
        } else {
            v6 = v();
            i7 = -1;
        }
        C1264C c1264c = this.f8102v;
        c1264c.f18236a = true;
        L(v6, x0Var);
        K(i7);
        c1264c.f18238c = v6 + c1264c.f18239d;
        c1264c.f18237b = Math.abs(i2);
    }

    public final void F(C1300p0 c1300p0, C1264C c1264c) {
        if (!c1264c.f18236a || c1264c.f18244i) {
            return;
        }
        if (c1264c.f18237b == 0) {
            if (c1264c.f18240e == -1) {
                G(c1264c.f18242g, c1300p0);
                return;
            } else {
                H(c1264c.f18241f, c1300p0);
                return;
            }
        }
        int i2 = 1;
        if (c1264c.f18240e == -1) {
            int i7 = c1264c.f18241f;
            int e3 = this.f8097q[0].e(i7);
            while (i2 < this.f8096p) {
                int e7 = this.f8097q[i2].e(i7);
                if (e7 > e3) {
                    e3 = e7;
                }
                i2++;
            }
            int i8 = i7 - e3;
            G(i8 < 0 ? c1264c.f18242g : c1264c.f18242g - Math.min(i8, c1264c.f18237b), c1300p0);
            return;
        }
        int i9 = c1264c.f18242g;
        int d7 = this.f8097q[0].d(i9);
        while (i2 < this.f8096p) {
            int d8 = this.f8097q[i2].d(i9);
            if (d8 < d7) {
                d7 = d8;
            }
            i2++;
        }
        int i10 = d7 - c1264c.f18242g;
        H(i10 < 0 ? c1264c.f18241f : Math.min(i10, c1264c.f18237b) + c1264c.f18241f, c1300p0);
    }

    public final void G(int i2, C1300p0 c1300p0) {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (this.f8098r.getDecoratedStart(childAt) < i2 || this.f8098r.getTransformedStartWithDecoration(childAt) < i2) {
                return;
            }
            J0 j02 = (J0) childAt.getLayoutParams();
            j02.getClass();
            if (j02.f18294e.f18319a.size() == 1) {
                return;
            }
            P0 p02 = j02.f18294e;
            ArrayList arrayList = p02.f18319a;
            int size = arrayList.size();
            View view = (View) arrayList.remove(size - 1);
            J0 j03 = (J0) view.getLayoutParams();
            j03.f18294e = null;
            if (j03.isItemRemoved() || j03.isItemChanged()) {
                p02.f18322d -= p02.f18324f.f8098r.getDecoratedMeasurement(view);
            }
            if (size == 1) {
                p02.f18320b = Integer.MIN_VALUE;
            }
            p02.f18321c = Integer.MIN_VALUE;
            removeAndRecycleView(childAt, c1300p0);
        }
    }

    public final void H(int i2, C1300p0 c1300p0) {
        while (getChildCount() > 0) {
            View childAt = getChildAt(0);
            if (this.f8098r.getDecoratedEnd(childAt) > i2 || this.f8098r.getTransformedEndWithDecoration(childAt) > i2) {
                return;
            }
            J0 j02 = (J0) childAt.getLayoutParams();
            j02.getClass();
            if (j02.f18294e.f18319a.size() == 1) {
                return;
            }
            P0 p02 = j02.f18294e;
            ArrayList arrayList = p02.f18319a;
            View view = (View) arrayList.remove(0);
            J0 j03 = (J0) view.getLayoutParams();
            j03.f18294e = null;
            if (arrayList.size() == 0) {
                p02.f18321c = Integer.MIN_VALUE;
            }
            if (j03.isItemRemoved() || j03.isItemChanged()) {
                p02.f18322d -= p02.f18324f.f8098r.getDecoratedMeasurement(view);
            }
            p02.f18320b = Integer.MIN_VALUE;
            removeAndRecycleView(childAt, c1300p0);
        }
    }

    public final void I() {
        if (this.f8100t == 1 || !isLayoutRTL()) {
            this.f8104x = this.f8103w;
        } else {
            this.f8104x = !this.f8103w;
        }
    }

    public final int J(int i2, C1300p0 c1300p0, x0 x0Var) {
        if (getChildCount() == 0 || i2 == 0) {
            return 0;
        }
        E(i2, x0Var);
        C1264C c1264c = this.f8102v;
        int q6 = q(c1300p0, c1264c, x0Var);
        if (c1264c.f18237b >= q6) {
            i2 = i2 < 0 ? -q6 : q6;
        }
        this.f8098r.offsetChildren(-i2);
        this.f8088D = this.f8104x;
        c1264c.f18237b = 0;
        F(c1300p0, c1264c);
        return i2;
    }

    public final void K(int i2) {
        C1264C c1264c = this.f8102v;
        c1264c.f18240e = i2;
        c1264c.f18239d = this.f8104x != (i2 == -1) ? -1 : 1;
    }

    public final void L(int i2, x0 x0Var) {
        int i7;
        int i8;
        int targetScrollPosition;
        C1264C c1264c = this.f8102v;
        boolean z6 = false;
        c1264c.f18237b = 0;
        c1264c.f18238c = i2;
        if (!isSmoothScrolling() || (targetScrollPosition = x0Var.getTargetScrollPosition()) == -1) {
            i7 = 0;
            i8 = 0;
        } else {
            if (this.f8104x == (targetScrollPosition < i2)) {
                i7 = this.f8098r.getTotalSpace();
                i8 = 0;
            } else {
                i8 = this.f8098r.getTotalSpace();
                i7 = 0;
            }
        }
        if (getClipToPadding()) {
            c1264c.f18241f = this.f8098r.getStartAfterPadding() - i8;
            c1264c.f18242g = this.f8098r.getEndAfterPadding() + i7;
        } else {
            c1264c.f18242g = this.f8098r.getEnd() + i7;
            c1264c.f18241f = -i8;
        }
        c1264c.f18243h = false;
        c1264c.f18236a = true;
        if (this.f8098r.getMode() == 0 && this.f8098r.getEnd() == 0) {
            z6 = true;
        }
        c1264c.f18244i = z6;
    }

    public final void M(P0 p02, int i2, int i7) {
        int deletedSize = p02.getDeletedSize();
        int i8 = p02.f18323e;
        if (i2 != -1) {
            int i9 = p02.f18321c;
            if (i9 == Integer.MIN_VALUE) {
                p02.a();
                i9 = p02.f18321c;
            }
            if (i9 - deletedSize >= i7) {
                this.f8105y.set(i8, false);
                return;
            }
            return;
        }
        int i10 = p02.f18320b;
        if (i10 == Integer.MIN_VALUE) {
            View view = (View) p02.f18319a.get(0);
            J0 j02 = (J0) view.getLayoutParams();
            p02.f18320b = p02.f18324f.f8098r.getDecoratedStart(view);
            j02.getClass();
            i10 = p02.f18320b;
        }
        if (i10 + deletedSize <= i7) {
            this.f8105y.set(i8, false);
        }
    }

    @Override // m1.AbstractC1286i0
    public void assertNotInLayoutOrScroll(String str) {
        if (this.f8090F == null) {
            super.assertNotInLayoutOrScroll(str);
        }
    }

    @Override // m1.AbstractC1286i0
    public boolean canScrollHorizontally() {
        return this.f8100t == 0;
    }

    @Override // m1.AbstractC1286i0
    public boolean canScrollVertically() {
        return this.f8100t == 1;
    }

    @Override // m1.AbstractC1286i0
    public boolean checkLayoutParams(C1288j0 c1288j0) {
        return c1288j0 instanceof J0;
    }

    @Override // m1.AbstractC1286i0
    public void collectAdjacentPrefetchPositions(int i2, int i7, x0 x0Var, InterfaceC1282g0 interfaceC1282g0) {
        C1264C c1264c;
        int d7;
        int i8;
        if (this.f8100t != 0) {
            i2 = i7;
        }
        if (getChildCount() == 0 || i2 == 0) {
            return;
        }
        E(i2, x0Var);
        int[] iArr = this.f8094J;
        if (iArr == null || iArr.length < this.f8096p) {
            this.f8094J = new int[this.f8096p];
        }
        int i9 = 0;
        int i10 = 0;
        while (true) {
            int i11 = this.f8096p;
            c1264c = this.f8102v;
            if (i9 >= i11) {
                break;
            }
            if (c1264c.f18239d == -1) {
                d7 = c1264c.f18241f;
                i8 = this.f8097q[i9].e(d7);
            } else {
                d7 = this.f8097q[i9].d(c1264c.f18242g);
                i8 = c1264c.f18242g;
            }
            int i12 = d7 - i8;
            if (i12 >= 0) {
                this.f8094J[i10] = i12;
                i10++;
            }
            i9++;
        }
        Arrays.sort(this.f8094J, 0, i10);
        for (int i13 = 0; i13 < i10; i13++) {
            int i14 = c1264c.f18238c;
            if (i14 < 0 || i14 >= x0Var.getItemCount()) {
                return;
            }
            ((C1310w) interfaceC1282g0).addPosition(c1264c.f18238c, this.f8094J[i13]);
            c1264c.f18238c += c1264c.f18239d;
        }
    }

    @Override // m1.AbstractC1286i0
    public int computeHorizontalScrollExtent(x0 x0Var) {
        return n(x0Var);
    }

    @Override // m1.AbstractC1286i0
    public int computeHorizontalScrollOffset(x0 x0Var) {
        return o(x0Var);
    }

    @Override // m1.AbstractC1286i0
    public int computeHorizontalScrollRange(x0 x0Var) {
        return p(x0Var);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0019, code lost:
    
        if ((r4 < v()) != r3.f8104x) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x000a, code lost:
    
        if (r3.f8104x != false) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x000c, code lost:
    
        r1 = 1;
     */
    @Override // m1.v0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.graphics.PointF computeScrollVectorForPosition(int r4) {
        /*
            r3 = this;
            int r0 = r3.getChildCount()
            r1 = -1
            r2 = 1
            if (r0 != 0) goto Le
            boolean r4 = r3.f8104x
            if (r4 == 0) goto L1b
        Lc:
            r1 = r2
            goto L1b
        Le:
            int r0 = r3.v()
            if (r4 >= r0) goto L16
            r4 = r2
            goto L17
        L16:
            r4 = 0
        L17:
            boolean r0 = r3.f8104x
            if (r4 == r0) goto Lc
        L1b:
            android.graphics.PointF r4 = new android.graphics.PointF
            r4.<init>()
            if (r1 != 0) goto L24
            r4 = 0
            return r4
        L24:
            int r0 = r3.f8100t
            r2 = 0
            if (r0 != 0) goto L2f
            float r0 = (float) r1
            r4.x = r0
            r4.y = r2
            return r4
        L2f:
            r4.x = r2
            float r0 = (float) r1
            r4.y = r0
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.computeScrollVectorForPosition(int):android.graphics.PointF");
    }

    @Override // m1.AbstractC1286i0
    public int computeVerticalScrollExtent(x0 x0Var) {
        return n(x0Var);
    }

    @Override // m1.AbstractC1286i0
    public int computeVerticalScrollOffset(x0 x0Var) {
        return o(x0Var);
    }

    @Override // m1.AbstractC1286i0
    public int computeVerticalScrollRange(x0 x0Var) {
        return p(x0Var);
    }

    public int[] findLastVisibleItemPositions(int[] iArr) {
        if (iArr == null) {
            iArr = new int[this.f8096p];
        } else if (iArr.length < this.f8096p) {
            throw new IllegalArgumentException("Provided int[]'s size must be more than or equal to span count. Expected:" + this.f8096p + ", array size:" + iArr.length);
        }
        for (int i2 = 0; i2 < this.f8096p; i2++) {
            iArr[i2] = this.f8097q[i2].findLastVisibleItemPosition();
        }
        return iArr;
    }

    @Override // m1.AbstractC1286i0
    public C1288j0 generateDefaultLayoutParams() {
        return this.f8100t == 0 ? new J0(-2, -1) : new J0(-1, -2);
    }

    @Override // m1.AbstractC1286i0
    public C1288j0 generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new J0(context, attributeSet);
    }

    public int getSpanCount() {
        return this.f8096p;
    }

    public void invalidateSpanAssignments() {
        this.f8086B.a();
        requestLayout();
    }

    @Override // m1.AbstractC1286i0
    public boolean isAutoMeasureEnabled() {
        return this.f8087C != 0;
    }

    public final boolean isLayoutRTL() {
        return getLayoutDirection() == 1;
    }

    public final boolean m() {
        int v6;
        if (getChildCount() != 0 && this.f8087C != 0 && isAttachedToWindow()) {
            if (this.f8104x) {
                v6 = w();
                v();
            } else {
                v6 = v();
                w();
            }
            M0 m02 = this.f8086B;
            if (v6 == 0 && A() != null) {
                m02.a();
                requestSimpleAnimationsInNextLayout();
                requestLayout();
                return true;
            }
        }
        return false;
    }

    public final int n(x0 x0Var) {
        if (getChildCount() == 0) {
            return 0;
        }
        L l7 = this.f8098r;
        boolean z6 = !this.f8093I;
        return e.f(x0Var, l7, s(z6), r(z6), this, this.f8093I);
    }

    public final int o(x0 x0Var) {
        if (getChildCount() == 0) {
            return 0;
        }
        L l7 = this.f8098r;
        boolean z6 = !this.f8093I;
        return e.g(x0Var, l7, s(z6), r(z6), this, this.f8093I, this.f8104x);
    }

    @Override // m1.AbstractC1286i0
    public void offsetChildrenHorizontal(int i2) {
        super.offsetChildrenHorizontal(i2);
        for (int i7 = 0; i7 < this.f8096p; i7++) {
            P0 p02 = this.f8097q[i7];
            int i8 = p02.f18320b;
            if (i8 != Integer.MIN_VALUE) {
                p02.f18320b = i8 + i2;
            }
            int i9 = p02.f18321c;
            if (i9 != Integer.MIN_VALUE) {
                p02.f18321c = i9 + i2;
            }
        }
    }

    @Override // m1.AbstractC1286i0
    public void offsetChildrenVertical(int i2) {
        super.offsetChildrenVertical(i2);
        for (int i7 = 0; i7 < this.f8096p; i7++) {
            P0 p02 = this.f8097q[i7];
            int i8 = p02.f18320b;
            if (i8 != Integer.MIN_VALUE) {
                p02.f18320b = i8 + i2;
            }
            int i9 = p02.f18321c;
            if (i9 != Integer.MIN_VALUE) {
                p02.f18321c = i9 + i2;
            }
        }
    }

    @Override // m1.AbstractC1286i0
    public void onAdapterChanged(V v6, V v7) {
        this.f8086B.a();
        for (int i2 = 0; i2 < this.f8096p; i2++) {
            this.f8097q[i2].b();
        }
    }

    @Override // m1.AbstractC1286i0
    public void onDetachedFromWindow(RecyclerView recyclerView, C1300p0 c1300p0) {
        super.onDetachedFromWindow(recyclerView, c1300p0);
        removeCallbacks(this.f8095K);
        for (int i2 = 0; i2 < this.f8096p; i2++) {
            this.f8097q[i2].b();
        }
        recyclerView.requestLayout();
    }

    /* JADX WARN: Code restructure failed: missing block: B:110:0x003a, code lost:
    
        if (r8.f8100t == 1) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x0040, code lost:
    
        if (r8.f8100t == 0) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x004c, code lost:
    
        if (isLayoutRTL() == false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x0058, code lost:
    
        if (isLayoutRTL() == false) goto L29;
     */
    @Override // m1.AbstractC1286i0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View onFocusSearchFailed(android.view.View r9, int r10, m1.C1300p0 r11, m1.x0 r12) {
        /*
            Method dump skipped, instructions count: 328
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.onFocusSearchFailed(android.view.View, int, m1.p0, m1.x0):android.view.View");
    }

    @Override // m1.AbstractC1286i0
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (getChildCount() > 0) {
            View s6 = s(false);
            View r6 = r(false);
            if (s6 == null || r6 == null) {
                return;
            }
            int position = getPosition(s6);
            int position2 = getPosition(r6);
            if (position < position2) {
                accessibilityEvent.setFromIndex(position);
                accessibilityEvent.setToIndex(position2);
            } else {
                accessibilityEvent.setFromIndex(position2);
                accessibilityEvent.setToIndex(position);
            }
        }
    }

    @Override // m1.AbstractC1286i0
    public void onItemsAdded(RecyclerView recyclerView, int i2, int i7) {
        z(i2, i7, 1);
    }

    @Override // m1.AbstractC1286i0
    public void onItemsChanged(RecyclerView recyclerView) {
        this.f8086B.a();
        requestLayout();
    }

    @Override // m1.AbstractC1286i0
    public void onItemsMoved(RecyclerView recyclerView, int i2, int i7, int i8) {
        z(i2, i7, 8);
    }

    @Override // m1.AbstractC1286i0
    public void onItemsRemoved(RecyclerView recyclerView, int i2, int i7) {
        z(i2, i7, 2);
    }

    @Override // m1.AbstractC1286i0
    public void onItemsUpdated(RecyclerView recyclerView, int i2, int i7, Object obj) {
        z(i2, i7, 4);
    }

    @Override // m1.AbstractC1286i0
    public void onLayoutChildren(C1300p0 c1300p0, x0 x0Var) {
        C(c1300p0, x0Var, true);
    }

    @Override // m1.AbstractC1286i0
    public void onLayoutCompleted(x0 x0Var) {
        super.onLayoutCompleted(x0Var);
        this.f8106z = -1;
        this.f8085A = Integer.MIN_VALUE;
        this.f8090F = null;
        this.f8092H.a();
    }

    @Override // m1.AbstractC1286i0
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof O0) {
            O0 o02 = (O0) parcelable;
            this.f8090F = o02;
            if (this.f8106z != -1) {
                o02.f18311j = null;
                o02.f18310f = 0;
                o02.f18308b = -1;
                o02.f18309e = -1;
                o02.f18311j = null;
                o02.f18310f = 0;
                o02.f18312m = 0;
                o02.f18313n = null;
                o02.f18314p = null;
            }
            requestLayout();
        }
    }

    @Override // m1.AbstractC1286i0
    public Parcelable onSaveInstanceState() {
        int e3;
        int startAfterPadding;
        int[] iArr;
        O0 o02 = this.f8090F;
        if (o02 != null) {
            return new O0(o02);
        }
        O0 o03 = new O0();
        o03.f18315q = this.f8103w;
        o03.f18316r = this.f8088D;
        o03.f18317s = this.f8089E;
        M0 m02 = this.f8086B;
        if (m02 == null || (iArr = m02.f18303a) == null) {
            o03.f18312m = 0;
        } else {
            o03.f18313n = iArr;
            o03.f18312m = iArr.length;
            o03.f18314p = m02.f18304b;
        }
        if (getChildCount() <= 0) {
            o03.f18308b = -1;
            o03.f18309e = -1;
            o03.f18310f = 0;
            return o03;
        }
        o03.f18308b = this.f8088D ? w() : v();
        View r6 = this.f8104x ? r(true) : s(true);
        o03.f18309e = r6 != null ? getPosition(r6) : -1;
        int i2 = this.f8096p;
        o03.f18310f = i2;
        o03.f18311j = new int[i2];
        for (int i7 = 0; i7 < this.f8096p; i7++) {
            if (this.f8088D) {
                e3 = this.f8097q[i7].d(Integer.MIN_VALUE);
                if (e3 != Integer.MIN_VALUE) {
                    startAfterPadding = this.f8098r.getEndAfterPadding();
                    e3 -= startAfterPadding;
                    o03.f18311j[i7] = e3;
                } else {
                    o03.f18311j[i7] = e3;
                }
            } else {
                e3 = this.f8097q[i7].e(Integer.MIN_VALUE);
                if (e3 != Integer.MIN_VALUE) {
                    startAfterPadding = this.f8098r.getStartAfterPadding();
                    e3 -= startAfterPadding;
                    o03.f18311j[i7] = e3;
                } else {
                    o03.f18311j[i7] = e3;
                }
            }
        }
        return o03;
    }

    @Override // m1.AbstractC1286i0
    public void onScrollStateChanged(int i2) {
        if (i2 == 0) {
            m();
        }
    }

    public final int p(x0 x0Var) {
        if (getChildCount() == 0) {
            return 0;
        }
        L l7 = this.f8098r;
        boolean z6 = !this.f8093I;
        return e.h(x0Var, l7, s(z6), r(z6), this, this.f8093I);
    }

    /* JADX WARN: Type inference failed for: r3v20 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7, types: [boolean, int] */
    public final int q(C1300p0 c1300p0, C1264C c1264c, x0 x0Var) {
        P0 p02;
        ?? r32;
        int e3;
        int decoratedMeasurement;
        int startAfterPadding;
        int decoratedMeasurement2;
        int i2;
        int i7;
        StaggeredGridLayoutManager staggeredGridLayoutManager = this;
        int i8 = 0;
        int i9 = 1;
        staggeredGridLayoutManager.f8105y.set(0, staggeredGridLayoutManager.f8096p, true);
        C1264C c1264c2 = staggeredGridLayoutManager.f8102v;
        int i10 = c1264c2.f18244i ? c1264c.f18240e == 1 ? Log.LOG_LEVEL_OFF : Integer.MIN_VALUE : c1264c.f18240e == 1 ? c1264c.f18242g + c1264c.f18237b : c1264c.f18241f - c1264c.f18237b;
        int i11 = c1264c.f18240e;
        for (int i12 = 0; i12 < staggeredGridLayoutManager.f8096p; i12++) {
            if (!staggeredGridLayoutManager.f8097q[i12].f18319a.isEmpty()) {
                staggeredGridLayoutManager.M(staggeredGridLayoutManager.f8097q[i12], i11, i10);
            }
        }
        int endAfterPadding = staggeredGridLayoutManager.f8104x ? staggeredGridLayoutManager.f8098r.getEndAfterPadding() : staggeredGridLayoutManager.f8098r.getStartAfterPadding();
        boolean z6 = false;
        while (true) {
            int i13 = c1264c.f18238c;
            int i14 = -1;
            if (((i13 < 0 || i13 >= x0Var.getItemCount()) ? i8 : i9) == 0 || (!c1264c2.f18244i && staggeredGridLayoutManager.f8105y.isEmpty())) {
                break;
            }
            View viewForPosition = c1300p0.getViewForPosition(c1264c.f18238c);
            c1264c.f18238c += c1264c.f18239d;
            J0 j02 = (J0) viewForPosition.getLayoutParams();
            int viewLayoutPosition = j02.getViewLayoutPosition();
            M0 m02 = staggeredGridLayoutManager.f8086B;
            int[] iArr = m02.f18303a;
            int i15 = (iArr == null || viewLayoutPosition >= iArr.length) ? -1 : iArr[viewLayoutPosition];
            if (i15 == -1) {
                if (staggeredGridLayoutManager.D(c1264c.f18240e)) {
                    i2 = staggeredGridLayoutManager.f8096p - i9;
                    i7 = -1;
                } else {
                    i14 = staggeredGridLayoutManager.f8096p;
                    i2 = i8;
                    i7 = i9;
                }
                P0 p03 = null;
                if (c1264c.f18240e == i9) {
                    int startAfterPadding2 = staggeredGridLayoutManager.f8098r.getStartAfterPadding();
                    int i16 = Log.LOG_LEVEL_OFF;
                    while (i2 != i14) {
                        P0 p04 = staggeredGridLayoutManager.f8097q[i2];
                        int i17 = i7;
                        int d7 = p04.d(startAfterPadding2);
                        if (d7 < i16) {
                            p03 = p04;
                            i16 = d7;
                        }
                        i2 += i17;
                        i7 = i17;
                    }
                } else {
                    int i18 = i7;
                    int endAfterPadding2 = staggeredGridLayoutManager.f8098r.getEndAfterPadding();
                    int i19 = Integer.MIN_VALUE;
                    while (i2 != i14) {
                        P0 p05 = staggeredGridLayoutManager.f8097q[i2];
                        int e7 = p05.e(endAfterPadding2);
                        if (e7 > i19) {
                            p03 = p05;
                            i19 = e7;
                        }
                        i2 += i18;
                    }
                }
                p02 = p03;
                m02.b(viewLayoutPosition);
                m02.f18303a[viewLayoutPosition] = p02.f18323e;
            } else {
                p02 = staggeredGridLayoutManager.f8097q[i15];
            }
            P0 p06 = p02;
            j02.f18294e = p06;
            if (c1264c.f18240e == 1) {
                staggeredGridLayoutManager.addView(viewForPosition);
                r32 = 0;
            } else {
                r32 = 0;
                staggeredGridLayoutManager.addView(viewForPosition, 0);
            }
            if (staggeredGridLayoutManager.f8100t == 1) {
                staggeredGridLayoutManager.B(viewForPosition, AbstractC1286i0.getChildMeasureSpec(staggeredGridLayoutManager.f8101u, staggeredGridLayoutManager.getWidthMode(), r32, ((ViewGroup.MarginLayoutParams) j02).width, r32), AbstractC1286i0.getChildMeasureSpec(staggeredGridLayoutManager.getHeight(), staggeredGridLayoutManager.getHeightMode(), staggeredGridLayoutManager.getPaddingBottom() + staggeredGridLayoutManager.getPaddingTop(), ((ViewGroup.MarginLayoutParams) j02).height, true));
            } else {
                staggeredGridLayoutManager.B(viewForPosition, AbstractC1286i0.getChildMeasureSpec(staggeredGridLayoutManager.getWidth(), staggeredGridLayoutManager.getWidthMode(), staggeredGridLayoutManager.getPaddingRight() + staggeredGridLayoutManager.getPaddingLeft(), ((ViewGroup.MarginLayoutParams) j02).width, true), AbstractC1286i0.getChildMeasureSpec(staggeredGridLayoutManager.f8101u, staggeredGridLayoutManager.getHeightMode(), 0, ((ViewGroup.MarginLayoutParams) j02).height, false));
            }
            if (c1264c.f18240e == 1) {
                decoratedMeasurement = p06.d(endAfterPadding);
                e3 = staggeredGridLayoutManager.f8098r.getDecoratedMeasurement(viewForPosition) + decoratedMeasurement;
            } else {
                e3 = p06.e(endAfterPadding);
                decoratedMeasurement = e3 - staggeredGridLayoutManager.f8098r.getDecoratedMeasurement(viewForPosition);
            }
            if (c1264c.f18240e == 1) {
                P0 p07 = j02.f18294e;
                p07.getClass();
                J0 j03 = (J0) viewForPosition.getLayoutParams();
                j03.f18294e = p07;
                ArrayList arrayList = p07.f18319a;
                arrayList.add(viewForPosition);
                p07.f18321c = Integer.MIN_VALUE;
                if (arrayList.size() == 1) {
                    p07.f18320b = Integer.MIN_VALUE;
                }
                if (j03.isItemRemoved() || j03.isItemChanged()) {
                    p07.f18322d = p07.f18324f.f8098r.getDecoratedMeasurement(viewForPosition) + p07.f18322d;
                }
            } else {
                P0 p08 = j02.f18294e;
                p08.getClass();
                J0 j04 = (J0) viewForPosition.getLayoutParams();
                j04.f18294e = p08;
                ArrayList arrayList2 = p08.f18319a;
                arrayList2.add(0, viewForPosition);
                p08.f18320b = Integer.MIN_VALUE;
                if (arrayList2.size() == 1) {
                    p08.f18321c = Integer.MIN_VALUE;
                }
                if (j04.isItemRemoved() || j04.isItemChanged()) {
                    p08.f18322d = p08.f18324f.f8098r.getDecoratedMeasurement(viewForPosition) + p08.f18322d;
                }
            }
            if (staggeredGridLayoutManager.isLayoutRTL() && staggeredGridLayoutManager.f8100t == 1) {
                decoratedMeasurement2 = staggeredGridLayoutManager.f8099s.getEndAfterPadding() - (((staggeredGridLayoutManager.f8096p - 1) - p06.f18323e) * staggeredGridLayoutManager.f8101u);
                startAfterPadding = decoratedMeasurement2 - staggeredGridLayoutManager.f8099s.getDecoratedMeasurement(viewForPosition);
            } else {
                startAfterPadding = staggeredGridLayoutManager.f8099s.getStartAfterPadding() + (p06.f18323e * staggeredGridLayoutManager.f8101u);
                decoratedMeasurement2 = staggeredGridLayoutManager.f8099s.getDecoratedMeasurement(viewForPosition) + startAfterPadding;
            }
            int i20 = startAfterPadding;
            int i21 = decoratedMeasurement2;
            if (staggeredGridLayoutManager.f8100t == 1) {
                staggeredGridLayoutManager.layoutDecoratedWithMargins(viewForPosition, i20, decoratedMeasurement, i21, e3);
                staggeredGridLayoutManager = this;
            } else {
                staggeredGridLayoutManager.layoutDecoratedWithMargins(viewForPosition, decoratedMeasurement, i20, e3, i21);
            }
            staggeredGridLayoutManager.M(p06, c1264c2.f18240e, i10);
            staggeredGridLayoutManager.F(c1300p0, c1264c2);
            if (c1264c2.f18243h && viewForPosition.hasFocusable()) {
                staggeredGridLayoutManager.f8105y.set(p06.f18323e, false);
            }
            z6 = true;
            i9 = 1;
            i8 = 0;
        }
        if (!z6) {
            staggeredGridLayoutManager.F(c1300p0, c1264c2);
        }
        int startAfterPadding3 = c1264c2.f18240e == -1 ? staggeredGridLayoutManager.f8098r.getStartAfterPadding() - staggeredGridLayoutManager.y(staggeredGridLayoutManager.f8098r.getStartAfterPadding()) : staggeredGridLayoutManager.x(staggeredGridLayoutManager.f8098r.getEndAfterPadding()) - staggeredGridLayoutManager.f8098r.getEndAfterPadding();
        if (startAfterPadding3 > 0) {
            return Math.min(c1264c.f18237b, startAfterPadding3);
        }
        return 0;
    }

    public final View r(boolean z6) {
        int startAfterPadding = this.f8098r.getStartAfterPadding();
        int endAfterPadding = this.f8098r.getEndAfterPadding();
        View view = null;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            int decoratedStart = this.f8098r.getDecoratedStart(childAt);
            int decoratedEnd = this.f8098r.getDecoratedEnd(childAt);
            if (decoratedEnd > startAfterPadding && decoratedStart < endAfterPadding) {
                if (decoratedEnd <= endAfterPadding || !z6) {
                    return childAt;
                }
                if (view == null) {
                    view = childAt;
                }
            }
        }
        return view;
    }

    public final View s(boolean z6) {
        int startAfterPadding = this.f8098r.getStartAfterPadding();
        int endAfterPadding = this.f8098r.getEndAfterPadding();
        int childCount = getChildCount();
        View view = null;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            int decoratedStart = this.f8098r.getDecoratedStart(childAt);
            if (this.f8098r.getDecoratedEnd(childAt) > startAfterPadding && decoratedStart < endAfterPadding) {
                if (decoratedStart >= startAfterPadding || !z6) {
                    return childAt;
                }
                if (view == null) {
                    view = childAt;
                }
            }
        }
        return view;
    }

    @Override // m1.AbstractC1286i0
    public int scrollHorizontallyBy(int i2, C1300p0 c1300p0, x0 x0Var) {
        return J(i2, c1300p0, x0Var);
    }

    @Override // m1.AbstractC1286i0
    public void scrollToPosition(int i2) {
        O0 o02 = this.f8090F;
        if (o02 != null && o02.f18308b != i2) {
            o02.f18311j = null;
            o02.f18310f = 0;
            o02.f18308b = -1;
            o02.f18309e = -1;
        }
        this.f8106z = i2;
        this.f8085A = Integer.MIN_VALUE;
        requestLayout();
    }

    @Override // m1.AbstractC1286i0
    public int scrollVerticallyBy(int i2, C1300p0 c1300p0, x0 x0Var) {
        return J(i2, c1300p0, x0Var);
    }

    @Override // m1.AbstractC1286i0
    public void setMeasuredDimension(Rect rect, int i2, int i7) {
        int chooseSize;
        int chooseSize2;
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        if (this.f8100t == 1) {
            chooseSize2 = AbstractC1286i0.chooseSize(i7, rect.height() + paddingBottom, getMinimumHeight());
            chooseSize = AbstractC1286i0.chooseSize(i2, (this.f8101u * this.f8096p) + paddingRight, getMinimumWidth());
        } else {
            chooseSize = AbstractC1286i0.chooseSize(i2, rect.width() + paddingRight, getMinimumWidth());
            chooseSize2 = AbstractC1286i0.chooseSize(i7, (this.f8101u * this.f8096p) + paddingBottom, getMinimumHeight());
        }
        setMeasuredDimension(chooseSize, chooseSize2);
    }

    public void setOrientation(int i2) {
        if (i2 != 0 && i2 != 1) {
            throw new IllegalArgumentException("invalid orientation.");
        }
        assertNotInLayoutOrScroll(null);
        if (i2 == this.f8100t) {
            return;
        }
        this.f8100t = i2;
        L l7 = this.f8098r;
        this.f8098r = this.f8099s;
        this.f8099s = l7;
        requestLayout();
    }

    public void setReverseLayout(boolean z6) {
        assertNotInLayoutOrScroll(null);
        O0 o02 = this.f8090F;
        if (o02 != null && o02.f18315q != z6) {
            o02.f18315q = z6;
        }
        this.f8103w = z6;
        requestLayout();
    }

    public void setSpanCount(int i2) {
        assertNotInLayoutOrScroll(null);
        if (i2 != this.f8096p) {
            invalidateSpanAssignments();
            this.f8096p = i2;
            this.f8105y = new BitSet(this.f8096p);
            this.f8097q = new P0[this.f8096p];
            for (int i7 = 0; i7 < this.f8096p; i7++) {
                this.f8097q[i7] = new P0(this, i7);
            }
            requestLayout();
        }
    }

    @Override // m1.AbstractC1286i0
    public void smoothScrollToPosition(RecyclerView recyclerView, x0 x0Var, int i2) {
        I i7 = new I(recyclerView.getContext());
        i7.setTargetPosition(i2);
        startSmoothScroll(i7);
    }

    @Override // m1.AbstractC1286i0
    public boolean supportsPredictiveItemAnimations() {
        return this.f8090F == null;
    }

    public final void t(C1300p0 c1300p0, x0 x0Var, boolean z6) {
        int endAfterPadding;
        int x6 = x(Integer.MIN_VALUE);
        if (x6 != Integer.MIN_VALUE && (endAfterPadding = this.f8098r.getEndAfterPadding() - x6) > 0) {
            int i2 = endAfterPadding - (-J(-endAfterPadding, c1300p0, x0Var));
            if (!z6 || i2 <= 0) {
                return;
            }
            this.f8098r.offsetChildren(i2);
        }
    }

    public final void u(C1300p0 c1300p0, x0 x0Var, boolean z6) {
        int startAfterPadding;
        int y6 = y(Log.LOG_LEVEL_OFF);
        if (y6 != Integer.MAX_VALUE && (startAfterPadding = y6 - this.f8098r.getStartAfterPadding()) > 0) {
            int J6 = startAfterPadding - J(startAfterPadding, c1300p0, x0Var);
            if (!z6 || J6 <= 0) {
                return;
            }
            this.f8098r.offsetChildren(-J6);
        }
    }

    public final int v() {
        if (getChildCount() == 0) {
            return 0;
        }
        return getPosition(getChildAt(0));
    }

    public final int w() {
        int childCount = getChildCount();
        if (childCount == 0) {
            return 0;
        }
        return getPosition(getChildAt(childCount - 1));
    }

    public final int x(int i2) {
        int d7 = this.f8097q[0].d(i2);
        for (int i7 = 1; i7 < this.f8096p; i7++) {
            int d8 = this.f8097q[i7].d(i2);
            if (d8 > d7) {
                d7 = d8;
            }
        }
        return d7;
    }

    public final int y(int i2) {
        int e3 = this.f8097q[0].e(i2);
        for (int i7 = 1; i7 < this.f8096p; i7++) {
            int e7 = this.f8097q[i7].e(i2);
            if (e7 < e3) {
                e3 = e7;
            }
        }
        return e3;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:48:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0094  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void z(int r10, int r11, int r12) {
        /*
            r9 = this;
            boolean r0 = r9.f8104x
            if (r0 == 0) goto L9
            int r0 = r9.w()
            goto Ld
        L9:
            int r0 = r9.v()
        Ld:
            r1 = 8
            if (r12 != r1) goto L1b
            if (r10 >= r11) goto L17
            int r2 = r11 + 1
        L15:
            r3 = r10
            goto L1e
        L17:
            int r2 = r10 + 1
            r3 = r11
            goto L1e
        L1b:
            int r2 = r10 + r11
            goto L15
        L1e:
            m1.M0 r4 = r9.f8086B
            int[] r5 = r4.f18303a
            r6 = -1
            if (r5 != 0) goto L26
            goto L80
        L26:
            int r5 = r5.length
            if (r3 < r5) goto L2a
            goto L80
        L2a:
            java.util.ArrayList r5 = r4.f18304b
            if (r5 != 0) goto L30
        L2e:
            r5 = r6
            goto L66
        L30:
            m1.L0 r5 = r4.getFullSpanItem(r3)
            if (r5 == 0) goto L3b
            java.util.ArrayList r7 = r4.f18304b
            r7.remove(r5)
        L3b:
            java.util.ArrayList r5 = r4.f18304b
            int r5 = r5.size()
            r7 = 0
        L42:
            if (r7 >= r5) goto L54
            java.util.ArrayList r8 = r4.f18304b
            java.lang.Object r8 = r8.get(r7)
            m1.L0 r8 = (m1.L0) r8
            int r8 = r8.f18298b
            if (r8 < r3) goto L51
            goto L55
        L51:
            int r7 = r7 + 1
            goto L42
        L54:
            r7 = r6
        L55:
            if (r7 == r6) goto L2e
            java.util.ArrayList r5 = r4.f18304b
            java.lang.Object r5 = r5.get(r7)
            m1.L0 r5 = (m1.L0) r5
            java.util.ArrayList r8 = r4.f18304b
            r8.remove(r7)
            int r5 = r5.f18298b
        L66:
            if (r5 != r6) goto L72
            int[] r5 = r4.f18303a
            int r7 = r5.length
            java.util.Arrays.fill(r5, r3, r7, r6)
            int[] r5 = r4.f18303a
            int r5 = r5.length
            goto L80
        L72:
            int r5 = r5 + 1
            int[] r7 = r4.f18303a
            int r7 = r7.length
            int r5 = java.lang.Math.min(r5, r7)
            int[] r7 = r4.f18303a
            java.util.Arrays.fill(r7, r3, r5, r6)
        L80:
            r5 = 1
            if (r12 == r5) goto L94
            r6 = 2
            if (r12 == r6) goto L90
            if (r12 == r1) goto L89
            goto L97
        L89:
            r4.d(r10, r5)
            r4.c(r11, r5)
            goto L97
        L90:
            r4.d(r10, r11)
            goto L97
        L94:
            r4.c(r10, r11)
        L97:
            if (r2 > r0) goto L9a
            goto Lac
        L9a:
            boolean r10 = r9.f8104x
            if (r10 == 0) goto La3
            int r10 = r9.v()
            goto La7
        La3:
            int r10 = r9.w()
        La7:
            if (r3 > r10) goto Lac
            r9.requestLayout()
        Lac:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.z(int, int, int):void");
    }

    @Override // m1.AbstractC1286i0
    public C1288j0 generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new J0((ViewGroup.MarginLayoutParams) layoutParams) : new J0(layoutParams);
    }
}
