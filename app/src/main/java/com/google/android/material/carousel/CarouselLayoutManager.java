package com.google.android.material.carousel;

import A.i;
import C.k;
import G.a;
import L.h;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.PointF;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.media3.common.util.Log;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.R;
import com.google.android.material.carousel.CarouselLayoutManager;
import f1.RunnableC0883a;
import g3.AbstractC0951a;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import m1.AbstractC1286i0;
import m1.C1288j0;
import m1.C1300p0;
import m1.v0;
import m1.x0;
import o3.AbstractC1456i;
import o3.AbstractC1457j;
import o3.C1451d;
import o3.C1452e;
import o3.C1453f;
import o3.C1454g;
import o3.C1455h;
import o3.C1460m;
import o3.C1461n;
import o3.C1462o;
import o3.C1463p;
import o3.InterfaceC1449b;

/* loaded from: classes2.dex */
public class CarouselLayoutManager extends AbstractC1286i0 implements InterfaceC1449b, v0 {

    /* renamed from: A, reason: collision with root package name */
    public int f12543A;

    /* renamed from: B, reason: collision with root package name */
    public int f12544B;

    /* renamed from: C, reason: collision with root package name */
    public int f12545C;

    /* renamed from: p, reason: collision with root package name */
    public int f12546p;

    /* renamed from: q, reason: collision with root package name */
    public int f12547q;

    /* renamed from: r, reason: collision with root package name */
    public int f12548r;

    /* renamed from: s, reason: collision with root package name */
    public final C1453f f12549s;

    /* renamed from: t, reason: collision with root package name */
    public AbstractC1457j f12550t;

    /* renamed from: u, reason: collision with root package name */
    public C1462o f12551u;

    /* renamed from: v, reason: collision with root package name */
    public C1461n f12552v;

    /* renamed from: w, reason: collision with root package name */
    public int f12553w;

    /* renamed from: x, reason: collision with root package name */
    public HashMap f12554x;

    /* renamed from: y, reason: collision with root package name */
    public AbstractC1456i f12555y;

    /* renamed from: z, reason: collision with root package name */
    public final View.OnLayoutChangeListener f12556z;

    public CarouselLayoutManager() {
        this(new C1463p());
    }

    public static k x(List list, float f3, boolean z6) {
        float f7 = Float.MAX_VALUE;
        int i2 = -1;
        int i7 = -1;
        int i8 = -1;
        int i9 = -1;
        float f8 = -3.4028235E38f;
        float f9 = Float.MAX_VALUE;
        float f10 = Float.MAX_VALUE;
        for (int i10 = 0; i10 < list.size(); i10++) {
            C1460m c1460m = (C1460m) list.get(i10);
            float f11 = z6 ? c1460m.f19112b : c1460m.f19111a;
            float abs = Math.abs(f11 - f3);
            if (f11 <= f3 && abs <= f7) {
                i2 = i10;
                f7 = abs;
            }
            if (f11 > f3 && abs <= f9) {
                i8 = i10;
                f9 = abs;
            }
            if (f11 <= f10) {
                i7 = i10;
                f10 = f11;
            }
            if (f11 > f8) {
                i9 = i10;
                f8 = f11;
            }
        }
        if (i2 == -1) {
            i2 = i7;
        }
        if (i8 == -1) {
            i8 = i9;
        }
        C1460m c1460m2 = (C1460m) list.get(i2);
        C1460m c1460m3 = (C1460m) list.get(i8);
        k kVar = new k();
        h.checkArgument(c1460m2.f19111a <= c1460m3.f19111a);
        kVar.f325a = c1460m2;
        kVar.f326b = c1460m3;
        return kVar;
    }

    public final boolean A(float f3, k kVar) {
        C1460m c1460m = (C1460m) kVar.f325a;
        float f7 = c1460m.f19114d;
        C1460m c1460m2 = (C1460m) kVar.f326b;
        float n7 = n(f3, AbstractC0951a.lerp(f7, c1460m2.f19114d, c1460m.f19112b, c1460m2.f19112b, f3) / 2.0f);
        return y() ? n7 > ((float) t()) : n7 < 0.0f;
    }

    public final C1452e B(C1300p0 c1300p0, float f3, int i2) {
        View viewForPosition = c1300p0.getViewForPosition(i2);
        measureChildWithMargins(viewForPosition, 0, 0);
        float n7 = n(f3, this.f12552v.f19119a / 2.0f);
        k x6 = x(this.f12552v.f19120b, n7, false);
        return new C1452e(viewForPosition, n7, q(viewForPosition, n7, x6), x6);
    }

    /* JADX WARN: Code restructure failed: missing block: B:131:0x046e, code lost:
    
        if (r9 == r6) goto L138;
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x05c5, code lost:
    
        if (r8 == r10) goto L196;
     */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0564  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0579  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x058f  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x05a7  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x05cf  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x05d9  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x0580  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x0572 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void C(m1.C1300p0 r30) {
        /*
            Method dump skipped, instructions count: 1684
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.carousel.CarouselLayoutManager.C(m1.p0):void");
    }

    public final void D() {
        this.f12551u = null;
        requestLayout();
    }

    public final int E(int i2, C1300p0 c1300p0, x0 x0Var) {
        if (getChildCount() == 0 || i2 == 0) {
            return 0;
        }
        if (this.f12551u == null) {
            C(c1300p0);
        }
        int i7 = this.f12546p;
        int i8 = this.f12547q;
        int i9 = this.f12548r;
        int i10 = i7 + i2;
        if (i10 < i8) {
            i2 = i8 - i7;
        } else if (i10 > i9) {
            i2 = i9 - i7;
        }
        this.f12546p = i7 + i2;
        F(this.f12551u);
        float f3 = this.f12552v.f19119a / 2.0f;
        float r6 = r(getPosition(getChildAt(0)));
        Rect rect = new Rect();
        float f7 = y() ? this.f12552v.c().f19112b : this.f12552v.a().f19112b;
        float f8 = Float.MAX_VALUE;
        for (int i11 = 0; i11 < getChildCount(); i11++) {
            View childAt = getChildAt(i11);
            float n7 = n(r6, f3);
            float q6 = q(childAt, n7, x(this.f12552v.f19120b, n7, false));
            super.getDecoratedBoundsWithMargins(childAt, rect);
            this.f12555y.offsetChild(childAt, rect, f3, q6);
            float abs = Math.abs(f7 - q6);
            if (childAt != null && abs < f8) {
                this.f12544B = getPosition(childAt);
                f8 = abs;
            }
            r6 = n(r6, this.f12552v.f19119a);
        }
        s(c1300p0, x0Var);
        return i2;
    }

    public final void F(C1462o c1462o) {
        int i2 = this.f12548r;
        int i7 = this.f12547q;
        if (i2 <= i7) {
            this.f12552v = y() ? c1462o.a() : c1462o.b();
        } else {
            this.f12552v = c1462o.getShiftedState(this.f12546p, i7, i2);
        }
        List list = this.f12552v.f19120b;
        C1453f c1453f = this.f12549s;
        c1453f.getClass();
        c1453f.f19096b = Collections.unmodifiableList(list);
    }

    public final void G() {
        int itemCount = getItemCount();
        int i2 = this.f12543A;
        if (itemCount == i2 || this.f12551u == null) {
            return;
        }
        C1463p c1463p = (C1463p) this.f12550t;
        if ((i2 < c1463p.f19132c && getItemCount() >= c1463p.f19132c) || (i2 >= c1463p.f19132c && getItemCount() < c1463p.f19132c)) {
            D();
        }
        this.f12543A = itemCount;
    }

    @Override // m1.AbstractC1286i0
    public boolean canScrollHorizontally() {
        return isHorizontal();
    }

    @Override // m1.AbstractC1286i0
    public boolean canScrollVertically() {
        return !isHorizontal();
    }

    @Override // m1.AbstractC1286i0
    public int computeHorizontalScrollExtent(x0 x0Var) {
        if (getChildCount() == 0 || this.f12551u == null || getItemCount() <= 1) {
            return 0;
        }
        return (int) (getWidth() * (this.f12551u.f19123a.f19119a / computeHorizontalScrollRange(x0Var)));
    }

    @Override // m1.AbstractC1286i0
    public int computeHorizontalScrollOffset(x0 x0Var) {
        return this.f12546p;
    }

    @Override // m1.AbstractC1286i0
    public int computeHorizontalScrollRange(x0 x0Var) {
        return this.f12548r - this.f12547q;
    }

    @Override // m1.v0
    public PointF computeScrollVectorForPosition(int i2) {
        if (this.f12551u == null) {
            return null;
        }
        int v6 = v(i2, u(i2)) - this.f12546p;
        return isHorizontal() ? new PointF(v6, 0.0f) : new PointF(0.0f, v6);
    }

    @Override // m1.AbstractC1286i0
    public int computeVerticalScrollExtent(x0 x0Var) {
        if (getChildCount() == 0 || this.f12551u == null || getItemCount() <= 1) {
            return 0;
        }
        return (int) (getHeight() * (this.f12551u.f19123a.f19119a / computeVerticalScrollRange(x0Var)));
    }

    @Override // m1.AbstractC1286i0
    public int computeVerticalScrollOffset(x0 x0Var) {
        return this.f12546p;
    }

    @Override // m1.AbstractC1286i0
    public int computeVerticalScrollRange(x0 x0Var) {
        return this.f12548r - this.f12547q;
    }

    @Override // m1.AbstractC1286i0
    public C1288j0 generateDefaultLayoutParams() {
        return new C1288j0(-2, -2);
    }

    @Override // o3.InterfaceC1449b
    public int getCarouselAlignment() {
        return this.f12545C;
    }

    @Override // o3.InterfaceC1449b
    public int getContainerHeight() {
        return getHeight();
    }

    @Override // o3.InterfaceC1449b
    public int getContainerWidth() {
        return getWidth();
    }

    @Override // m1.AbstractC1286i0
    public void getDecoratedBoundsWithMargins(View view, Rect rect) {
        super.getDecoratedBoundsWithMargins(view, rect);
        float centerY = rect.centerY();
        if (isHorizontal()) {
            centerY = rect.centerX();
        }
        k x6 = x(this.f12552v.f19120b, centerY, true);
        C1460m c1460m = (C1460m) x6.f325a;
        float f3 = c1460m.f19114d;
        C1460m c1460m2 = (C1460m) x6.f326b;
        float lerp = AbstractC0951a.lerp(f3, c1460m2.f19114d, c1460m.f19112b, c1460m2.f19112b, centerY);
        float width = isHorizontal() ? (rect.width() - lerp) / 2.0f : 0.0f;
        float height = isHorizontal() ? 0.0f : (rect.height() - lerp) / 2.0f;
        rect.set((int) (rect.left + width), (int) (rect.top + height), (int) (rect.right - width), (int) (rect.bottom - height));
    }

    public int getOrientation() {
        return this.f12555y.f19099a;
    }

    @Override // m1.AbstractC1286i0
    public boolean isAutoMeasureEnabled() {
        return true;
    }

    @Override // o3.InterfaceC1449b
    public boolean isHorizontal() {
        return this.f12555y.f19099a == 0;
    }

    public final void m(View view, int i2, C1452e c1452e) {
        float f3 = this.f12552v.f19119a / 2.0f;
        addView(view, i2);
        float f7 = c1452e.f19093b;
        this.f12555y.layoutDecoratedWithMargins(view, (int) (f7 - f3), (int) (f7 + f3));
    }

    @Override // m1.AbstractC1286i0
    public void measureChildWithMargins(View view, int i2, int i7) {
        throw new IllegalStateException("All children of a RecyclerView using CarouselLayoutManager must use MaskableFrameLayout as their root ViewGroup.");
    }

    public final float n(float f3, float f7) {
        return y() ? f3 - f7 : f3 + f7;
    }

    public final void o(int i2, C1300p0 c1300p0, x0 x0Var) {
        float r6 = r(i2);
        while (i2 < x0Var.getItemCount()) {
            C1452e B6 = B(c1300p0, r6, i2);
            float f3 = B6.f19093b;
            k kVar = B6.f19094c;
            if (z(f3, kVar)) {
                return;
            }
            r6 = n(r6, this.f12552v.f19119a);
            if (!A(f3, kVar)) {
                m(B6.f19092a, -1, B6);
            }
            i2++;
        }
    }

    @Override // m1.AbstractC1286i0
    public void onAttachedToWindow(RecyclerView recyclerView) {
        super.onAttachedToWindow(recyclerView);
        AbstractC1457j abstractC1457j = this.f12550t;
        Context context = recyclerView.getContext();
        float f3 = abstractC1457j.f19100a;
        if (f3 <= 0.0f) {
            f3 = context.getResources().getDimension(R.dimen.m3_carousel_small_item_size_min);
        }
        abstractC1457j.f19100a = f3;
        float f7 = abstractC1457j.f19101b;
        if (f7 <= 0.0f) {
            f7 = context.getResources().getDimension(R.dimen.m3_carousel_small_item_size_max);
        }
        abstractC1457j.f19101b = f7;
        D();
        recyclerView.addOnLayoutChangeListener(this.f12556z);
    }

    @Override // m1.AbstractC1286i0
    public void onDetachedFromWindow(RecyclerView recyclerView, C1300p0 c1300p0) {
        super.onDetachedFromWindow(recyclerView, c1300p0);
        recyclerView.removeOnLayoutChangeListener(this.f12556z);
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x003a, code lost:
    
        if (r8 == 1) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0044, code lost:
    
        if (y() != false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0048, code lost:
    
        if (r8 == 1) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0051, code lost:
    
        if (y() != false) goto L20;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:47:? A[RETURN, SYNTHETIC] */
    @Override // m1.AbstractC1286i0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View onFocusSearchFailed(android.view.View r5, int r6, m1.C1300p0 r7, m1.x0 r8) {
        /*
            r4 = this;
            int r8 = r4.getChildCount()
            if (r8 != 0) goto L8
            goto L9c
        L8:
            int r8 = r4.getOrientation()
            r0 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = -1
            r2 = 1
            if (r6 == r2) goto L46
            r3 = 2
            if (r6 == r3) goto L3c
            r3 = 17
            if (r6 == r3) goto L4b
            r3 = 33
            if (r6 == r3) goto L48
            r3 = 66
            if (r6 == r3) goto L3e
            r3 = 130(0x82, float:1.82E-43)
            if (r6 == r3) goto L3a
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            java.lang.String r3 = "Unknown focus request:"
            r8.<init>(r3)
            r8.append(r6)
            java.lang.String r6 = r8.toString()
            java.lang.String r8 = "CarouselLayoutManager"
            android.util.Log.d(r8, r6)
        L38:
            r6 = r0
            goto L54
        L3a:
            if (r8 != r2) goto L38
        L3c:
            r6 = r2
            goto L54
        L3e:
            if (r8 != 0) goto L38
            boolean r6 = r4.y()
            if (r6 == 0) goto L3c
        L46:
            r6 = r1
            goto L54
        L48:
            if (r8 != r2) goto L38
            goto L46
        L4b:
            if (r8 != 0) goto L38
            boolean r6 = r4.y()
            if (r6 == 0) goto L46
            goto L3c
        L54:
            if (r6 != r0) goto L57
            goto L9c
        L57:
            r8 = 0
            if (r6 != r1) goto L91
            int r5 = r4.getPosition(r5)
            if (r5 != 0) goto L61
            goto L9c
        L61:
            android.view.View r5 = r4.getChildAt(r8)
            int r5 = r4.getPosition(r5)
            int r5 = r5 - r2
            if (r5 < 0) goto L80
            int r6 = r4.getItemCount()
            if (r5 < r6) goto L73
            goto L80
        L73:
            float r6 = r4.r(r5)
            o3.e r5 = r4.B(r7, r6, r5)
            android.view.View r6 = r5.f19092a
            r4.m(r6, r8, r5)
        L80:
            boolean r5 = r4.y()
            if (r5 == 0) goto L8c
            int r5 = r4.getChildCount()
            int r8 = r5 + (-1)
        L8c:
            android.view.View r5 = r4.getChildAt(r8)
            return r5
        L91:
            int r5 = r4.getPosition(r5)
            int r6 = r4.getItemCount()
            int r6 = r6 - r2
            if (r5 != r6) goto L9e
        L9c:
            r5 = 0
            return r5
        L9e:
            int r5 = r4.getChildCount()
            int r5 = r5 - r2
            android.view.View r5 = r4.getChildAt(r5)
            int r5 = r4.getPosition(r5)
            int r5 = r5 + r2
            if (r5 < 0) goto Lc2
            int r6 = r4.getItemCount()
            if (r5 < r6) goto Lb5
            goto Lc2
        Lb5:
            float r6 = r4.r(r5)
            o3.e r5 = r4.B(r7, r6, r5)
            android.view.View r6 = r5.f19092a
            r4.m(r6, r1, r5)
        Lc2:
            boolean r5 = r4.y()
            if (r5 == 0) goto Lc9
            goto Lcf
        Lc9:
            int r5 = r4.getChildCount()
            int r8 = r5 + (-1)
        Lcf:
            android.view.View r5 = r4.getChildAt(r8)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.carousel.CarouselLayoutManager.onFocusSearchFailed(android.view.View, int, m1.p0, m1.x0):android.view.View");
    }

    @Override // m1.AbstractC1286i0
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (getChildCount() > 0) {
            accessibilityEvent.setFromIndex(getPosition(getChildAt(0)));
            accessibilityEvent.setToIndex(getPosition(getChildAt(getChildCount() - 1)));
        }
    }

    @Override // m1.AbstractC1286i0
    public void onItemsAdded(RecyclerView recyclerView, int i2, int i7) {
        super.onItemsAdded(recyclerView, i2, i7);
        G();
    }

    @Override // m1.AbstractC1286i0
    public void onItemsRemoved(RecyclerView recyclerView, int i2, int i7) {
        super.onItemsRemoved(recyclerView, i2, i7);
        G();
    }

    @Override // m1.AbstractC1286i0
    public void onLayoutChildren(C1300p0 c1300p0, x0 x0Var) {
        float f3;
        if (x0Var.getItemCount() <= 0 || t() <= 0.0f) {
            removeAndRecycleAllViews(c1300p0);
            this.f12553w = 0;
            return;
        }
        boolean y6 = y();
        boolean z6 = this.f12551u == null;
        if (z6) {
            C(c1300p0);
        }
        C1462o c1462o = this.f12551u;
        boolean y7 = y();
        C1461n a7 = y7 ? c1462o.a() : c1462o.b();
        float f7 = (y7 ? a7.c() : a7.a()).f19111a;
        float f8 = a7.f19119a / 2.0f;
        int e3 = (int) (this.f12555y.e() - (y() ? f7 + f8 : f7 - f8));
        C1462o c1462o2 = this.f12551u;
        boolean y8 = y();
        C1461n b7 = y8 ? c1462o2.b() : c1462o2.a();
        C1460m a8 = y8 ? b7.a() : b7.c();
        int itemCount = (int) (((((x0Var.getItemCount() - 1) * b7.f19119a) * (y8 ? -1.0f : 1.0f)) - (a8.f19111a - this.f12555y.e())) + (this.f12555y.b() - a8.f19111a) + (y8 ? -a8.f19117g : a8.f19118h));
        int min = y8 ? Math.min(0, itemCount) : Math.max(0, itemCount);
        this.f12547q = y6 ? min : e3;
        if (y6) {
            min = e3;
        }
        this.f12548r = min;
        if (z6) {
            this.f12546p = e3;
            C1462o c1462o3 = this.f12551u;
            int itemCount2 = getItemCount();
            int i2 = this.f12547q;
            int i7 = this.f12548r;
            boolean y9 = y();
            C1461n c1461n = c1462o3.f19123a;
            HashMap hashMap = new HashMap();
            int i8 = 0;
            int i9 = 0;
            while (true) {
                f3 = c1461n.f19119a;
                if (i8 >= itemCount2) {
                    break;
                }
                int i10 = y9 ? (itemCount2 - i8) - 1 : i8;
                float f9 = i10 * f3 * (y9 ? -1 : 1);
                float f10 = i7 - c1462o3.f19129g;
                List list = c1462o3.f19125c;
                if (f9 > f10 || i8 >= itemCount2 - list.size()) {
                    hashMap.put(Integer.valueOf(i10), (C1461n) list.get(a.clamp(i9, 0, list.size() - 1)));
                    i9++;
                }
                i8++;
            }
            int i11 = 0;
            for (int i12 = itemCount2 - 1; i12 >= 0; i12--) {
                int i13 = y9 ? (itemCount2 - i12) - 1 : i12;
                float f11 = i13 * f3 * (y9 ? -1 : 1);
                float f12 = i2 + c1462o3.f19128f;
                List list2 = c1462o3.f19124b;
                if (f11 < f12 || i12 < list2.size()) {
                    hashMap.put(Integer.valueOf(i13), (C1461n) list2.get(a.clamp(i11, 0, list2.size() - 1)));
                    i11++;
                }
            }
            this.f12554x = hashMap;
            int i14 = this.f12544B;
            if (i14 != -1) {
                this.f12546p = v(i14, u(i14));
            }
        }
        int i15 = this.f12546p;
        int i16 = this.f12547q;
        int i17 = this.f12548r;
        this.f12546p = (i15 < i16 ? i16 - i15 : i15 > i17 ? i17 - i15 : 0) + i15;
        this.f12553w = a.clamp(this.f12553w, 0, x0Var.getItemCount());
        F(this.f12551u);
        detachAndScrapAttachedViews(c1300p0);
        s(c1300p0, x0Var);
        this.f12543A = getItemCount();
    }

    @Override // m1.AbstractC1286i0
    public void onLayoutCompleted(x0 x0Var) {
        super.onLayoutCompleted(x0Var);
        if (getChildCount() == 0) {
            this.f12553w = 0;
        } else {
            this.f12553w = getPosition(getChildAt(0));
        }
    }

    public final void p(int i2, C1300p0 c1300p0) {
        float r6 = r(i2);
        while (i2 >= 0) {
            C1452e B6 = B(c1300p0, r6, i2);
            k kVar = B6.f19094c;
            float f3 = B6.f19093b;
            if (A(f3, kVar)) {
                return;
            }
            float f7 = this.f12552v.f19119a;
            r6 = y() ? r6 + f7 : r6 - f7;
            if (!z(f3, kVar)) {
                m(B6.f19092a, 0, B6);
            }
            i2--;
        }
    }

    public final float q(View view, float f3, k kVar) {
        C1460m c1460m = (C1460m) kVar.f325a;
        float f7 = c1460m.f19112b;
        C1460m c1460m2 = (C1460m) kVar.f326b;
        float f8 = c1460m2.f19112b;
        float f9 = c1460m.f19111a;
        float f10 = c1460m2.f19111a;
        float lerp = AbstractC0951a.lerp(f7, f8, f9, f10, f3);
        if (c1460m2 != this.f12552v.b() && c1460m != this.f12552v.d()) {
            return lerp;
        }
        return (((1.0f - c1460m2.f19113c) + (this.f12555y.getMaskMargins((C1288j0) view.getLayoutParams()) / this.f12552v.f19119a)) * (f3 - f10)) + lerp;
    }

    public final float r(int i2) {
        return n(this.f12555y.e() - this.f12546p, this.f12552v.f19119a * i2);
    }

    @Override // m1.AbstractC1286i0
    public boolean requestChildRectangleOnScreen(RecyclerView recyclerView, View view, Rect rect, boolean z6, boolean z7) {
        int w6;
        if (this.f12551u == null || (w6 = w(getPosition(view), u(getPosition(view)))) == 0) {
            return false;
        }
        int i2 = this.f12546p;
        int i7 = this.f12547q;
        int i8 = this.f12548r;
        int i9 = i2 + w6;
        if (i9 < i7) {
            w6 = i7 - i2;
        } else if (i9 > i8) {
            w6 = i8 - i2;
        }
        int w7 = w(getPosition(view), this.f12551u.getShiftedState(i2 + w6, i7, i8));
        if (isHorizontal()) {
            recyclerView.scrollBy(w7, 0);
            return true;
        }
        recyclerView.scrollBy(0, w7);
        return true;
    }

    public final void s(C1300p0 c1300p0, x0 x0Var) {
        while (getChildCount() > 0) {
            View childAt = getChildAt(0);
            Rect rect = new Rect();
            super.getDecoratedBoundsWithMargins(childAt, rect);
            float centerX = isHorizontal() ? rect.centerX() : rect.centerY();
            if (!A(centerX, x(this.f12552v.f19120b, centerX, true))) {
                break;
            } else {
                removeAndRecycleView(childAt, c1300p0);
            }
        }
        while (getChildCount() - 1 >= 0) {
            View childAt2 = getChildAt(getChildCount() - 1);
            Rect rect2 = new Rect();
            super.getDecoratedBoundsWithMargins(childAt2, rect2);
            float centerX2 = isHorizontal() ? rect2.centerX() : rect2.centerY();
            if (!z(centerX2, x(this.f12552v.f19120b, centerX2, true))) {
                break;
            } else {
                removeAndRecycleView(childAt2, c1300p0);
            }
        }
        if (getChildCount() == 0) {
            p(this.f12553w - 1, c1300p0);
            o(this.f12553w, c1300p0, x0Var);
        } else {
            int position = getPosition(getChildAt(0));
            int position2 = getPosition(getChildAt(getChildCount() - 1));
            p(position - 1, c1300p0);
            o(position2 + 1, c1300p0, x0Var);
        }
    }

    @Override // m1.AbstractC1286i0
    public int scrollHorizontallyBy(int i2, C1300p0 c1300p0, x0 x0Var) {
        if (canScrollHorizontally()) {
            return E(i2, c1300p0, x0Var);
        }
        return 0;
    }

    @Override // m1.AbstractC1286i0
    public void scrollToPosition(int i2) {
        this.f12544B = i2;
        if (this.f12551u == null) {
            return;
        }
        this.f12546p = v(i2, u(i2));
        this.f12553w = a.clamp(i2, 0, Math.max(0, getItemCount() - 1));
        F(this.f12551u);
        requestLayout();
    }

    @Override // m1.AbstractC1286i0
    public int scrollVerticallyBy(int i2, C1300p0 c1300p0, x0 x0Var) {
        if (canScrollVertically()) {
            return E(i2, c1300p0, x0Var);
        }
        return 0;
    }

    public void setCarouselAlignment(int i2) {
        this.f12545C = i2;
        D();
    }

    public void setCarouselStrategy(AbstractC1457j abstractC1457j) {
        this.f12550t = abstractC1457j;
        D();
    }

    public void setOrientation(int i2) {
        AbstractC1456i c1455h;
        if (i2 != 0 && i2 != 1) {
            throw new IllegalArgumentException(i.f(i2, "invalid orientation:"));
        }
        assertNotInLayoutOrScroll(null);
        AbstractC1456i abstractC1456i = this.f12555y;
        if (abstractC1456i == null || i2 != abstractC1456i.f19099a) {
            if (i2 == 0) {
                c1455h = new C1455h(this);
            } else {
                if (i2 != 1) {
                    throw new IllegalArgumentException("invalid orientation");
                }
                c1455h = new C1454g(this);
            }
            this.f12555y = c1455h;
            D();
        }
    }

    @Override // m1.AbstractC1286i0
    public void smoothScrollToPosition(RecyclerView recyclerView, x0 x0Var, int i2) {
        C1451d c1451d = new C1451d(this, recyclerView.getContext());
        c1451d.setTargetPosition(i2);
        startSmoothScroll(c1451d);
    }

    public final int t() {
        return isHorizontal() ? getContainerWidth() : getContainerHeight();
    }

    public final C1461n u(int i2) {
        C1461n c1461n;
        HashMap hashMap = this.f12554x;
        return (hashMap == null || (c1461n = (C1461n) hashMap.get(Integer.valueOf(a.clamp(i2, 0, Math.max(0, getItemCount() + (-1)))))) == null) ? this.f12551u.f19123a : c1461n;
    }

    public final int v(int i2, C1461n c1461n) {
        if (!y()) {
            return (int) ((c1461n.f19119a / 2.0f) + ((i2 * c1461n.f19119a) - c1461n.a().f19111a));
        }
        float t6 = t() - c1461n.c().f19111a;
        float f3 = c1461n.f19119a;
        return (int) ((t6 - (i2 * f3)) - (f3 / 2.0f));
    }

    public final int w(int i2, C1461n c1461n) {
        int i7 = Log.LOG_LEVEL_OFF;
        for (C1460m c1460m : c1461n.f19120b.subList(c1461n.f19121c, c1461n.f19122d + 1)) {
            float f3 = c1461n.f19119a;
            float f7 = (f3 / 2.0f) + (i2 * f3);
            int t6 = (y() ? (int) ((t() - c1460m.f19111a) - f7) : (int) (f7 - c1460m.f19111a)) - this.f12546p;
            if (Math.abs(i7) > Math.abs(t6)) {
                i7 = t6;
            }
        }
        return i7;
    }

    public final boolean y() {
        return isHorizontal() && getLayoutDirection() == 1;
    }

    public final boolean z(float f3, k kVar) {
        C1460m c1460m = (C1460m) kVar.f325a;
        float f7 = c1460m.f19114d;
        C1460m c1460m2 = (C1460m) kVar.f326b;
        float lerp = AbstractC0951a.lerp(f7, c1460m2.f19114d, c1460m.f19112b, c1460m2.f19112b, f3) / 2.0f;
        float f8 = y() ? f3 + lerp : f3 - lerp;
        return y() ? f8 < 0.0f : f8 > ((float) t());
    }

    public CarouselLayoutManager(AbstractC1457j abstractC1457j) {
        this(abstractC1457j, 0);
    }

    public CarouselLayoutManager(AbstractC1457j abstractC1457j, int i2) {
        this.f12549s = new C1453f();
        this.f12553w = 0;
        this.f12556z = new View.OnLayoutChangeListener() { // from class: o3.c
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i7, int i8, int i9, int i10, int i11, int i12, int i13, int i14) {
                CarouselLayoutManager carouselLayoutManager = CarouselLayoutManager.this;
                if (i7 == i11 && i8 == i12 && i9 == i13 && i10 == i14) {
                    return;
                }
                view.post(new RunnableC0883a(carouselLayoutManager, 8));
            }
        };
        this.f12544B = -1;
        this.f12545C = 0;
        setCarouselStrategy(abstractC1457j);
        setOrientation(i2);
    }

    @SuppressLint({"UnknownNullness"})
    public CarouselLayoutManager(Context context, AttributeSet attributeSet, int i2, int i7) {
        this.f12549s = new C1453f();
        this.f12553w = 0;
        this.f12556z = new View.OnLayoutChangeListener() { // from class: o3.c
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i72, int i8, int i9, int i10, int i11, int i12, int i13, int i14) {
                CarouselLayoutManager carouselLayoutManager = CarouselLayoutManager.this;
                if (i72 == i11 && i8 == i12 && i9 == i13 && i10 == i14) {
                    return;
                }
                view.post(new RunnableC0883a(carouselLayoutManager, 8));
            }
        };
        this.f12544B = -1;
        this.f12545C = 0;
        setCarouselStrategy(new C1463p());
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Carousel);
            setCarouselAlignment(obtainStyledAttributes.getInt(R.styleable.Carousel_carousel_alignment, 0));
            setOrientation(obtainStyledAttributes.getInt(R.styleable.RecyclerView_android_orientation, 0));
            obtainStyledAttributes.recycle();
        }
    }
}
