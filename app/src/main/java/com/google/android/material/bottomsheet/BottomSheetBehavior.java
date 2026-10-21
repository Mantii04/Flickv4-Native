package com.google.android.material.bottomsheet;

import C3.d;
import G3.j;
import G3.p;
import H3.i;
import M.AbstractC0181p0;
import W.l;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.activity.c;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.media3.exoplayer.source.ProgressiveMediaSource;
import com.google.android.material.R;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import l3.e;
import l3.f;
import l3.g;
import l3.k;
import x3.T;
import y.AbstractC1859c;
import y.C1862f;
import z3.b;
import z3.h;

/* loaded from: classes2.dex */
public class BottomSheetBehavior<V extends View> extends AbstractC1859c implements b {

    /* renamed from: o0, reason: collision with root package name */
    public static final int f12457o0 = R.style.Widget_Design_BottomSheet_Modal;

    /* renamed from: A, reason: collision with root package name */
    public final boolean f12458A;

    /* renamed from: B, reason: collision with root package name */
    public final boolean f12459B;

    /* renamed from: C, reason: collision with root package name */
    public final boolean f12460C;

    /* renamed from: D, reason: collision with root package name */
    public final boolean f12461D;

    /* renamed from: E, reason: collision with root package name */
    public int f12462E;

    /* renamed from: F, reason: collision with root package name */
    public int f12463F;

    /* renamed from: G, reason: collision with root package name */
    public final boolean f12464G;

    /* renamed from: H, reason: collision with root package name */
    public final p f12465H;

    /* renamed from: I, reason: collision with root package name */
    public boolean f12466I;

    /* renamed from: J, reason: collision with root package name */
    public final i f12467J;

    /* renamed from: K, reason: collision with root package name */
    public final ValueAnimator f12468K;

    /* renamed from: L, reason: collision with root package name */
    public int f12469L;

    /* renamed from: M, reason: collision with root package name */
    public int f12470M;

    /* renamed from: N, reason: collision with root package name */
    public int f12471N;

    /* renamed from: O, reason: collision with root package name */
    public float f12472O;

    /* renamed from: P, reason: collision with root package name */
    public int f12473P;

    /* renamed from: Q, reason: collision with root package name */
    public final float f12474Q;

    /* renamed from: R, reason: collision with root package name */
    public boolean f12475R;

    /* renamed from: S, reason: collision with root package name */
    public boolean f12476S;

    /* renamed from: T, reason: collision with root package name */
    public boolean f12477T;

    /* renamed from: U, reason: collision with root package name */
    public int f12478U;

    /* renamed from: V, reason: collision with root package name */
    public l f12479V;

    /* renamed from: W, reason: collision with root package name */
    public boolean f12480W;

    /* renamed from: X, reason: collision with root package name */
    public int f12481X;

    /* renamed from: Y, reason: collision with root package name */
    public boolean f12482Y;

    /* renamed from: Z, reason: collision with root package name */
    public final float f12483Z;

    /* renamed from: a0, reason: collision with root package name */
    public int f12484a0;

    /* renamed from: b, reason: collision with root package name */
    public int f12485b;

    /* renamed from: b0, reason: collision with root package name */
    public int f12486b0;

    /* renamed from: c0, reason: collision with root package name */
    public int f12487c0;

    /* renamed from: d0, reason: collision with root package name */
    public WeakReference f12488d0;

    /* renamed from: e, reason: collision with root package name */
    public boolean f12489e;

    /* renamed from: e0, reason: collision with root package name */
    public WeakReference f12490e0;

    /* renamed from: f, reason: collision with root package name */
    public final float f12491f;

    /* renamed from: f0, reason: collision with root package name */
    public final ArrayList f12492f0;

    /* renamed from: g0, reason: collision with root package name */
    public VelocityTracker f12493g0;

    /* renamed from: h0, reason: collision with root package name */
    public h f12494h0;

    /* renamed from: i0, reason: collision with root package name */
    public int f12495i0;

    /* renamed from: j, reason: collision with root package name */
    public int f12496j;

    /* renamed from: j0, reason: collision with root package name */
    public int f12497j0;

    /* renamed from: k0, reason: collision with root package name */
    public boolean f12498k0;

    /* renamed from: l0, reason: collision with root package name */
    public HashMap f12499l0;

    /* renamed from: m, reason: collision with root package name */
    public int f12500m;

    /* renamed from: m0, reason: collision with root package name */
    public final SparseIntArray f12501m0;

    /* renamed from: n, reason: collision with root package name */
    public boolean f12502n;

    /* renamed from: n0, reason: collision with root package name */
    public final f f12503n0;

    /* renamed from: p, reason: collision with root package name */
    public int f12504p;

    /* renamed from: q, reason: collision with root package name */
    public final int f12505q;

    /* renamed from: r, reason: collision with root package name */
    public final j f12506r;

    /* renamed from: s, reason: collision with root package name */
    public final ColorStateList f12507s;

    /* renamed from: t, reason: collision with root package name */
    public int f12508t;

    /* renamed from: u, reason: collision with root package name */
    public int f12509u;

    /* renamed from: v, reason: collision with root package name */
    public int f12510v;

    /* renamed from: w, reason: collision with root package name */
    public boolean f12511w;

    /* renamed from: x, reason: collision with root package name */
    public final boolean f12512x;

    /* renamed from: y, reason: collision with root package name */
    public final boolean f12513y;

    /* renamed from: z, reason: collision with root package name */
    public final boolean f12514z;

    public BottomSheetBehavior() {
        this.f12485b = 0;
        this.f12489e = true;
        this.f12508t = -1;
        this.f12509u = -1;
        this.f12467J = new i(this);
        this.f12472O = 0.5f;
        this.f12474Q = -1.0f;
        this.f12477T = true;
        this.f12478U = 4;
        this.f12483Z = 0.1f;
        this.f12492f0 = new ArrayList();
        this.f12497j0 = -1;
        this.f12501m0 = new SparseIntArray();
        this.f12503n0 = new f(this);
    }

    public static View e(View view) {
        if (view.getVisibility() != 0) {
            return null;
        }
        if (AbstractC0181p0.isNestedScrollingEnabled(view)) {
            return view;
        }
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View e3 = e(viewGroup.getChildAt(i2));
            if (e3 != null) {
                return e3;
            }
        }
        return null;
    }

    public static int f(int i2, int i7, int i8, int i9) {
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i2, i7, i9);
        if (i8 == -1) {
            return childMeasureSpec;
        }
        int mode = View.MeasureSpec.getMode(childMeasureSpec);
        int size = View.MeasureSpec.getSize(childMeasureSpec);
        if (mode == 1073741824) {
            return View.MeasureSpec.makeMeasureSpec(Math.min(size, i8), 1073741824);
        }
        if (size != 0) {
            i8 = Math.min(size, i8);
        }
        return View.MeasureSpec.makeMeasureSpec(i8, Integer.MIN_VALUE);
    }

    public final void a() {
        int c7 = c();
        if (this.f12489e) {
            this.f12473P = Math.max(this.f12487c0 - c7, this.f12470M);
        } else {
            this.f12473P = this.f12487c0 - c7;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0051  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final float b() {
        /*
            r5 = this;
            G3.j r0 = r5.f12506r
            r1 = 0
            if (r0 == 0) goto L65
            java.lang.ref.WeakReference r0 = r5.f12488d0
            if (r0 == 0) goto L65
            java.lang.Object r0 = r0.get()
            if (r0 == 0) goto L65
            int r0 = android.os.Build.VERSION.SDK_INT
            r2 = 31
            if (r0 < r2) goto L65
            java.lang.ref.WeakReference r0 = r5.f12488d0
            java.lang.Object r0 = r0.get()
            android.view.View r0 = (android.view.View) r0
            boolean r2 = r5.h()
            if (r2 == 0) goto L65
            android.view.WindowInsets r0 = r0.getRootWindowInsets()
            if (r0 == 0) goto L65
            G3.j r2 = r5.f12506r
            float r2 = r2.getTopLeftCornerResolvedSize()
            android.view.RoundedCorner r3 = androidx.media3.exoplayer.analytics.y.n(r0)
            if (r3 == 0) goto L44
            int r3 = l3.AbstractC1227a.a(r3)
            float r3 = (float) r3
            int r4 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r4 <= 0) goto L44
            int r4 = (r2 > r1 ? 1 : (r2 == r1 ? 0 : -1))
            if (r4 <= 0) goto L44
            float r3 = r3 / r2
            goto L45
        L44:
            r3 = r1
        L45:
            G3.j r2 = r5.f12506r
            float r2 = r2.getTopRightCornerResolvedSize()
            android.view.RoundedCorner r0 = androidx.media3.exoplayer.analytics.y.B(r0)
            if (r0 == 0) goto L60
            int r0 = l3.AbstractC1227a.a(r0)
            float r0 = (float) r0
            int r4 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r4 <= 0) goto L60
            int r4 = (r2 > r1 ? 1 : (r2 == r1 ? 0 : -1))
            if (r4 <= 0) goto L60
            float r1 = r0 / r2
        L60:
            float r0 = java.lang.Math.max(r3, r1)
            return r0
        L65:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.b():float");
    }

    public final int c() {
        int i2;
        return this.f12502n ? Math.min(Math.max(this.f12504p, this.f12487c0 - ((this.f12486b0 * 9) / 16)), this.f12484a0) + this.f12462E : (this.f12511w || this.f12512x || (i2 = this.f12510v) <= 0) ? this.f12500m + this.f12462E : Math.max(this.f12500m, i2 + this.f12505q);
    }

    @Override // z3.b
    public void cancelBackProgress() {
        h hVar = this.f12494h0;
        if (hVar == null) {
            return;
        }
        hVar.cancelBackProgress();
    }

    public final void d(int i2) {
        if (((View) this.f12488d0.get()) != null) {
            ArrayList arrayList = this.f12492f0;
            if (arrayList.isEmpty()) {
                return;
            }
            int i7 = this.f12473P;
            if (i2 <= i7 && i7 != getExpandedOffset()) {
                getExpandedOffset();
            }
            if (arrayList.size() <= 0) {
                return;
            }
            arrayList.get(0).getClass();
            throw new ClassCastException();
        }
    }

    public final int g(int i2) {
        if (i2 == 3) {
            return getExpandedOffset();
        }
        if (i2 == 4) {
            return this.f12473P;
        }
        if (i2 == 5) {
            return this.f12487c0;
        }
        if (i2 == 6) {
            return this.f12471N;
        }
        throw new IllegalArgumentException(A.i.f(i2, "Invalid state to get top offset: "));
    }

    public int getExpandedOffset() {
        if (this.f12489e) {
            return this.f12470M;
        }
        return Math.max(this.f12469L, this.f12458A ? 0 : this.f12463F);
    }

    public final boolean h() {
        WeakReference weakReference = this.f12488d0;
        if (weakReference != null && weakReference.get() != null) {
            int[] iArr = new int[2];
            ((View) this.f12488d0.get()).getLocationOnScreen(iArr);
            if (iArr[1] == 0) {
                return true;
            }
        }
        return false;
    }

    @Override // z3.b
    public void handleBackInvoked() {
        h hVar = this.f12494h0;
        if (hVar == null) {
            return;
        }
        c onHandleBackInvoked = hVar.onHandleBackInvoked();
        if (onHandleBackInvoked == null || Build.VERSION.SDK_INT < 34) {
            setState(this.f12475R ? 5 : 4);
        } else if (this.f12475R) {
            this.f12494h0.finishBackProgressNotPersistent(onHandleBackInvoked, new l3.c(this));
        } else {
            this.f12494h0.finishBackProgressPersistent(onHandleBackInvoked, null);
            setState(4);
        }
    }

    public final void i(int i2) {
        if (this.f12478U == i2) {
            return;
        }
        this.f12478U = i2;
        if (i2 != 4 && i2 != 3 && i2 != 6) {
            boolean z6 = this.f12475R;
        }
        WeakReference weakReference = this.f12488d0;
        if (weakReference == null || ((View) weakReference.get()) == null) {
            return;
        }
        if (i2 == 3) {
            n(true);
        } else if (i2 == 6 || i2 == 5 || i2 == 4) {
            n(false);
        }
        m(i2, true);
        ArrayList arrayList = this.f12492f0;
        if (arrayList.size() <= 0) {
            l();
        } else {
            arrayList.get(0).getClass();
            throw new ClassCastException();
        }
    }

    public boolean isGestureInsetBottomIgnored() {
        return this.f12511w;
    }

    public boolean isHideable() {
        return this.f12475R;
    }

    public boolean isHideableWhenDragging() {
        return true;
    }

    public boolean isNestedScrollingCheckEnabled() {
        return true;
    }

    public final boolean j(View view, float f3) {
        if (this.f12476S) {
            return true;
        }
        if (!isHideableWhenDragging() || view.getTop() < this.f12473P) {
            return false;
        }
        return Math.abs(((f3 * this.f12483Z) + ((float) view.getTop())) - ((float) this.f12473P)) / ((float) c()) > 0.5f;
    }

    public final void k(View view, boolean z6, int i2) {
        int g7 = g(i2);
        l lVar = this.f12479V;
        if (lVar == null || (!z6 ? lVar.smoothSlideViewTo(view, view.getLeft(), g7) : lVar.settleCapturedViewAt(view.getLeft(), g7))) {
            i(i2);
            return;
        }
        i(2);
        m(i2, true);
        this.f12467J.a(i2);
    }

    public final void l() {
        View view;
        WeakReference weakReference = this.f12488d0;
        if (weakReference == null || (view = (View) weakReference.get()) == null) {
            return;
        }
        AbstractC0181p0.removeAccessibilityAction(view, 524288);
        AbstractC0181p0.removeAccessibilityAction(view, 262144);
        AbstractC0181p0.removeAccessibilityAction(view, ProgressiveMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES);
        SparseIntArray sparseIntArray = this.f12501m0;
        int i2 = sparseIntArray.get(0, -1);
        if (i2 != -1) {
            AbstractC0181p0.removeAccessibilityAction(view, i2);
            sparseIntArray.delete(0);
        }
        if (!this.f12489e && this.f12478U != 6) {
            sparseIntArray.put(0, AbstractC0181p0.addAccessibilityAction(view, view.getResources().getString(R.string.bottomsheet_action_expand_halfway), new g(this, 6)));
        }
        if (this.f12475R && isHideableWhenDragging() && this.f12478U != 5) {
            AbstractC0181p0.replaceAccessibilityAction(view, N.h.f2128l, null, new g(this, 5));
        }
        int i7 = this.f12478U;
        if (i7 == 3) {
            AbstractC0181p0.replaceAccessibilityAction(view, N.h.f2127k, null, new g(this, this.f12489e ? 4 : 6));
            return;
        }
        if (i7 == 4) {
            AbstractC0181p0.replaceAccessibilityAction(view, N.h.f2126j, null, new g(this, this.f12489e ? 3 : 6));
        } else {
            if (i7 != 6) {
                return;
            }
            AbstractC0181p0.replaceAccessibilityAction(view, N.h.f2127k, null, new g(this, 4));
            AbstractC0181p0.replaceAccessibilityAction(view, N.h.f2126j, null, new g(this, 3));
        }
    }

    public final void m(int i2, boolean z6) {
        j jVar = this.f12506r;
        ValueAnimator valueAnimator = this.f12468K;
        if (i2 == 2) {
            return;
        }
        boolean z7 = this.f12478U == 3 && (this.f12464G || h());
        if (this.f12466I == z7 || jVar == null) {
            return;
        }
        this.f12466I = z7;
        if (!z6 || valueAnimator == null) {
            if (valueAnimator != null && valueAnimator.isRunning()) {
                valueAnimator.cancel();
            }
            jVar.setInterpolation(this.f12466I ? b() : 1.0f);
            return;
        }
        if (valueAnimator.isRunning()) {
            valueAnimator.reverse();
        } else {
            valueAnimator.setFloatValues(jVar.getInterpolation(), z7 ? b() : 1.0f);
            valueAnimator.start();
        }
    }

    public final void n(boolean z6) {
        WeakReference weakReference = this.f12488d0;
        if (weakReference == null) {
            return;
        }
        ViewParent parent = ((View) weakReference.get()).getParent();
        if (parent instanceof CoordinatorLayout) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
            int childCount = coordinatorLayout.getChildCount();
            if (z6) {
                if (this.f12499l0 != null) {
                    return;
                } else {
                    this.f12499l0 = new HashMap(childCount);
                }
            }
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = coordinatorLayout.getChildAt(i2);
                if (childAt != this.f12488d0.get() && z6) {
                    this.f12499l0.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                }
            }
            if (z6) {
                return;
            }
            this.f12499l0 = null;
        }
    }

    public final void o(boolean z6) {
        View view;
        if (this.f12488d0 != null) {
            a();
            if (this.f12478U != 4 || (view = (View) this.f12488d0.get()) == null) {
                return;
            }
            if (z6) {
                setState(4);
            } else {
                view.requestLayout();
            }
        }
    }

    @Override // y.AbstractC1859c
    public void onAttachedToLayoutParams(C1862f c1862f) {
        super.onAttachedToLayoutParams(c1862f);
        this.f12488d0 = null;
        this.f12479V = null;
        this.f12494h0 = null;
    }

    @Override // y.AbstractC1859c
    public void onDetachedFromLayoutParams() {
        super.onDetachedFromLayoutParams();
        this.f12488d0 = null;
        this.f12479V = null;
        this.f12494h0 = null;
    }

    @Override // y.AbstractC1859c
    public boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, V v6, MotionEvent motionEvent) {
        int i2;
        l lVar;
        if (!v6.isShown() || !this.f12477T) {
            this.f12480W = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f12495i0 = -1;
            this.f12497j0 = -1;
            VelocityTracker velocityTracker = this.f12493g0;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.f12493g0 = null;
            }
        }
        if (this.f12493g0 == null) {
            this.f12493g0 = VelocityTracker.obtain();
        }
        this.f12493g0.addMovement(motionEvent);
        if (actionMasked == 0) {
            int x6 = (int) motionEvent.getX();
            this.f12497j0 = (int) motionEvent.getY();
            if (this.f12478U != 2) {
                WeakReference weakReference = this.f12490e0;
                View view = weakReference != null ? (View) weakReference.get() : null;
                if (view != null && coordinatorLayout.isPointInChildBounds(view, x6, this.f12497j0)) {
                    this.f12495i0 = motionEvent.getPointerId(motionEvent.getActionIndex());
                    this.f12498k0 = true;
                }
            }
            this.f12480W = this.f12495i0 == -1 && !coordinatorLayout.isPointInChildBounds(v6, x6, this.f12497j0);
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.f12498k0 = false;
            this.f12495i0 = -1;
            if (this.f12480W) {
                this.f12480W = false;
                return false;
            }
        }
        if (this.f12480W || (lVar = this.f12479V) == null || !lVar.shouldInterceptTouchEvent(motionEvent)) {
            WeakReference weakReference2 = this.f12490e0;
            View view2 = weakReference2 != null ? (View) weakReference2.get() : null;
            if (actionMasked != 2 || view2 == null || this.f12480W || this.f12478U == 1 || coordinatorLayout.isPointInChildBounds(view2, (int) motionEvent.getX(), (int) motionEvent.getY()) || this.f12479V == null || (i2 = this.f12497j0) == -1 || Math.abs(i2 - motionEvent.getY()) <= this.f12479V.getTouchSlop()) {
                return false;
            }
        }
        return true;
    }

    @Override // y.AbstractC1859c
    public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, V v6, int i2) {
        if (AbstractC0181p0.getFitsSystemWindows(coordinatorLayout) && !AbstractC0181p0.getFitsSystemWindows(v6)) {
            v6.setFitsSystemWindows(true);
        }
        if (this.f12488d0 == null) {
            this.f12504p = coordinatorLayout.getResources().getDimensionPixelSize(R.dimen.design_bottom_sheet_peek_height_min);
            boolean z6 = (Build.VERSION.SDK_INT < 29 || isGestureInsetBottomIgnored() || this.f12502n) ? false : true;
            if (this.f12512x || this.f12513y || this.f12514z || this.f12459B || this.f12460C || this.f12461D || z6) {
                T.doOnApplyWindowInsets(v6, new e(this, z6));
            }
            AbstractC0181p0.setWindowInsetsAnimationCallback(v6, new k(v6));
            this.f12488d0 = new WeakReference(v6);
            this.f12494h0 = new h(v6);
            j jVar = this.f12506r;
            if (jVar != null) {
                AbstractC0181p0.setBackground(v6, jVar);
                j jVar2 = this.f12506r;
                float f3 = this.f12474Q;
                if (f3 == -1.0f) {
                    f3 = AbstractC0181p0.getElevation(v6);
                }
                jVar2.setElevation(f3);
            } else {
                ColorStateList colorStateList = this.f12507s;
                if (colorStateList != null) {
                    AbstractC0181p0.setBackgroundTintList(v6, colorStateList);
                }
            }
            l();
            if (AbstractC0181p0.getImportantForAccessibility(v6) == 0) {
                AbstractC0181p0.setImportantForAccessibility(v6, 1);
            }
        }
        if (this.f12479V == null) {
            this.f12479V = l.create(coordinatorLayout, this.f12503n0);
        }
        int top = v6.getTop();
        coordinatorLayout.onLayoutChild(v6, i2);
        this.f12486b0 = coordinatorLayout.getWidth();
        this.f12487c0 = coordinatorLayout.getHeight();
        int height = v6.getHeight();
        this.f12484a0 = height;
        int i7 = this.f12487c0;
        int i8 = i7 - height;
        int i9 = this.f12463F;
        if (i8 < i9) {
            if (this.f12458A) {
                int i10 = this.f12509u;
                if (i10 != -1) {
                    i7 = Math.min(i7, i10);
                }
                this.f12484a0 = i7;
            } else {
                int i11 = i7 - i9;
                int i12 = this.f12509u;
                if (i12 != -1) {
                    i11 = Math.min(i11, i12);
                }
                this.f12484a0 = i11;
            }
        }
        this.f12470M = Math.max(0, this.f12487c0 - this.f12484a0);
        this.f12471N = (int) ((1.0f - this.f12472O) * this.f12487c0);
        a();
        int i13 = this.f12478U;
        if (i13 == 3) {
            AbstractC0181p0.offsetTopAndBottom(v6, getExpandedOffset());
        } else if (i13 == 6) {
            AbstractC0181p0.offsetTopAndBottom(v6, this.f12471N);
        } else if (this.f12475R && i13 == 5) {
            AbstractC0181p0.offsetTopAndBottom(v6, this.f12487c0);
        } else if (i13 == 4) {
            AbstractC0181p0.offsetTopAndBottom(v6, this.f12473P);
        } else if (i13 == 1 || i13 == 2) {
            AbstractC0181p0.offsetTopAndBottom(v6, top - v6.getTop());
        }
        m(this.f12478U, false);
        this.f12490e0 = new WeakReference(e(v6));
        ArrayList arrayList = this.f12492f0;
        if (arrayList.size() <= 0) {
            return true;
        }
        arrayList.get(0).getClass();
        throw new ClassCastException();
    }

    @Override // y.AbstractC1859c
    public boolean onMeasureChild(CoordinatorLayout coordinatorLayout, V v6, int i2, int i7, int i8, int i9) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) v6.getLayoutParams();
        v6.measure(f(i2, coordinatorLayout.getPaddingRight() + coordinatorLayout.getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i7, this.f12508t, marginLayoutParams.width), f(i8, coordinatorLayout.getPaddingBottom() + coordinatorLayout.getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i9, this.f12509u, marginLayoutParams.height));
        return true;
    }

    @Override // y.AbstractC1859c
    public boolean onNestedPreFling(CoordinatorLayout coordinatorLayout, V v6, View view, float f3, float f7) {
        WeakReference weakReference;
        return isNestedScrollingCheckEnabled() && (weakReference = this.f12490e0) != null && view == weakReference.get() && (this.f12478U != 3 || super.onNestedPreFling(coordinatorLayout, v6, view, f3, f7));
    }

    @Override // y.AbstractC1859c
    public void onNestedPreScroll(CoordinatorLayout coordinatorLayout, V v6, View view, int i2, int i7, int[] iArr, int i8) {
        if (i8 == 1) {
            return;
        }
        WeakReference weakReference = this.f12490e0;
        View view2 = weakReference != null ? (View) weakReference.get() : null;
        if (!isNestedScrollingCheckEnabled() || view == view2) {
            int top = v6.getTop();
            int i9 = top - i7;
            if (i7 > 0) {
                if (i9 < getExpandedOffset()) {
                    int expandedOffset = top - getExpandedOffset();
                    iArr[1] = expandedOffset;
                    AbstractC0181p0.offsetTopAndBottom(v6, -expandedOffset);
                    i(3);
                } else {
                    if (!this.f12477T) {
                        return;
                    }
                    iArr[1] = i7;
                    AbstractC0181p0.offsetTopAndBottom(v6, -i7);
                    i(1);
                }
            } else if (i7 < 0 && !view.canScrollVertically(-1)) {
                if (i9 > this.f12473P && (!isHideable() || !isHideableWhenDragging())) {
                    int i10 = top - this.f12473P;
                    iArr[1] = i10;
                    AbstractC0181p0.offsetTopAndBottom(v6, -i10);
                    i(4);
                } else {
                    if (!this.f12477T) {
                        return;
                    }
                    iArr[1] = i7;
                    AbstractC0181p0.offsetTopAndBottom(v6, -i7);
                    i(1);
                }
            }
            d(v6.getTop());
            this.f12481X = i7;
            this.f12482Y = true;
        }
    }

    @Override // y.AbstractC1859c
    public void onNestedScroll(CoordinatorLayout coordinatorLayout, V v6, View view, int i2, int i7, int i8, int i9, int i10, int[] iArr) {
    }

    @Override // y.AbstractC1859c
    public void onRestoreInstanceState(CoordinatorLayout coordinatorLayout, V v6, Parcelable parcelable) {
        l3.i iVar = (l3.i) parcelable;
        super.onRestoreInstanceState(coordinatorLayout, v6, iVar.getSuperState());
        int i2 = this.f12485b;
        if (i2 != 0) {
            if (i2 == -1 || (i2 & 1) == 1) {
                this.f12500m = iVar.f18141j;
            }
            if (i2 == -1 || (i2 & 2) == 2) {
                this.f12489e = iVar.f18142m;
            }
            if (i2 == -1 || (i2 & 4) == 4) {
                this.f12475R = iVar.f18143n;
            }
            if (i2 == -1 || (i2 & 8) == 8) {
                this.f12476S = iVar.f18144p;
            }
        }
        int i7 = iVar.f18140f;
        if (i7 == 1 || i7 == 2) {
            this.f12478U = 4;
        } else {
            this.f12478U = i7;
        }
    }

    @Override // y.AbstractC1859c
    public Parcelable onSaveInstanceState(CoordinatorLayout coordinatorLayout, V v6) {
        return new l3.i(super.onSaveInstanceState(coordinatorLayout, v6), (BottomSheetBehavior<?>) this);
    }

    @Override // y.AbstractC1859c
    public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, V v6, View view, View view2, int i2, int i7) {
        this.f12481X = 0;
        this.f12482Y = false;
        return (i2 & 2) != 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0035, code lost:
    
        if (r4.getTop() <= r2.f12471N) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00ba, code lost:
    
        r0 = 6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0076, code lost:
    
        if (java.lang.Math.abs(r3 - r2.f12470M) < java.lang.Math.abs(r3 - r2.f12473P)) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x008c, code lost:
    
        if (shouldSkipHalfExpandedStateWhenDragging() != false) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x009c, code lost:
    
        if (java.lang.Math.abs(r3 - r1) < java.lang.Math.abs(r3 - r2.f12473P)) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00b8, code lost:
    
        if (java.lang.Math.abs(r3 - r2.f12471N) < java.lang.Math.abs(r3 - r2.f12473P)) goto L55;
     */
    @Override // y.AbstractC1859c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onStopNestedScroll(androidx.coordinatorlayout.widget.CoordinatorLayout r3, V r4, android.view.View r5, int r6) {
        /*
            r2 = this;
            int r3 = r4.getTop()
            int r6 = r2.getExpandedOffset()
            r0 = 3
            if (r3 != r6) goto Lf
            r2.i(r0)
            return
        Lf:
            boolean r3 = r2.isNestedScrollingCheckEnabled()
            if (r3 == 0) goto L24
            java.lang.ref.WeakReference r3 = r2.f12490e0
            if (r3 == 0) goto L23
            java.lang.Object r3 = r3.get()
            if (r5 != r3) goto L23
            boolean r3 = r2.f12482Y
            if (r3 != 0) goto L24
        L23:
            return
        L24:
            int r3 = r2.f12481X
            r5 = 6
            if (r3 <= 0) goto L39
            boolean r3 = r2.f12489e
            if (r3 == 0) goto L2f
            goto Lbb
        L2f:
            int r3 = r4.getTop()
            int r6 = r2.f12471N
            if (r3 <= r6) goto Lbb
            goto Lba
        L39:
            boolean r3 = r2.f12475R
            if (r3 == 0) goto L5a
            android.view.VelocityTracker r3 = r2.f12493g0
            if (r3 != 0) goto L43
            r3 = 0
            goto L52
        L43:
            r6 = 1000(0x3e8, float:1.401E-42)
            float r1 = r2.f12491f
            r3.computeCurrentVelocity(r6, r1)
            android.view.VelocityTracker r3 = r2.f12493g0
            int r6 = r2.f12495i0
            float r3 = r3.getYVelocity(r6)
        L52:
            boolean r3 = r2.j(r4, r3)
            if (r3 == 0) goto L5a
            r0 = 5
            goto Lbb
        L5a:
            int r3 = r2.f12481X
            r6 = 4
            if (r3 != 0) goto L9f
            int r3 = r4.getTop()
            boolean r1 = r2.f12489e
            if (r1 == 0) goto L79
            int r5 = r2.f12470M
            int r5 = r3 - r5
            int r5 = java.lang.Math.abs(r5)
            int r1 = r2.f12473P
            int r3 = r3 - r1
            int r3 = java.lang.Math.abs(r3)
            if (r5 >= r3) goto La3
            goto Lbb
        L79:
            int r1 = r2.f12471N
            if (r3 >= r1) goto L8f
            int r1 = r2.f12473P
            int r1 = r3 - r1
            int r1 = java.lang.Math.abs(r1)
            if (r3 >= r1) goto L88
            goto Lbb
        L88:
            boolean r3 = r2.shouldSkipHalfExpandedStateWhenDragging()
            if (r3 == 0) goto Lba
            goto La3
        L8f:
            int r0 = r3 - r1
            int r0 = java.lang.Math.abs(r0)
            int r1 = r2.f12473P
            int r3 = r3 - r1
            int r3 = java.lang.Math.abs(r3)
            if (r0 >= r3) goto La3
            goto Lba
        L9f:
            boolean r3 = r2.f12489e
            if (r3 == 0) goto La5
        La3:
            r0 = r6
            goto Lbb
        La5:
            int r3 = r4.getTop()
            int r0 = r2.f12471N
            int r0 = r3 - r0
            int r0 = java.lang.Math.abs(r0)
            int r1 = r2.f12473P
            int r3 = r3 - r1
            int r3 = java.lang.Math.abs(r3)
            if (r0 >= r3) goto La3
        Lba:
            r0 = r5
        Lbb:
            r3 = 0
            r2.k(r4, r3, r0)
            r2.f12482Y = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.onStopNestedScroll(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, android.view.View, int):void");
    }

    @Override // y.AbstractC1859c
    public boolean onTouchEvent(CoordinatorLayout coordinatorLayout, V v6, MotionEvent motionEvent) {
        if (!v6.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        int i2 = this.f12478U;
        if (i2 == 1 && actionMasked == 0) {
            return true;
        }
        l lVar = this.f12479V;
        if (lVar != null && (this.f12477T || i2 == 1)) {
            lVar.processTouchEvent(motionEvent);
        }
        if (actionMasked == 0) {
            this.f12495i0 = -1;
            this.f12497j0 = -1;
            VelocityTracker velocityTracker = this.f12493g0;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.f12493g0 = null;
            }
        }
        if (this.f12493g0 == null) {
            this.f12493g0 = VelocityTracker.obtain();
        }
        this.f12493g0.addMovement(motionEvent);
        if (this.f12479V != null && ((this.f12477T || this.f12478U == 1) && actionMasked == 2 && !this.f12480W && Math.abs(this.f12497j0 - motionEvent.getY()) > this.f12479V.getTouchSlop())) {
            this.f12479V.captureChildView(v6, motionEvent.getPointerId(motionEvent.getActionIndex()));
        }
        return !this.f12480W;
    }

    public void setDraggable(boolean z6) {
        this.f12477T = z6;
    }

    public void setExpandedOffset(int i2) {
        if (i2 < 0) {
            throw new IllegalArgumentException("offset must be greater than or equal to 0");
        }
        this.f12469L = i2;
        m(this.f12478U, true);
    }

    public void setFitToContents(boolean z6) {
        if (this.f12489e == z6) {
            return;
        }
        this.f12489e = z6;
        if (this.f12488d0 != null) {
            a();
        }
        i((this.f12489e && this.f12478U == 6) ? 3 : this.f12478U);
        m(this.f12478U, true);
        l();
    }

    public void setGestureInsetBottomIgnored(boolean z6) {
        this.f12511w = z6;
    }

    public void setHalfExpandedRatio(float f3) {
        if (f3 <= 0.0f || f3 >= 1.0f) {
            throw new IllegalArgumentException("ratio must be a float value between 0 and 1");
        }
        this.f12472O = f3;
        if (this.f12488d0 != null) {
            this.f12471N = (int) ((1.0f - f3) * this.f12487c0);
        }
    }

    public void setHideable(boolean z6) {
        if (this.f12475R != z6) {
            this.f12475R = z6;
            if (!z6 && this.f12478U == 5) {
                setState(4);
            }
            l();
        }
    }

    public void setMaxHeight(int i2) {
        this.f12509u = i2;
    }

    public void setMaxWidth(int i2) {
        this.f12508t = i2;
    }

    public void setPeekHeight(int i2) {
        setPeekHeight(i2, false);
    }

    public void setSaveFlags(int i2) {
        this.f12485b = i2;
    }

    public void setSignificantVelocityThreshold(int i2) {
        this.f12496j = i2;
    }

    public void setSkipCollapsed(boolean z6) {
        this.f12476S = z6;
    }

    public void setState(int i2) {
        if (i2 == 1 || i2 == 2) {
            throw new IllegalArgumentException(A.i.o(new StringBuilder("STATE_"), i2 == 1 ? "DRAGGING" : "SETTLING", " should not be set externally."));
        }
        if (!this.f12475R && i2 == 5) {
            Log.w("BottomSheetBehavior", "Cannot set state: " + i2);
            return;
        }
        int i7 = (i2 == 6 && this.f12489e && g(i2) <= this.f12470M) ? 3 : i2;
        WeakReference weakReference = this.f12488d0;
        if (weakReference == null || weakReference.get() == null) {
            i(i2);
            return;
        }
        View view = (View) this.f12488d0.get();
        l3.b bVar = new l3.b(this, view, i7);
        ViewParent parent = view.getParent();
        if (parent != null && parent.isLayoutRequested() && AbstractC0181p0.isAttachedToWindow(view)) {
            view.post(bVar);
        } else {
            bVar.run();
        }
    }

    public boolean shouldExpandOnUpwardDrag(long j7, float f3) {
        return false;
    }

    public boolean shouldSkipHalfExpandedStateWhenDragging() {
        return false;
    }

    public boolean shouldSkipSmoothAnimation() {
        return true;
    }

    @Override // z3.b
    public void startBackProgress(c cVar) {
        h hVar = this.f12494h0;
        if (hVar == null) {
            return;
        }
        hVar.startBackProgress(cVar);
    }

    @Override // z3.b
    public void updateBackProgress(c cVar) {
        h hVar = this.f12494h0;
        if (hVar == null) {
            return;
        }
        hVar.updateBackProgress(cVar);
    }

    public final void setPeekHeight(int i2, boolean z6) {
        if (i2 == -1) {
            if (this.f12502n) {
                return;
            } else {
                this.f12502n = true;
            }
        } else {
            if (!this.f12502n && this.f12500m == i2) {
                return;
            }
            this.f12502n = false;
            this.f12500m = Math.max(0, i2);
        }
        o(z6);
    }

    public BottomSheetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        int i2;
        this.f12485b = 0;
        this.f12489e = true;
        this.f12508t = -1;
        this.f12509u = -1;
        this.f12467J = new i(this);
        this.f12472O = 0.5f;
        this.f12474Q = -1.0f;
        this.f12477T = true;
        this.f12478U = 4;
        this.f12483Z = 0.1f;
        this.f12492f0 = new ArrayList();
        this.f12497j0 = -1;
        this.f12501m0 = new SparseIntArray();
        this.f12503n0 = new f(this);
        this.f12505q = context.getResources().getDimensionPixelSize(R.dimen.mtrl_min_touch_target_size);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.BottomSheetBehavior_Layout);
        if (obtainStyledAttributes.hasValue(R.styleable.BottomSheetBehavior_Layout_backgroundTint)) {
            this.f12507s = d.getColorStateList(context, obtainStyledAttributes, R.styleable.BottomSheetBehavior_Layout_backgroundTint);
        }
        if (obtainStyledAttributes.hasValue(R.styleable.BottomSheetBehavior_Layout_shapeAppearance)) {
            this.f12465H = p.builder(context, attributeSet, R.attr.bottomSheetStyle, f12457o0).build();
        }
        p pVar = this.f12465H;
        if (pVar != null) {
            j jVar = new j(pVar);
            this.f12506r = jVar;
            jVar.initializeElevationOverlay(context);
            ColorStateList colorStateList = this.f12507s;
            if (colorStateList != null) {
                this.f12506r.setFillColor(colorStateList);
            } else {
                TypedValue typedValue = new TypedValue();
                context.getTheme().resolveAttribute(android.R.attr.colorBackground, typedValue, true);
                this.f12506r.setTint(typedValue.data);
            }
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(b(), 1.0f);
        this.f12468K = ofFloat;
        ofFloat.setDuration(500L);
        this.f12468K.addUpdateListener(new l3.d(this));
        this.f12474Q = obtainStyledAttributes.getDimension(R.styleable.BottomSheetBehavior_Layout_android_elevation, -1.0f);
        if (obtainStyledAttributes.hasValue(R.styleable.BottomSheetBehavior_Layout_android_maxWidth)) {
            setMaxWidth(obtainStyledAttributes.getDimensionPixelSize(R.styleable.BottomSheetBehavior_Layout_android_maxWidth, -1));
        }
        if (obtainStyledAttributes.hasValue(R.styleable.BottomSheetBehavior_Layout_android_maxHeight)) {
            setMaxHeight(obtainStyledAttributes.getDimensionPixelSize(R.styleable.BottomSheetBehavior_Layout_android_maxHeight, -1));
        }
        TypedValue peekValue = obtainStyledAttributes.peekValue(R.styleable.BottomSheetBehavior_Layout_behavior_peekHeight);
        if (peekValue != null && (i2 = peekValue.data) == -1) {
            setPeekHeight(i2);
        } else {
            setPeekHeight(obtainStyledAttributes.getDimensionPixelSize(R.styleable.BottomSheetBehavior_Layout_behavior_peekHeight, -1));
        }
        setHideable(obtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_behavior_hideable, false));
        setGestureInsetBottomIgnored(obtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_gestureInsetBottomIgnored, false));
        setFitToContents(obtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_behavior_fitToContents, true));
        setSkipCollapsed(obtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_behavior_skipCollapsed, false));
        setDraggable(obtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_behavior_draggable, true));
        setSaveFlags(obtainStyledAttributes.getInt(R.styleable.BottomSheetBehavior_Layout_behavior_saveFlags, 0));
        setHalfExpandedRatio(obtainStyledAttributes.getFloat(R.styleable.BottomSheetBehavior_Layout_behavior_halfExpandedRatio, 0.5f));
        TypedValue peekValue2 = obtainStyledAttributes.peekValue(R.styleable.BottomSheetBehavior_Layout_behavior_expandedOffset);
        if (peekValue2 != null && peekValue2.type == 16) {
            setExpandedOffset(peekValue2.data);
        } else {
            setExpandedOffset(obtainStyledAttributes.getDimensionPixelOffset(R.styleable.BottomSheetBehavior_Layout_behavior_expandedOffset, 0));
        }
        setSignificantVelocityThreshold(obtainStyledAttributes.getInt(R.styleable.BottomSheetBehavior_Layout_behavior_significantVelocityThreshold, 500));
        this.f12512x = obtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_paddingBottomSystemWindowInsets, false);
        this.f12513y = obtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_paddingLeftSystemWindowInsets, false);
        this.f12514z = obtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_paddingRightSystemWindowInsets, false);
        this.f12458A = obtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_paddingTopSystemWindowInsets, true);
        this.f12459B = obtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_marginLeftSystemWindowInsets, false);
        this.f12460C = obtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_marginRightSystemWindowInsets, false);
        this.f12461D = obtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_marginTopSystemWindowInsets, false);
        this.f12464G = obtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_shouldRemoveExpandedCorners, true);
        obtainStyledAttributes.recycle();
        this.f12491f = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }
}
