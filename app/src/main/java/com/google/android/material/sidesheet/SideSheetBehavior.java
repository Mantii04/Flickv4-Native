package com.google.android.material.sidesheet;

import C.q;
import C3.d;
import G3.n;
import G3.p;
import H3.a;
import H3.e;
import H3.f;
import H3.i;
import M.AbstractC0181p0;
import M.AbstractC0185s;
import N.h;
import V3.s;
import W.l;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.media3.exoplayer.source.ProgressiveMediaSource;
import b.c;
import com.google.android.material.R;
import com.google.android.material.sidesheet.SideSheetBehavior;
import g3.AbstractC0951a;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.LinkedHashSet;
import y.AbstractC1859c;
import y.C1862f;
import z3.b;
import z3.j;

/* loaded from: classes2.dex */
public class SideSheetBehavior<V extends View> extends AbstractC1859c implements b {

    /* renamed from: G, reason: collision with root package name */
    public static final int f12782G = R.string.side_sheet_accessibility_pane_title;

    /* renamed from: H, reason: collision with root package name */
    public static final int f12783H = R.style.Widget_Material3_SideSheet;

    /* renamed from: A, reason: collision with root package name */
    public int f12784A;

    /* renamed from: B, reason: collision with root package name */
    public VelocityTracker f12785B;

    /* renamed from: C, reason: collision with root package name */
    public j f12786C;

    /* renamed from: D, reason: collision with root package name */
    public int f12787D;

    /* renamed from: E, reason: collision with root package name */
    public final LinkedHashSet f12788E;

    /* renamed from: F, reason: collision with root package name */
    public final e f12789F;

    /* renamed from: b, reason: collision with root package name */
    public s f12790b;

    /* renamed from: e, reason: collision with root package name */
    public final G3.j f12791e;

    /* renamed from: f, reason: collision with root package name */
    public final ColorStateList f12792f;

    /* renamed from: j, reason: collision with root package name */
    public final p f12793j;

    /* renamed from: m, reason: collision with root package name */
    public final i f12794m;

    /* renamed from: n, reason: collision with root package name */
    public final float f12795n;

    /* renamed from: p, reason: collision with root package name */
    public boolean f12796p;

    /* renamed from: q, reason: collision with root package name */
    public int f12797q;

    /* renamed from: r, reason: collision with root package name */
    public l f12798r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f12799s;

    /* renamed from: t, reason: collision with root package name */
    public final float f12800t;

    /* renamed from: u, reason: collision with root package name */
    public int f12801u;

    /* renamed from: v, reason: collision with root package name */
    public int f12802v;

    /* renamed from: w, reason: collision with root package name */
    public int f12803w;

    /* renamed from: x, reason: collision with root package name */
    public int f12804x;

    /* renamed from: y, reason: collision with root package name */
    public WeakReference f12805y;

    /* renamed from: z, reason: collision with root package name */
    public WeakReference f12806z;

    public SideSheetBehavior() {
        this.f12794m = new i(this);
        this.f12796p = true;
        this.f12797q = 5;
        this.f12800t = 0.1f;
        this.f12784A = -1;
        this.f12788E = new LinkedHashSet();
        this.f12789F = new e(this);
    }

    public final void a(int i2) {
        View view;
        if (this.f12797q == i2) {
            return;
        }
        this.f12797q = i2;
        WeakReference weakReference = this.f12805y;
        if (weakReference == null || (view = (View) weakReference.get()) == null) {
            return;
        }
        int i7 = this.f12797q == 5 ? 4 : 0;
        if (view.getVisibility() != i7) {
            view.setVisibility(i7);
        }
        Iterator it = this.f12788E.iterator();
        if (it.hasNext()) {
            throw c.g(it);
        }
        d();
    }

    public final boolean b() {
        if (this.f12798r != null) {
            return this.f12796p || this.f12797q == 1;
        }
        return false;
    }

    public final void c(View view, boolean z6, int i2) {
        int expandedOffset;
        if (i2 == 3) {
            expandedOffset = getExpandedOffset();
        } else {
            if (i2 != 5) {
                throw new IllegalArgumentException(A.i.f(i2, "Invalid state to get outer edge offset: "));
            }
            expandedOffset = this.f12790b.g();
        }
        l lVar = this.f12798r;
        if (lVar == null || (!z6 ? lVar.smoothSlideViewTo(view, expandedOffset, view.getTop()) : lVar.settleCapturedViewAt(expandedOffset, view.getTop()))) {
            a(i2);
        } else {
            a(2);
            this.f12794m.a(i2);
        }
    }

    @Override // z3.b
    public void cancelBackProgress() {
        j jVar = this.f12786C;
        if (jVar == null) {
            return;
        }
        jVar.cancelBackProgress();
    }

    public final void d() {
        View view;
        WeakReference weakReference = this.f12805y;
        if (weakReference == null || (view = (View) weakReference.get()) == null) {
            return;
        }
        AbstractC0181p0.removeAccessibilityAction(view, 262144);
        AbstractC0181p0.removeAccessibilityAction(view, ProgressiveMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES);
        int i2 = 5;
        if (this.f12797q != 5) {
            AbstractC0181p0.replaceAccessibilityAction(view, h.f2128l, null, new H3.c(this, i2, 0));
        }
        int i7 = 3;
        if (this.f12797q != 3) {
            AbstractC0181p0.replaceAccessibilityAction(view, h.f2126j, null, new H3.c(this, i7, 0));
        }
    }

    public View getCoplanarSiblingView() {
        WeakReference weakReference = this.f12806z;
        if (weakReference != null) {
            return (View) weakReference.get();
        }
        return null;
    }

    public int getExpandedOffset() {
        return this.f12790b.f();
    }

    public float getHideFriction() {
        return this.f12800t;
    }

    @Override // z3.b
    public void handleBackInvoked() {
        final ViewGroup.MarginLayoutParams marginLayoutParams;
        j jVar = this.f12786C;
        if (jVar == null) {
            return;
        }
        androidx.activity.c onHandleBackInvoked = jVar.onHandleBackInvoked();
        int i2 = 5;
        if (onHandleBackInvoked == null || Build.VERSION.SDK_INT < 34) {
            setState(5);
            return;
        }
        j jVar2 = this.f12786C;
        s sVar = this.f12790b;
        if (sVar != null && sVar.k() != 0) {
            i2 = 3;
        }
        f fVar = new f(this);
        final View coplanarSiblingView = getCoplanarSiblingView();
        ValueAnimator.AnimatorUpdateListener animatorUpdateListener = null;
        if (coplanarSiblingView != null && (marginLayoutParams = (ViewGroup.MarginLayoutParams) coplanarSiblingView.getLayoutParams()) != null) {
            final int e3 = this.f12790b.e(marginLayoutParams);
            animatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: H3.d
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    SideSheetBehavior.this.f12790b.u(marginLayoutParams, AbstractC0951a.lerp(e3, 0, valueAnimator.getAnimatedFraction()));
                    coplanarSiblingView.requestLayout();
                }
            };
        }
        jVar2.finishBackProgress(onHandleBackInvoked, i2, fVar, animatorUpdateListener);
    }

    @Override // y.AbstractC1859c
    public void onAttachedToLayoutParams(C1862f c1862f) {
        super.onAttachedToLayoutParams(c1862f);
        this.f12805y = null;
        this.f12798r = null;
        this.f12786C = null;
    }

    @Override // y.AbstractC1859c
    public void onDetachedFromLayoutParams() {
        super.onDetachedFromLayoutParams();
        this.f12805y = null;
        this.f12798r = null;
        this.f12786C = null;
    }

    @Override // y.AbstractC1859c
    public boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, V v6, MotionEvent motionEvent) {
        l lVar;
        VelocityTracker velocityTracker;
        if ((!v6.isShown() && AbstractC0181p0.getAccessibilityPaneTitle(v6) == null) || !this.f12796p) {
            this.f12799s = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0 && (velocityTracker = this.f12785B) != null) {
            velocityTracker.recycle();
            this.f12785B = null;
        }
        if (this.f12785B == null) {
            this.f12785B = VelocityTracker.obtain();
        }
        this.f12785B.addMovement(motionEvent);
        if (actionMasked == 0) {
            this.f12787D = (int) motionEvent.getX();
        } else if ((actionMasked == 1 || actionMasked == 3) && this.f12799s) {
            this.f12799s = false;
            return false;
        }
        return (this.f12799s || (lVar = this.f12798r) == null || !lVar.shouldInterceptTouchEvent(motionEvent)) ? false : true;
    }

    @Override // y.AbstractC1859c
    public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, V v6, int i2) {
        View view;
        View view2;
        int i7;
        View findViewById;
        if (AbstractC0181p0.getFitsSystemWindows(coordinatorLayout) && !AbstractC0181p0.getFitsSystemWindows(v6)) {
            v6.setFitsSystemWindows(true);
        }
        int i8 = 0;
        if (this.f12805y == null) {
            this.f12805y = new WeakReference(v6);
            this.f12786C = new j(v6);
            G3.j jVar = this.f12791e;
            if (jVar != null) {
                AbstractC0181p0.setBackground(v6, jVar);
                G3.j jVar2 = this.f12791e;
                float f3 = this.f12795n;
                if (f3 == -1.0f) {
                    f3 = AbstractC0181p0.getElevation(v6);
                }
                jVar2.setElevation(f3);
            } else {
                ColorStateList colorStateList = this.f12792f;
                if (colorStateList != null) {
                    AbstractC0181p0.setBackgroundTintList(v6, colorStateList);
                }
            }
            int i9 = this.f12797q == 5 ? 4 : 0;
            if (v6.getVisibility() != i9) {
                v6.setVisibility(i9);
            }
            d();
            if (AbstractC0181p0.getImportantForAccessibility(v6) == 0) {
                AbstractC0181p0.setImportantForAccessibility(v6, 1);
            }
            if (AbstractC0181p0.getAccessibilityPaneTitle(v6) == null) {
                AbstractC0181p0.setAccessibilityPaneTitle(v6, v6.getResources().getString(f12782G));
            }
        }
        int i10 = AbstractC0185s.getAbsoluteGravity(((C1862f) v6.getLayoutParams()).f20938c, i2) == 3 ? 1 : 0;
        s sVar = this.f12790b;
        if (sVar == null || sVar.k() != i10) {
            p pVar = this.f12793j;
            C1862f c1862f = null;
            if (i10 == 0) {
                this.f12790b = new H3.b(this);
                if (pVar != null) {
                    WeakReference weakReference = this.f12805y;
                    if (weakReference != null && (view2 = (View) weakReference.get()) != null && (view2.getLayoutParams() instanceof C1862f)) {
                        c1862f = (C1862f) view2.getLayoutParams();
                    }
                    if (c1862f == null || ((ViewGroup.MarginLayoutParams) c1862f).rightMargin <= 0) {
                        n builder = pVar.toBuilder();
                        builder.setTopRightCornerSize(0.0f).setBottomRightCornerSize(0.0f);
                        p build = builder.build();
                        G3.j jVar3 = this.f12791e;
                        if (jVar3 != null) {
                            jVar3.setShapeAppearanceModel(build);
                        }
                    }
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalArgumentException(A.i.g(i10, "Invalid sheet edge position value: ", ". Must be 0 or 1."));
                }
                this.f12790b = new a(this);
                if (pVar != null) {
                    WeakReference weakReference2 = this.f12805y;
                    if (weakReference2 != null && (view = (View) weakReference2.get()) != null && (view.getLayoutParams() instanceof C1862f)) {
                        c1862f = (C1862f) view.getLayoutParams();
                    }
                    if (c1862f == null || ((ViewGroup.MarginLayoutParams) c1862f).leftMargin <= 0) {
                        n builder2 = pVar.toBuilder();
                        builder2.setTopLeftCornerSize(0.0f).setBottomLeftCornerSize(0.0f);
                        p build2 = builder2.build();
                        G3.j jVar4 = this.f12791e;
                        if (jVar4 != null) {
                            jVar4.setShapeAppearanceModel(build2);
                        }
                    }
                }
            }
        }
        if (this.f12798r == null) {
            this.f12798r = l.create(coordinatorLayout, this.f12789F);
        }
        int j7 = this.f12790b.j(v6);
        coordinatorLayout.onLayoutChild(v6, i2);
        this.f12802v = coordinatorLayout.getWidth();
        this.f12803w = this.f12790b.getParentInnerEdge(coordinatorLayout);
        this.f12801u = v6.getWidth();
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) v6.getLayoutParams();
        this.f12804x = marginLayoutParams != null ? this.f12790b.a(marginLayoutParams) : 0;
        int i11 = this.f12797q;
        if (i11 == 1 || i11 == 2) {
            i8 = j7 - this.f12790b.j(v6);
        } else if (i11 != 3) {
            if (i11 != 5) {
                throw new IllegalStateException("Unexpected value: " + this.f12797q);
            }
            i8 = this.f12790b.g();
        }
        AbstractC0181p0.offsetLeftAndRight(v6, i8);
        if (this.f12806z == null && (i7 = this.f12784A) != -1 && (findViewById = coordinatorLayout.findViewById(i7)) != null) {
            this.f12806z = new WeakReference(findViewById);
        }
        Iterator it = this.f12788E.iterator();
        while (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
        }
        return true;
    }

    @Override // y.AbstractC1859c
    public boolean onMeasureChild(CoordinatorLayout coordinatorLayout, V v6, int i2, int i7, int i8, int i9) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) v6.getLayoutParams();
        v6.measure(ViewGroup.getChildMeasureSpec(i2, coordinatorLayout.getPaddingRight() + coordinatorLayout.getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i7, marginLayoutParams.width), ViewGroup.getChildMeasureSpec(i8, coordinatorLayout.getPaddingBottom() + coordinatorLayout.getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i9, marginLayoutParams.height));
        return true;
    }

    @Override // y.AbstractC1859c
    public void onRestoreInstanceState(CoordinatorLayout coordinatorLayout, V v6, Parcelable parcelable) {
        H3.h hVar = (H3.h) parcelable;
        if (hVar.getSuperState() != null) {
            super.onRestoreInstanceState(coordinatorLayout, v6, hVar.getSuperState());
        }
        int i2 = hVar.f1210f;
        if (i2 == 1 || i2 == 2) {
            i2 = 5;
        }
        this.f12797q = i2;
    }

    @Override // y.AbstractC1859c
    public Parcelable onSaveInstanceState(CoordinatorLayout coordinatorLayout, V v6) {
        return new H3.h(super.onSaveInstanceState(coordinatorLayout, v6), (SideSheetBehavior<?>) this);
    }

    @Override // y.AbstractC1859c
    public boolean onTouchEvent(CoordinatorLayout coordinatorLayout, V v6, MotionEvent motionEvent) {
        VelocityTracker velocityTracker;
        if (!v6.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (this.f12797q == 1 && actionMasked == 0) {
            return true;
        }
        if (b()) {
            this.f12798r.processTouchEvent(motionEvent);
        }
        if (actionMasked == 0 && (velocityTracker = this.f12785B) != null) {
            velocityTracker.recycle();
            this.f12785B = null;
        }
        if (this.f12785B == null) {
            this.f12785B = VelocityTracker.obtain();
        }
        this.f12785B.addMovement(motionEvent);
        if (b() && actionMasked == 2 && !this.f12799s && b() && Math.abs(this.f12787D - motionEvent.getX()) > this.f12798r.getTouchSlop()) {
            this.f12798r.captureChildView(v6, motionEvent.getPointerId(motionEvent.getActionIndex()));
        }
        return !this.f12799s;
    }

    public void setCoplanarSiblingViewId(int i2) {
        this.f12784A = i2;
        WeakReference weakReference = this.f12806z;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.f12806z = null;
        WeakReference weakReference2 = this.f12805y;
        if (weakReference2 != null) {
            View view = (View) weakReference2.get();
            if (i2 == -1 || !AbstractC0181p0.isLaidOut(view)) {
                return;
            }
            view.requestLayout();
        }
    }

    public void setDraggable(boolean z6) {
        this.f12796p = z6;
    }

    public void setState(int i2) {
        if (i2 == 1 || i2 == 2) {
            throw new IllegalArgumentException(A.i.o(new StringBuilder("STATE_"), i2 == 1 ? "DRAGGING" : "SETTLING", " should not be set externally."));
        }
        WeakReference weakReference = this.f12805y;
        if (weakReference == null || weakReference.get() == null) {
            a(i2);
            return;
        }
        View view = (View) this.f12805y.get();
        q qVar = new q(this, i2, 2);
        ViewParent parent = view.getParent();
        if (parent != null && parent.isLayoutRequested() && AbstractC0181p0.isAttachedToWindow(view)) {
            view.post(qVar);
        } else {
            qVar.run();
        }
    }

    public boolean shouldSkipSmoothAnimation() {
        return true;
    }

    @Override // z3.b
    public void startBackProgress(androidx.activity.c cVar) {
        j jVar = this.f12786C;
        if (jVar == null) {
            return;
        }
        jVar.startBackProgress(cVar);
    }

    @Override // z3.b
    public void updateBackProgress(androidx.activity.c cVar) {
        ViewGroup.MarginLayoutParams marginLayoutParams;
        j jVar = this.f12786C;
        if (jVar == null) {
            return;
        }
        s sVar = this.f12790b;
        jVar.updateBackProgress(cVar, (sVar == null || sVar.k() == 0) ? 5 : 3);
        WeakReference weakReference = this.f12805y;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        View view = (View) this.f12805y.get();
        View coplanarSiblingView = getCoplanarSiblingView();
        if (coplanarSiblingView == null || (marginLayoutParams = (ViewGroup.MarginLayoutParams) coplanarSiblingView.getLayoutParams()) == null) {
            return;
        }
        this.f12790b.u(marginLayoutParams, (int) ((view.getScaleX() * this.f12801u) + this.f12804x));
        coplanarSiblingView.requestLayout();
    }

    public SideSheetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f12794m = new i(this);
        this.f12796p = true;
        this.f12797q = 5;
        this.f12800t = 0.1f;
        this.f12784A = -1;
        this.f12788E = new LinkedHashSet();
        this.f12789F = new e(this);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SideSheetBehavior_Layout);
        if (obtainStyledAttributes.hasValue(R.styleable.SideSheetBehavior_Layout_backgroundTint)) {
            this.f12792f = d.getColorStateList(context, obtainStyledAttributes, R.styleable.SideSheetBehavior_Layout_backgroundTint);
        }
        if (obtainStyledAttributes.hasValue(R.styleable.SideSheetBehavior_Layout_shapeAppearance)) {
            this.f12793j = p.builder(context, attributeSet, 0, f12783H).build();
        }
        if (obtainStyledAttributes.hasValue(R.styleable.SideSheetBehavior_Layout_coplanarSiblingViewId)) {
            setCoplanarSiblingViewId(obtainStyledAttributes.getResourceId(R.styleable.SideSheetBehavior_Layout_coplanarSiblingViewId, -1));
        }
        p pVar = this.f12793j;
        if (pVar != null) {
            G3.j jVar = new G3.j(pVar);
            this.f12791e = jVar;
            jVar.initializeElevationOverlay(context);
            ColorStateList colorStateList = this.f12792f;
            if (colorStateList != null) {
                this.f12791e.setFillColor(colorStateList);
            } else {
                TypedValue typedValue = new TypedValue();
                context.getTheme().resolveAttribute(android.R.attr.colorBackground, typedValue, true);
                this.f12791e.setTint(typedValue.data);
            }
        }
        this.f12795n = obtainStyledAttributes.getDimension(R.styleable.SideSheetBehavior_Layout_android_elevation, -1.0f);
        setDraggable(obtainStyledAttributes.getBoolean(R.styleable.SideSheetBehavior_Layout_behavior_draggable, true));
        obtainStyledAttributes.recycle();
        ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }
}
