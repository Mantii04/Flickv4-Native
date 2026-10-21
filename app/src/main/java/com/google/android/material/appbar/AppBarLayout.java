package com.google.android.material.appbar;

import G3.j;
import M.AbstractC0181p0;
import M.G;
import M.h1;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.AbsListView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.R;
import f.AbstractC0876a;
import g3.AbstractC0951a;
import h3.AbstractC0980d;
import h3.C0982f;
import h3.InterfaceC0979c;
import h3.InterfaceC0983g;
import h3.k;
import h3.n;
import h3.o;
import h3.r;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import y.AbstractC1859c;
import y.C1862f;
import y.InterfaceC1858b;

/* loaded from: classes2.dex */
public class AppBarLayout extends LinearLayout implements InterfaceC1858b {

    /* renamed from: I, reason: collision with root package name */
    public static final int f12355I = R.style.Widget_Design_AppBarLayout;

    /* renamed from: A, reason: collision with root package name */
    public final ArrayList f12356A;

    /* renamed from: B, reason: collision with root package name */
    public final long f12357B;

    /* renamed from: C, reason: collision with root package name */
    public final TimeInterpolator f12358C;

    /* renamed from: D, reason: collision with root package name */
    public int[] f12359D;

    /* renamed from: E, reason: collision with root package name */
    public Drawable f12360E;

    /* renamed from: F, reason: collision with root package name */
    public Integer f12361F;

    /* renamed from: G, reason: collision with root package name */
    public final float f12362G;

    /* renamed from: H, reason: collision with root package name */
    public Behavior f12363H;

    /* renamed from: b, reason: collision with root package name */
    public int f12364b;

    /* renamed from: e, reason: collision with root package name */
    public int f12365e;

    /* renamed from: f, reason: collision with root package name */
    public int f12366f;

    /* renamed from: j, reason: collision with root package name */
    public int f12367j;

    /* renamed from: m, reason: collision with root package name */
    public boolean f12368m;

    /* renamed from: n, reason: collision with root package name */
    public int f12369n;

    /* renamed from: p, reason: collision with root package name */
    public h1 f12370p;

    /* renamed from: q, reason: collision with root package name */
    public ArrayList f12371q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f12372r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f12373s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f12374t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f12375u;

    /* renamed from: v, reason: collision with root package name */
    public int f12376v;

    /* renamed from: w, reason: collision with root package name */
    public WeakReference f12377w;

    /* renamed from: x, reason: collision with root package name */
    public final boolean f12378x;

    /* renamed from: y, reason: collision with root package name */
    public ValueAnimator f12379y;

    /* renamed from: z, reason: collision with root package name */
    public final ValueAnimator.AnimatorUpdateListener f12380z;

    public static class BaseBehavior<T extends AppBarLayout> extends n {

        /* renamed from: s, reason: collision with root package name */
        public int f12381s;

        /* renamed from: t, reason: collision with root package name */
        public int f12382t;

        /* renamed from: u, reason: collision with root package name */
        public ValueAnimator f12383u;

        /* renamed from: v, reason: collision with root package name */
        public d f12384v;

        /* renamed from: w, reason: collision with root package name */
        public WeakReference f12385w;

        public BaseBehavior() {
        }

        public static View d(BaseBehavior baseBehavior, CoordinatorLayout coordinatorLayout) {
            baseBehavior.getClass();
            int childCount = coordinatorLayout.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = coordinatorLayout.getChildAt(i2);
                if (((C1862f) childAt.getLayoutParams()).getBehavior() instanceof ScrollingViewBehavior) {
                    return childAt;
                }
            }
            return null;
        }

        public static View f(CoordinatorLayout coordinatorLayout) {
            int childCount = coordinatorLayout.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = coordinatorLayout.getChildAt(i2);
                if ((childAt instanceof G) || (childAt instanceof AbsListView) || (childAt instanceof ScrollView)) {
                    return childAt;
                }
            }
            return null;
        }

        public static void i(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i2, int i7, boolean z6) {
            View view;
            boolean z7;
            int abs = Math.abs(i2);
            int childCount = appBarLayout.getChildCount();
            int i8 = 0;
            while (true) {
                if (i8 >= childCount) {
                    view = null;
                    break;
                }
                view = appBarLayout.getChildAt(i8);
                if (abs >= view.getTop() && abs <= view.getBottom()) {
                    break;
                } else {
                    i8++;
                }
            }
            if (view != null) {
                int scrollFlags = ((C0982f) view.getLayoutParams()).getScrollFlags();
                if ((scrollFlags & 1) != 0) {
                    int minimumHeight = AbstractC0181p0.getMinimumHeight(view);
                    z7 = true;
                    if (i7 > 0) {
                    }
                }
            }
            z7 = false;
            if (appBarLayout.isLiftOnScroll()) {
                z7 = appBarLayout.d(f(coordinatorLayout));
            }
            boolean c7 = appBarLayout.c(z7);
            if (!z6) {
                if (c7) {
                    List<View> dependents = coordinatorLayout.getDependents(appBarLayout);
                    int size = dependents.size();
                    for (int i9 = 0; i9 < size; i9++) {
                        AbstractC1859c behavior = ((C1862f) dependents.get(i9).getLayoutParams()).getBehavior();
                        if (behavior instanceof ScrollingViewBehavior) {
                            if (((ScrollingViewBehavior) behavior).getOverlayTop() == 0) {
                                return;
                            }
                        }
                    }
                    return;
                }
                return;
            }
            if (appBarLayout.getBackground() != null) {
                appBarLayout.getBackground().jumpToCurrentState();
            }
            if (appBarLayout.getForeground() != null) {
                appBarLayout.getForeground().jumpToCurrentState();
            }
            if (appBarLayout.getStateListAnimator() != null) {
                appBarLayout.getStateListAnimator().jumpToCurrentState();
            }
        }

        @Override // h3.n
        public final int a() {
            return getTopAndBottomOffset() + this.f12381s;
        }

        @Override // h3.n
        public final int b(CoordinatorLayout coordinatorLayout, View view, int i2, int i7, int i8) {
            int i9;
            int i10;
            AppBarLayout appBarLayout = (AppBarLayout) view;
            int a7 = a();
            int i11 = 0;
            if (i7 == 0 || a7 < i7 || a7 > i8) {
                this.f12381s = 0;
            } else {
                int clamp = G.a.clamp(i2, i7, i8);
                if (a7 != clamp) {
                    if (appBarLayout.f12368m) {
                        int abs = Math.abs(clamp);
                        int childCount = appBarLayout.getChildCount();
                        int i12 = 0;
                        while (true) {
                            if (i12 >= childCount) {
                                break;
                            }
                            View childAt = appBarLayout.getChildAt(i12);
                            C0982f c0982f = (C0982f) childAt.getLayoutParams();
                            Interpolator scrollInterpolator = c0982f.getScrollInterpolator();
                            if (abs < childAt.getTop() || abs > childAt.getBottom()) {
                                i12++;
                            } else if (scrollInterpolator != null) {
                                int scrollFlags = c0982f.getScrollFlags();
                                if ((scrollFlags & 1) != 0) {
                                    i10 = childAt.getHeight() + ((LinearLayout.LayoutParams) c0982f).topMargin + ((LinearLayout.LayoutParams) c0982f).bottomMargin;
                                    if ((scrollFlags & 2) != 0) {
                                        i10 -= AbstractC0181p0.getMinimumHeight(childAt);
                                    }
                                } else {
                                    i10 = 0;
                                }
                                if (AbstractC0181p0.getFitsSystemWindows(childAt)) {
                                    i10 -= appBarLayout.getTopInset();
                                }
                                if (i10 > 0) {
                                    float f3 = i10;
                                    i9 = (childAt.getTop() + Math.round(scrollInterpolator.getInterpolation((abs - childAt.getTop()) / f3) * f3)) * Integer.signum(clamp);
                                }
                            }
                        }
                    }
                    i9 = clamp;
                    boolean topAndBottomOffset = setTopAndBottomOffset(i9);
                    int i13 = a7 - clamp;
                    this.f12381s = clamp - i9;
                    if (topAndBottomOffset) {
                        for (int i14 = 0; i14 < appBarLayout.getChildCount(); i14++) {
                            C0982f c0982f2 = (C0982f) appBarLayout.getChildAt(i14).getLayoutParams();
                            AbstractC0980d scrollEffect = c0982f2.getScrollEffect();
                            if (scrollEffect != null && (c0982f2.getScrollFlags() & 1) != 0) {
                                scrollEffect.onOffsetChanged(appBarLayout, appBarLayout.getChildAt(i14), getTopAndBottomOffset());
                            }
                        }
                    }
                    if (!topAndBottomOffset && appBarLayout.f12368m) {
                        coordinatorLayout.dispatchDependentViewsChanged(appBarLayout);
                    }
                    appBarLayout.b(getTopAndBottomOffset());
                    i(coordinatorLayout, appBarLayout, clamp, clamp < a7 ? -1 : 1, false);
                    i11 = i13;
                }
            }
            if (!AbstractC0181p0.hasAccessibilityDelegate(coordinatorLayout)) {
                AbstractC0181p0.setAccessibilityDelegate(coordinatorLayout, new b(coordinatorLayout, this, appBarLayout));
            }
            return i11;
        }

        public final void e(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i2) {
            int abs = Math.abs(a() - i2);
            float abs2 = Math.abs(0.0f);
            int round = abs2 > 0.0f ? Math.round((abs / abs2) * 1000.0f) * 3 : (int) (((abs / appBarLayout.getHeight()) + 1.0f) * 150.0f);
            int a7 = a();
            if (a7 == i2) {
                ValueAnimator valueAnimator = this.f12383u;
                if (valueAnimator == null || !valueAnimator.isRunning()) {
                    return;
                }
                this.f12383u.cancel();
                return;
            }
            ValueAnimator valueAnimator2 = this.f12383u;
            if (valueAnimator2 == null) {
                ValueAnimator valueAnimator3 = new ValueAnimator();
                this.f12383u = valueAnimator3;
                valueAnimator3.setInterpolator(AbstractC0951a.f16464e);
                this.f12383u.addUpdateListener(new a(coordinatorLayout, this, appBarLayout));
            } else {
                valueAnimator2.cancel();
            }
            this.f12383u.setDuration(Math.min(round, 600));
            this.f12383u.setIntValues(a7, i2);
            this.f12383u.start();
        }

        public final d g(Parcelable parcelable, AppBarLayout appBarLayout) {
            int topAndBottomOffset = getTopAndBottomOffset();
            int childCount = appBarLayout.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = appBarLayout.getChildAt(i2);
                int bottom = childAt.getBottom() + topAndBottomOffset;
                if (childAt.getTop() + topAndBottomOffset <= 0 && bottom >= 0) {
                    if (parcelable == null) {
                        parcelable = V.c.f3805e;
                    }
                    d dVar = new d(parcelable);
                    boolean z6 = topAndBottomOffset == 0;
                    dVar.f12432j = z6;
                    dVar.f12431f = !z6 && (-topAndBottomOffset) >= appBarLayout.getTotalScrollRange();
                    dVar.f12433m = i2;
                    dVar.f12435p = bottom == appBarLayout.getTopInset() + AbstractC0181p0.getMinimumHeight(childAt);
                    dVar.f12434n = bottom / childAt.getHeight();
                    return dVar;
                }
            }
            return null;
        }

        public final void h(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
            int paddingTop = appBarLayout.getPaddingTop() + appBarLayout.getTopInset();
            int a7 = a() - paddingTop;
            int childCount = appBarLayout.getChildCount();
            int i2 = 0;
            while (true) {
                if (i2 >= childCount) {
                    i2 = -1;
                    break;
                }
                View childAt = appBarLayout.getChildAt(i2);
                int top = childAt.getTop();
                int bottom = childAt.getBottom();
                C0982f c0982f = (C0982f) childAt.getLayoutParams();
                if ((c0982f.getScrollFlags() & 32) == 32) {
                    top -= ((LinearLayout.LayoutParams) c0982f).topMargin;
                    bottom += ((LinearLayout.LayoutParams) c0982f).bottomMargin;
                }
                int i7 = -a7;
                if (top <= i7 && bottom >= i7) {
                    break;
                } else {
                    i2++;
                }
            }
            if (i2 >= 0) {
                View childAt2 = appBarLayout.getChildAt(i2);
                C0982f c0982f2 = (C0982f) childAt2.getLayoutParams();
                int scrollFlags = c0982f2.getScrollFlags();
                if ((scrollFlags & 17) == 17) {
                    int i8 = -childAt2.getTop();
                    int i9 = -childAt2.getBottom();
                    if (i2 == 0 && AbstractC0181p0.getFitsSystemWindows(appBarLayout) && AbstractC0181p0.getFitsSystemWindows(childAt2)) {
                        i8 -= appBarLayout.getTopInset();
                    }
                    if ((scrollFlags & 2) == 2) {
                        i9 += AbstractC0181p0.getMinimumHeight(childAt2);
                    } else if ((scrollFlags & 5) == 5) {
                        int minimumHeight = AbstractC0181p0.getMinimumHeight(childAt2) + i9;
                        if (a7 < minimumHeight) {
                            i8 = minimumHeight;
                        } else {
                            i9 = minimumHeight;
                        }
                    }
                    if ((scrollFlags & 32) == 32) {
                        i8 += ((LinearLayout.LayoutParams) c0982f2).topMargin;
                        i9 -= ((LinearLayout.LayoutParams) c0982f2).bottomMargin;
                    }
                    if (a7 < (i9 + i8) / 2) {
                        i8 = i9;
                    }
                    e(coordinatorLayout, appBarLayout, G.a.clamp(i8 + paddingTop, -appBarLayout.getTotalScrollRange(), 0));
                }
            }
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        @Override // h3.p, y.AbstractC1859c
        public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, T t6, int i2) {
            boolean onLayoutChild = super.onLayoutChild(coordinatorLayout, (View) t6, i2);
            int pendingAction = t6.getPendingAction();
            d dVar = this.f12384v;
            if (dVar == null || (pendingAction & 8) != 0) {
                if (pendingAction != 0) {
                    boolean z6 = (pendingAction & 4) != 0;
                    if ((pendingAction & 2) != 0) {
                        int i7 = -t6.getUpNestedPreScrollRange();
                        if (z6) {
                            e(coordinatorLayout, t6, i7);
                        } else {
                            c(coordinatorLayout, t6, i7);
                        }
                    } else if ((pendingAction & 1) != 0) {
                        if (z6) {
                            e(coordinatorLayout, t6, 0);
                        } else {
                            c(coordinatorLayout, t6, 0);
                        }
                    }
                }
            } else if (dVar.f12431f) {
                c(coordinatorLayout, t6, -t6.getTotalScrollRange());
            } else if (dVar.f12432j) {
                c(coordinatorLayout, t6, 0);
            } else {
                View childAt = t6.getChildAt(dVar.f12433m);
                int i8 = -childAt.getBottom();
                c(coordinatorLayout, t6, this.f12384v.f12435p ? t6.getTopInset() + AbstractC0181p0.getMinimumHeight(childAt) + i8 : Math.round(childAt.getHeight() * this.f12384v.f12434n) + i8);
            }
            t6.f12369n = 0;
            this.f12384v = null;
            setTopAndBottomOffset(G.a.clamp(getTopAndBottomOffset(), -t6.getTotalScrollRange(), 0));
            i(coordinatorLayout, t6, getTopAndBottomOffset(), 0, true);
            t6.b(getTopAndBottomOffset());
            if (!AbstractC0181p0.hasAccessibilityDelegate(coordinatorLayout)) {
                AbstractC0181p0.setAccessibilityDelegate(coordinatorLayout, new b(coordinatorLayout, this, t6));
            }
            return onLayoutChild;
        }

        @Override // y.AbstractC1859c
        public boolean onMeasureChild(CoordinatorLayout coordinatorLayout, T t6, int i2, int i7, int i8, int i9) {
            if (((ViewGroup.MarginLayoutParams) ((C1862f) t6.getLayoutParams())).height != -2) {
                return super.onMeasureChild(coordinatorLayout, (View) t6, i2, i7, i8, i9);
            }
            coordinatorLayout.onMeasureChild(t6, i2, i7, View.MeasureSpec.makeMeasureSpec(0, 0), i9);
            return true;
        }

        /* JADX WARN: Removed duplicated region for block: B:12:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:9:0x0032  */
        @Override // y.AbstractC1859c
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onNestedPreScroll(androidx.coordinatorlayout.widget.CoordinatorLayout r7, T r8, android.view.View r9, int r10, int r11, int[] r12, int r13) {
            /*
                r6 = this;
                if (r11 == 0) goto L2b
                if (r11 >= 0) goto L11
                int r10 = r8.getTotalScrollRange()
                int r10 = -r10
                int r13 = r8.getDownNestedPreScrollRange()
                int r13 = r13 + r10
            Le:
                r4 = r10
                r5 = r13
                goto L18
            L11:
                int r10 = r8.getUpNestedPreScrollRange()
                int r10 = -r10
                r13 = 0
                goto Le
            L18:
                if (r4 == r5) goto L2b
                int r10 = r6.a()
                int r3 = r10 - r11
                r0 = r6
                r1 = r7
                r2 = r8
                int r7 = r0.b(r1, r2, r3, r4, r5)
                r8 = 1
                r12[r8] = r7
                goto L2c
            L2b:
                r2 = r8
            L2c:
                boolean r7 = r2.isLiftOnScroll()
                if (r7 == 0) goto L39
                boolean r7 = r2.d(r9)
                r2.c(r7)
            L39:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.AppBarLayout.BaseBehavior.onNestedPreScroll(androidx.coordinatorlayout.widget.CoordinatorLayout, com.google.android.material.appbar.AppBarLayout, android.view.View, int, int, int[], int):void");
        }

        @Override // y.AbstractC1859c
        public void onNestedScroll(CoordinatorLayout coordinatorLayout, T t6, View view, int i2, int i7, int i8, int i9, int i10, int[] iArr) {
            CoordinatorLayout coordinatorLayout2;
            T t7;
            if (i9 < 0) {
                coordinatorLayout2 = coordinatorLayout;
                t7 = t6;
                iArr[1] = b(coordinatorLayout2, t7, a() - i9, -t6.getDownNestedScrollRange(), 0);
            } else {
                coordinatorLayout2 = coordinatorLayout;
                t7 = t6;
            }
            if (i9 != 0 || AbstractC0181p0.hasAccessibilityDelegate(coordinatorLayout2)) {
                return;
            }
            AbstractC0181p0.setAccessibilityDelegate(coordinatorLayout2, new b(coordinatorLayout2, this, t7));
        }

        @Override // y.AbstractC1859c
        public void onRestoreInstanceState(CoordinatorLayout coordinatorLayout, T t6, Parcelable parcelable) {
            if (!(parcelable instanceof d)) {
                super.onRestoreInstanceState(coordinatorLayout, (View) t6, parcelable);
                this.f12384v = null;
            } else {
                d dVar = (d) parcelable;
                this.f12384v = dVar;
                super.onRestoreInstanceState(coordinatorLayout, (View) t6, dVar.getSuperState());
            }
        }

        @Override // y.AbstractC1859c
        public Parcelable onSaveInstanceState(CoordinatorLayout coordinatorLayout, T t6) {
            Parcelable onSaveInstanceState = super.onSaveInstanceState(coordinatorLayout, (View) t6);
            d g7 = g(onSaveInstanceState, t6);
            return g7 == null ? onSaveInstanceState : g7;
        }

        @Override // y.AbstractC1859c
        public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, T t6, View view, View view2, int i2, int i7) {
            ValueAnimator valueAnimator;
            boolean z6 = (i2 & 2) != 0 && (t6.isLiftOnScroll() || (t6.getTotalScrollRange() != 0 && coordinatorLayout.getHeight() - view.getHeight() <= t6.getHeight()));
            if (z6 && (valueAnimator = this.f12383u) != null) {
                valueAnimator.cancel();
            }
            this.f12385w = null;
            this.f12382t = i7;
            return z6;
        }

        @Override // y.AbstractC1859c
        public void onStopNestedScroll(CoordinatorLayout coordinatorLayout, T t6, View view, int i2) {
            if (this.f12382t == 0 || i2 == 1) {
                h(coordinatorLayout, t6);
                if (t6.isLiftOnScroll()) {
                    t6.c(t6.d(view));
                }
            }
            this.f12385w = new WeakReference(view);
        }
    }

    public static class Behavior extends BaseBehavior<AppBarLayout> {
        public Behavior() {
        }

        @Override // h3.p
        public /* bridge */ /* synthetic */ int getTopAndBottomOffset() {
            return super.getTopAndBottomOffset();
        }

        @Override // h3.n, y.AbstractC1859c
        public /* bridge */ /* synthetic */ boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
            return super.onInterceptTouchEvent(coordinatorLayout, view, motionEvent);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ boolean onLayoutChild(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i2) {
            return super.onLayoutChild(coordinatorLayout, (CoordinatorLayout) appBarLayout, i2);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ boolean onMeasureChild(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i2, int i7, int i8, int i9) {
            return super.onMeasureChild(coordinatorLayout, (CoordinatorLayout) appBarLayout, i2, i7, i8, i9);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ void onNestedPreScroll(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i2, int i7, int[] iArr, int i8) {
            super.onNestedPreScroll(coordinatorLayout, (CoordinatorLayout) appBarLayout, view, i2, i7, iArr, i8);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ void onNestedScroll(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i2, int i7, int i8, int i9, int i10, int[] iArr) {
            super.onNestedScroll(coordinatorLayout, (CoordinatorLayout) appBarLayout, view, i2, i7, i8, i9, i10, iArr);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ void onRestoreInstanceState(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, Parcelable parcelable) {
            super.onRestoreInstanceState(coordinatorLayout, (CoordinatorLayout) appBarLayout, parcelable);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ Parcelable onSaveInstanceState(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
            return super.onSaveInstanceState(coordinatorLayout, (CoordinatorLayout) appBarLayout);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, View view2, int i2, int i7) {
            return super.onStartNestedScroll(coordinatorLayout, (CoordinatorLayout) appBarLayout, view, view2, i2, i7);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ void onStopNestedScroll(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i2) {
            super.onStopNestedScroll(coordinatorLayout, (CoordinatorLayout) appBarLayout, view, i2);
        }

        @Override // h3.n, y.AbstractC1859c
        public /* bridge */ /* synthetic */ boolean onTouchEvent(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
            return super.onTouchEvent(coordinatorLayout, view, motionEvent);
        }

        @Override // h3.p
        public /* bridge */ /* synthetic */ boolean setTopAndBottomOffset(int i2) {
            return super.setTopAndBottomOffset(i2);
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    public static class ScrollingViewBehavior extends o {
        public ScrollingViewBehavior() {
        }

        public static AppBarLayout b(List list) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                View view = (View) list.get(i2);
                if (view instanceof AppBarLayout) {
                    return (AppBarLayout) view;
                }
            }
            return null;
        }

        @Override // y.AbstractC1859c
        public boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, View view, View view2) {
            return view2 instanceof AppBarLayout;
        }

        @Override // y.AbstractC1859c
        public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, View view, View view2) {
            AbstractC1859c behavior = ((C1862f) view2.getLayoutParams()).getBehavior();
            if (behavior instanceof BaseBehavior) {
                AbstractC0181p0.offsetTopAndBottom(view, (((view2.getBottom() - view.getTop()) + ((BaseBehavior) behavior).f12381s) + this.f16550m) - a(view2));
            }
            if (!(view2 instanceof AppBarLayout)) {
                return false;
            }
            AppBarLayout appBarLayout = (AppBarLayout) view2;
            if (!appBarLayout.isLiftOnScroll()) {
                return false;
            }
            appBarLayout.c(appBarLayout.d(view));
            return false;
        }

        @Override // y.AbstractC1859c
        public void onDependentViewRemoved(CoordinatorLayout coordinatorLayout, View view, View view2) {
            if (view2 instanceof AppBarLayout) {
                AbstractC0181p0.setAccessibilityDelegate(coordinatorLayout, null);
            }
        }

        @Override // h3.p, y.AbstractC1859c
        public /* bridge */ /* synthetic */ boolean onLayoutChild(CoordinatorLayout coordinatorLayout, View view, int i2) {
            return super.onLayoutChild(coordinatorLayout, view, i2);
        }

        @Override // h3.o, y.AbstractC1859c
        public /* bridge */ /* synthetic */ boolean onMeasureChild(CoordinatorLayout coordinatorLayout, View view, int i2, int i7, int i8, int i9) {
            return super.onMeasureChild(coordinatorLayout, view, i2, i7, i8, i9);
        }

        @Override // y.AbstractC1859c
        public boolean onRequestChildRectangleOnScreen(CoordinatorLayout coordinatorLayout, View view, Rect rect, boolean z6) {
            AppBarLayout b7 = b(coordinatorLayout.getDependencies(view));
            if (b7 != null) {
                Rect rect2 = new Rect(rect);
                rect2.offset(view.getLeft(), view.getTop());
                int width = coordinatorLayout.getWidth();
                int height = coordinatorLayout.getHeight();
                Rect rect3 = this.f16548f;
                rect3.set(0, 0, width, height);
                if (!rect3.contains(rect2)) {
                    b7.setExpanded(false, !z6);
                    return true;
                }
            }
            return false;
        }

        public ScrollingViewBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ScrollingViewBehavior_Layout);
            setOverlayTop(obtainStyledAttributes.getDimensionPixelSize(R.styleable.ScrollingViewBehavior_Layout_behavior_overlapTop, 0));
            obtainStyledAttributes.recycle();
        }
    }

    public AppBarLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.appBarLayoutStyle);
    }

    public final void a() {
        Behavior behavior = this.f12363H;
        d g7 = (behavior == null || this.f12365e == -1 || this.f12369n != 0) ? null : behavior.g(V.c.f3805e, this);
        this.f12365e = -1;
        this.f12366f = -1;
        this.f12367j = -1;
        if (g7 != null) {
            Behavior behavior2 = this.f12363H;
            if (behavior2.f12384v != null) {
                return;
            }
            behavior2.f12384v = g7;
        }
    }

    public void addOnOffsetChangedListener(InterfaceC0979c interfaceC0979c) {
        if (this.f12371q == null) {
            this.f12371q = new ArrayList();
        }
        if (interfaceC0979c == null || this.f12371q.contains(interfaceC0979c)) {
            return;
        }
        this.f12371q.add(interfaceC0979c);
    }

    public final void b(int i2) {
        this.f12364b = i2;
        if (!willNotDraw()) {
            AbstractC0181p0.postInvalidateOnAnimation(this);
        }
        ArrayList arrayList = this.f12371q;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i7 = 0; i7 < size; i7++) {
                InterfaceC0979c interfaceC0979c = (InterfaceC0979c) this.f12371q.get(i7);
                if (interfaceC0979c != null) {
                    ((k) interfaceC0979c).onOffsetChanged(this, i2);
                }
            }
        }
    }

    public final boolean c(boolean z6) {
        if (this.f12372r || this.f12374t == z6) {
            return false;
        }
        this.f12374t = z6;
        refreshDrawableState();
        if (!(getBackground() instanceof j)) {
            return true;
        }
        if (this.f12378x) {
            e(z6 ? 0.0f : 1.0f, z6 ? 1.0f : 0.0f);
            return true;
        }
        if (!this.f12375u) {
            return true;
        }
        float f3 = this.f12362G;
        e(z6 ? 0.0f : f3, z6 ? f3 : 0.0f);
        return true;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C0982f;
    }

    public final boolean d(View view) {
        int i2;
        if (this.f12377w == null && (i2 = this.f12376v) != -1) {
            View findViewById = view != null ? view.findViewById(i2) : null;
            if (findViewById == null && (getParent() instanceof ViewGroup)) {
                findViewById = ((ViewGroup) getParent()).findViewById(this.f12376v);
            }
            if (findViewById != null) {
                this.f12377w = new WeakReference(findViewById);
            }
        }
        WeakReference weakReference = this.f12377w;
        View view2 = weakReference != null ? (View) weakReference.get() : null;
        if (view2 != null) {
            view = view2;
        }
        if (view != null) {
            return view.canScrollVertically(-1) || view.getScrollY() > 0;
        }
        return false;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.f12360E == null || getTopInset() <= 0) {
            return;
        }
        int save = canvas.save();
        canvas.translate(0.0f, -this.f12364b);
        this.f12360E.draw(canvas);
        canvas.restoreToCount(save);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f12360E;
        if (drawable != null && drawable.isStateful() && drawable.setState(drawableState)) {
            invalidateDrawable(drawable);
        }
    }

    public final void e(float f3, float f7) {
        ValueAnimator valueAnimator = this.f12379y;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(f3, f7);
        this.f12379y = ofFloat;
        ofFloat.setDuration(this.f12357B);
        this.f12379y.setInterpolator(this.f12358C);
        ValueAnimator.AnimatorUpdateListener animatorUpdateListener = this.f12380z;
        if (animatorUpdateListener != null) {
            this.f12379y.addUpdateListener(animatorUpdateListener);
        }
        this.f12379y.start();
    }

    @Override // y.InterfaceC1858b
    public AbstractC1859c getBehavior() {
        Behavior behavior = new Behavior();
        this.f12363H = behavior;
        return behavior;
    }

    public int getDownNestedPreScrollRange() {
        int i2;
        int minimumHeight;
        int i7 = this.f12366f;
        if (i7 != -1) {
            return i7;
        }
        int i8 = 0;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (childAt.getVisibility() != 8) {
                C0982f c0982f = (C0982f) childAt.getLayoutParams();
                int measuredHeight = childAt.getMeasuredHeight();
                int i9 = c0982f.f16530a;
                if ((i9 & 5) != 5) {
                    if (i8 > 0) {
                        break;
                    }
                } else {
                    int i10 = ((LinearLayout.LayoutParams) c0982f).topMargin + ((LinearLayout.LayoutParams) c0982f).bottomMargin;
                    if ((i9 & 8) != 0) {
                        minimumHeight = AbstractC0181p0.getMinimumHeight(childAt);
                    } else if ((i9 & 2) != 0) {
                        minimumHeight = measuredHeight - AbstractC0181p0.getMinimumHeight(childAt);
                    } else {
                        i2 = i10 + measuredHeight;
                        if (childCount == 0 && AbstractC0181p0.getFitsSystemWindows(childAt)) {
                            i2 = Math.min(i2, measuredHeight - getTopInset());
                        }
                        i8 += i2;
                    }
                    i2 = minimumHeight + i10;
                    if (childCount == 0) {
                        i2 = Math.min(i2, measuredHeight - getTopInset());
                    }
                    i8 += i2;
                }
            }
        }
        int max = Math.max(0, i8);
        this.f12366f = max;
        return max;
    }

    public int getDownNestedScrollRange() {
        int i2 = this.f12367j;
        if (i2 != -1) {
            return i2;
        }
        int childCount = getChildCount();
        int i7 = 0;
        int i8 = 0;
        while (true) {
            if (i7 >= childCount) {
                break;
            }
            View childAt = getChildAt(i7);
            if (childAt.getVisibility() != 8) {
                C0982f c0982f = (C0982f) childAt.getLayoutParams();
                int measuredHeight = ((LinearLayout.LayoutParams) c0982f).topMargin + ((LinearLayout.LayoutParams) c0982f).bottomMargin + childAt.getMeasuredHeight();
                int i9 = c0982f.f16530a;
                if ((i9 & 1) == 0) {
                    break;
                }
                i8 += measuredHeight;
                if ((i9 & 2) != 0) {
                    i8 -= AbstractC0181p0.getMinimumHeight(childAt);
                    break;
                }
            }
            i7++;
        }
        int max = Math.max(0, i8);
        this.f12367j = max;
        return max;
    }

    public int getLiftOnScrollTargetViewId() {
        return this.f12376v;
    }

    public j getMaterialShapeBackground() {
        Drawable background = getBackground();
        if (background instanceof j) {
            return (j) background;
        }
        return null;
    }

    public final int getMinimumHeightForVisibleOverlappingContent() {
        int topInset = getTopInset();
        int minimumHeight = AbstractC0181p0.getMinimumHeight(this);
        if (minimumHeight == 0) {
            int childCount = getChildCount();
            minimumHeight = childCount >= 1 ? AbstractC0181p0.getMinimumHeight(getChildAt(childCount - 1)) : 0;
            if (minimumHeight == 0) {
                return getHeight() / 3;
            }
        }
        return (minimumHeight * 2) + topInset;
    }

    public int getPendingAction() {
        return this.f12369n;
    }

    public Drawable getStatusBarForeground() {
        return this.f12360E;
    }

    @Deprecated
    public float getTargetElevation() {
        return 0.0f;
    }

    public final int getTopInset() {
        h1 h1Var = this.f12370p;
        if (h1Var != null) {
            return h1Var.getSystemWindowInsetTop();
        }
        return 0;
    }

    public final int getTotalScrollRange() {
        int i2 = this.f12365e;
        if (i2 != -1) {
            return i2;
        }
        int childCount = getChildCount();
        int i7 = 0;
        int i8 = 0;
        while (true) {
            if (i7 >= childCount) {
                break;
            }
            View childAt = getChildAt(i7);
            if (childAt.getVisibility() != 8) {
                C0982f c0982f = (C0982f) childAt.getLayoutParams();
                int measuredHeight = childAt.getMeasuredHeight();
                int i9 = c0982f.f16530a;
                if ((i9 & 1) == 0) {
                    break;
                }
                int i10 = measuredHeight + ((LinearLayout.LayoutParams) c0982f).topMargin + ((LinearLayout.LayoutParams) c0982f).bottomMargin + i8;
                if (i7 == 0 && AbstractC0181p0.getFitsSystemWindows(childAt)) {
                    i10 -= getTopInset();
                }
                i8 = i10;
                if ((i9 & 2) != 0) {
                    i8 -= AbstractC0181p0.getMinimumHeight(childAt);
                    break;
                }
            }
            i7++;
        }
        int max = Math.max(0, i8);
        this.f12365e = max;
        return max;
    }

    public int getUpNestedPreScrollRange() {
        return getTotalScrollRange();
    }

    public boolean isLiftOnScroll() {
        return this.f12375u;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        G3.k.setParentAbsoluteElevation(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public int[] onCreateDrawableState(int i2) {
        if (this.f12359D == null) {
            this.f12359D = new int[4];
        }
        int[] iArr = this.f12359D;
        int[] onCreateDrawableState = super.onCreateDrawableState(i2 + iArr.length);
        boolean z6 = this.f12373s;
        int i7 = R.attr.state_liftable;
        if (!z6) {
            i7 = -i7;
        }
        iArr[0] = i7;
        iArr[1] = (z6 && this.f12374t) ? R.attr.state_lifted : -R.attr.state_lifted;
        int i8 = R.attr.state_collapsible;
        if (!z6) {
            i8 = -i8;
        }
        iArr[2] = i8;
        iArr[3] = (z6 && this.f12374t) ? R.attr.state_collapsed : -R.attr.state_collapsed;
        return View.mergeDrawableStates(onCreateDrawableState, iArr);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        WeakReference weakReference = this.f12377w;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.f12377w = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:43:? A[RETURN, SYNTHETIC] */
    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onLayout(boolean r3, int r4, int r5, int r6, int r7) {
        /*
            r2 = this;
            super.onLayout(r3, r4, r5, r6, r7)
            r3 = r2
            boolean r4 = M.AbstractC0181p0.getFitsSystemWindows(r2)
            r5 = 0
            r6 = 1
            if (r4 == 0) goto L39
            int r4 = r2.getChildCount()
            if (r4 <= 0) goto L39
            android.view.View r4 = r2.getChildAt(r5)
            int r7 = r4.getVisibility()
            r0 = 8
            if (r7 == r0) goto L39
            boolean r4 = M.AbstractC0181p0.getFitsSystemWindows(r4)
            if (r4 != 0) goto L39
            int r4 = r2.getTopInset()
            int r7 = r2.getChildCount()
            int r7 = r7 - r6
        L2d:
            if (r7 < 0) goto L39
            android.view.View r0 = r2.getChildAt(r7)
            M.AbstractC0181p0.offsetTopAndBottom(r0, r4)
            int r7 = r7 + (-1)
            goto L2d
        L39:
            r2.a()
            r3.f12368m = r5
            int r4 = r2.getChildCount()
            r7 = r5
        L43:
            if (r7 >= r4) goto L5b
            android.view.View r0 = r2.getChildAt(r7)
            android.view.ViewGroup$LayoutParams r0 = r0.getLayoutParams()
            h3.f r0 = (h3.C0982f) r0
            android.view.animation.Interpolator r0 = r0.getScrollInterpolator()
            if (r0 == 0) goto L58
            r3.f12368m = r6
            goto L5b
        L58:
            int r7 = r7 + 1
            goto L43
        L5b:
            android.graphics.drawable.Drawable r4 = r3.f12360E
            if (r4 == 0) goto L6a
            int r7 = r2.getWidth()
            int r0 = r2.getTopInset()
            r4.setBounds(r5, r5, r7, r0)
        L6a:
            boolean r4 = r3.f12372r
            if (r4 != 0) goto L9b
            boolean r4 = r3.f12375u
            if (r4 != 0) goto L91
            int r4 = r2.getChildCount()
            r7 = r5
        L77:
            if (r7 >= r4) goto L92
            android.view.View r0 = r2.getChildAt(r7)
            android.view.ViewGroup$LayoutParams r0 = r0.getLayoutParams()
            h3.f r0 = (h3.C0982f) r0
            int r0 = r0.f16530a
            r1 = r0 & 1
            if (r1 != r6) goto L8e
            r0 = r0 & 10
            if (r0 == 0) goto L8e
            goto L91
        L8e:
            int r7 = r7 + 1
            goto L77
        L91:
            r5 = r6
        L92:
            boolean r4 = r3.f12373s
            if (r4 == r5) goto L9b
            r3.f12373s = r5
            r2.refreshDrawableState()
        L9b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.AppBarLayout.onLayout(boolean, int, int, int, int):void");
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i2, int i7) {
        super.onMeasure(i2, i7);
        int mode = View.MeasureSpec.getMode(i7);
        if (mode != 1073741824 && AbstractC0181p0.getFitsSystemWindows(this) && getChildCount() > 0) {
            View childAt = getChildAt(0);
            if (childAt.getVisibility() != 8 && !AbstractC0181p0.getFitsSystemWindows(childAt)) {
                int measuredHeight = getMeasuredHeight();
                if (mode == Integer.MIN_VALUE) {
                    measuredHeight = G.a.clamp(getTopInset() + getMeasuredHeight(), 0, View.MeasureSpec.getSize(i7));
                } else if (mode == 0) {
                    measuredHeight += getTopInset();
                }
                setMeasuredDimension(getMeasuredWidth(), measuredHeight);
            }
        }
        a();
    }

    public void removeOnOffsetChangedListener(InterfaceC0979c interfaceC0979c) {
        ArrayList arrayList = this.f12371q;
        if (arrayList == null || interfaceC0979c == null) {
            return;
        }
        arrayList.remove(interfaceC0979c);
    }

    @Override // android.view.View
    public void setElevation(float f3) {
        super.setElevation(f3);
        G3.k.setElevation(this, f3);
    }

    public void setExpanded(boolean z6) {
        setExpanded(z6, AbstractC0181p0.isLaidOut(this));
    }

    public void setLiftOnScroll(boolean z6) {
        this.f12375u = z6;
    }

    public void setLiftOnScrollTargetView(View view) {
        this.f12376v = -1;
        if (view != null) {
            this.f12377w = new WeakReference(view);
            return;
        }
        WeakReference weakReference = this.f12377w;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.f12377w = null;
    }

    public void setLiftOnScrollTargetViewId(int i2) {
        this.f12376v = i2;
        WeakReference weakReference = this.f12377w;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.f12377w = null;
    }

    public void setLiftableOverrideEnabled(boolean z6) {
        this.f12372r = z6;
    }

    @Override // android.widget.LinearLayout
    public void setOrientation(int i2) {
        if (i2 != 1) {
            throw new IllegalArgumentException("AppBarLayout is always vertical and does not support horizontal orientation");
        }
        super.setOrientation(i2);
    }

    public void setStatusBarForeground(Drawable drawable) {
        Drawable drawable2 = this.f12360E;
        if (drawable2 != drawable) {
            Integer num = null;
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable mutate = drawable != null ? drawable.mutate() : null;
            this.f12360E = mutate;
            if (mutate instanceof j) {
                num = Integer.valueOf(((j) mutate).getResolvedTintColor());
            } else {
                ColorStateList colorStateListOrNull = t3.c.getColorStateListOrNull(mutate);
                if (colorStateListOrNull != null) {
                    num = Integer.valueOf(colorStateListOrNull.getDefaultColor());
                }
            }
            this.f12361F = num;
            Drawable drawable3 = this.f12360E;
            boolean z6 = false;
            if (drawable3 != null) {
                if (drawable3.isStateful()) {
                    this.f12360E.setState(getDrawableState());
                }
                E.c.setLayoutDirection(this.f12360E, AbstractC0181p0.getLayoutDirection(this));
                this.f12360E.setVisible(getVisibility() == 0, false);
                this.f12360E.setCallback(this);
            }
            if (this.f12360E != null && getTopInset() > 0) {
                z6 = true;
            }
            setWillNotDraw(!z6);
            AbstractC0181p0.postInvalidateOnAnimation(this);
        }
    }

    public void setStatusBarForegroundColor(int i2) {
        setStatusBarForeground(new ColorDrawable(i2));
    }

    public void setStatusBarForegroundResource(int i2) {
        setStatusBarForeground(AbstractC0876a.getDrawable(getContext(), i2));
    }

    @Deprecated
    public void setTargetElevation(float f3) {
        r.a(this, f3);
    }

    @Override // android.view.View
    public void setVisibility(int i2) {
        super.setVisibility(i2);
        boolean z6 = i2 == 0;
        Drawable drawable = this.f12360E;
        if (drawable != null) {
            drawable.setVisible(z6, false);
        }
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f12360E;
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AppBarLayout(android.content.Context r13, android.util.AttributeSet r14, int r15) {
        /*
            Method dump skipped, instructions count: 338
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.AppBarLayout.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    public void setExpanded(boolean z6, boolean z7) {
        this.f12369n = (z6 ? 1 : 2) | (z7 ? 4 : 0) | 8;
        requestLayout();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public C0982f generateDefaultLayoutParams() {
        return new C0982f(-1, -2);
    }

    public void removeOnOffsetChangedListener(InterfaceC0983g interfaceC0983g) {
        removeOnOffsetChangedListener((InterfaceC0979c) interfaceC0983g);
    }

    public void addOnOffsetChangedListener(InterfaceC0983g interfaceC0983g) {
        addOnOffsetChangedListener((InterfaceC0979c) interfaceC0983g);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public C0982f generateLayoutParams(AttributeSet attributeSet) {
        return new C0982f(getContext(), attributeSet);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public C0982f generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LinearLayout.LayoutParams) {
            return new C0982f((LinearLayout.LayoutParams) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new C0982f((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new C0982f(layoutParams);
    }
}
