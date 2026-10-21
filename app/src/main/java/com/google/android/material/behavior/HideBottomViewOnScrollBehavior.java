package com.google.android.material.behavior;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.R;
import g3.AbstractC0951a;
import h0.c;
import j3.C1049a;
import java.util.Iterator;
import java.util.LinkedHashSet;
import y.AbstractC1859c;
import z3.k;

/* loaded from: classes2.dex */
public class HideBottomViewOnScrollBehavior<V extends View> extends AbstractC1859c {

    /* renamed from: r, reason: collision with root package name */
    public static final int f12436r = R.attr.motionDurationLong2;

    /* renamed from: s, reason: collision with root package name */
    public static final int f12437s = R.attr.motionDurationMedium4;

    /* renamed from: t, reason: collision with root package name */
    public static final int f12438t = R.attr.motionEasingEmphasizedInterpolator;

    /* renamed from: b, reason: collision with root package name */
    public final LinkedHashSet f12439b;

    /* renamed from: e, reason: collision with root package name */
    public int f12440e;

    /* renamed from: f, reason: collision with root package name */
    public int f12441f;

    /* renamed from: j, reason: collision with root package name */
    public TimeInterpolator f12442j;

    /* renamed from: m, reason: collision with root package name */
    public TimeInterpolator f12443m;

    /* renamed from: n, reason: collision with root package name */
    public int f12444n;

    /* renamed from: p, reason: collision with root package name */
    public int f12445p;

    /* renamed from: q, reason: collision with root package name */
    public ViewPropertyAnimator f12446q;

    public HideBottomViewOnScrollBehavior() {
        this.f12439b = new LinkedHashSet();
        this.f12444n = 0;
        this.f12445p = 2;
    }

    public boolean isScrolledDown() {
        return this.f12445p == 1;
    }

    public boolean isScrolledUp() {
        return this.f12445p == 2;
    }

    @Override // y.AbstractC1859c
    public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, V v6, int i2) {
        this.f12444n = v6.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) v6.getLayoutParams()).bottomMargin;
        this.f12440e = k.resolveThemeDuration(v6.getContext(), f12436r, 225);
        this.f12441f = k.resolveThemeDuration(v6.getContext(), f12437s, 175);
        Context context = v6.getContext();
        c cVar = AbstractC0951a.f16463d;
        int i7 = f12438t;
        this.f12442j = k.resolveThemeInterpolator(context, i7, cVar);
        this.f12443m = k.resolveThemeInterpolator(v6.getContext(), i7, AbstractC0951a.f16462c);
        return super.onLayoutChild(coordinatorLayout, v6, i2);
    }

    @Override // y.AbstractC1859c
    public void onNestedScroll(CoordinatorLayout coordinatorLayout, V v6, View view, int i2, int i7, int i8, int i9, int i10, int[] iArr) {
        if (i7 > 0) {
            slideDown(v6);
        } else if (i7 < 0) {
            slideUp(v6);
        }
    }

    @Override // y.AbstractC1859c
    public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, V v6, View view, View view2, int i2, int i7) {
        return i2 == 2;
    }

    public void slideDown(V v6) {
        slideDown(v6, true);
    }

    public void slideUp(V v6) {
        slideUp(v6, true);
    }

    public void slideDown(V v6, boolean z6) {
        if (isScrolledDown()) {
            return;
        }
        ViewPropertyAnimator viewPropertyAnimator = this.f12446q;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            v6.clearAnimation();
        }
        this.f12445p = 1;
        Iterator it = this.f12439b.iterator();
        if (it.hasNext()) {
            throw b.c.g(it);
        }
        int i2 = this.f12444n;
        if (!z6) {
            v6.setTranslationY(i2);
            return;
        }
        this.f12446q = v6.animate().translationY(i2).setInterpolator(this.f12443m).setDuration(this.f12441f).setListener(new C1049a(this));
    }

    public void slideUp(V v6, boolean z6) {
        if (isScrolledUp()) {
            return;
        }
        ViewPropertyAnimator viewPropertyAnimator = this.f12446q;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            v6.clearAnimation();
        }
        this.f12445p = 2;
        Iterator it = this.f12439b.iterator();
        if (it.hasNext()) {
            throw b.c.g(it);
        }
        if (!z6) {
            v6.setTranslationY(0);
            return;
        }
        this.f12446q = v6.animate().translationY(0).setInterpolator(this.f12442j).setDuration(this.f12440e).setListener(new C1049a(this));
    }

    public HideBottomViewOnScrollBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f12439b = new LinkedHashSet();
        this.f12444n = 0;
        this.f12445p = 2;
    }
}
