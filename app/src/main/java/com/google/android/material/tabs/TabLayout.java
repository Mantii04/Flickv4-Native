package com.google.android.material.tabs;

import G3.k;
import J3.a;
import J3.b;
import J3.c;
import J3.d;
import J3.e;
import J3.h;
import J3.j;
import L.f;
import L.g;
import M.AbstractC0181p0;
import N.l;
import N.n;
import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.material.R;
import f.AbstractC0876a;
import java.util.ArrayList;
import java.util.Iterator;
import x3.T;
import y4.C1908i0;

/* loaded from: classes2.dex */
public class TabLayout extends HorizontalScrollView {

    /* renamed from: a0, reason: collision with root package name */
    public static final int f12815a0 = R.style.Widget_Design_TabLayout;

    /* renamed from: b0, reason: collision with root package name */
    public static final g f12816b0 = new g(16);

    /* renamed from: A, reason: collision with root package name */
    public final float f12817A;

    /* renamed from: B, reason: collision with root package name */
    public final float f12818B;

    /* renamed from: C, reason: collision with root package name */
    public final int f12819C;

    /* renamed from: D, reason: collision with root package name */
    public int f12820D;

    /* renamed from: E, reason: collision with root package name */
    public final int f12821E;

    /* renamed from: F, reason: collision with root package name */
    public final int f12822F;

    /* renamed from: G, reason: collision with root package name */
    public final int f12823G;

    /* renamed from: H, reason: collision with root package name */
    public final int f12824H;

    /* renamed from: I, reason: collision with root package name */
    public int f12825I;

    /* renamed from: J, reason: collision with root package name */
    public final int f12826J;

    /* renamed from: K, reason: collision with root package name */
    public int f12827K;

    /* renamed from: L, reason: collision with root package name */
    public int f12828L;

    /* renamed from: M, reason: collision with root package name */
    public boolean f12829M;

    /* renamed from: N, reason: collision with root package name */
    public boolean f12830N;

    /* renamed from: O, reason: collision with root package name */
    public int f12831O;

    /* renamed from: P, reason: collision with root package name */
    public int f12832P;

    /* renamed from: Q, reason: collision with root package name */
    public boolean f12833Q;

    /* renamed from: R, reason: collision with root package name */
    public b f12834R;

    /* renamed from: S, reason: collision with root package name */
    public final TimeInterpolator f12835S;

    /* renamed from: T, reason: collision with root package name */
    public d f12836T;

    /* renamed from: U, reason: collision with root package name */
    public final ArrayList f12837U;

    /* renamed from: V, reason: collision with root package name */
    public ValueAnimator f12838V;

    /* renamed from: W, reason: collision with root package name */
    public final f f12839W;

    /* renamed from: b, reason: collision with root package name */
    public int f12840b;

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f12841e;

    /* renamed from: f, reason: collision with root package name */
    public h f12842f;

    /* renamed from: j, reason: collision with root package name */
    public final J3.g f12843j;

    /* renamed from: m, reason: collision with root package name */
    public final int f12844m;

    /* renamed from: n, reason: collision with root package name */
    public final int f12845n;

    /* renamed from: p, reason: collision with root package name */
    public final int f12846p;

    /* renamed from: q, reason: collision with root package name */
    public final int f12847q;

    /* renamed from: r, reason: collision with root package name */
    public final int f12848r;

    /* renamed from: s, reason: collision with root package name */
    public final int f12849s;

    /* renamed from: t, reason: collision with root package name */
    public final int f12850t;

    /* renamed from: u, reason: collision with root package name */
    public ColorStateList f12851u;

    /* renamed from: v, reason: collision with root package name */
    public ColorStateList f12852v;

    /* renamed from: w, reason: collision with root package name */
    public ColorStateList f12853w;

    /* renamed from: x, reason: collision with root package name */
    public Drawable f12854x;

    /* renamed from: y, reason: collision with root package name */
    public int f12855y;

    /* renamed from: z, reason: collision with root package name */
    public final PorterDuff.Mode f12856z;

    public TabLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.tabStyle);
    }

    private int getDefaultHeight() {
        ArrayList arrayList = this.f12841e;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            h hVar = (h) arrayList.get(i2);
            if (hVar != null && hVar.getIcon() != null && !TextUtils.isEmpty(hVar.getText())) {
                return !this.f12829M ? 72 : 48;
            }
        }
        return 48;
    }

    private int getTabMinWidth() {
        int i2 = this.f12821E;
        if (i2 != -1) {
            return i2;
        }
        int i7 = this.f12828L;
        if (i7 == 0 || i7 == 2) {
            return this.f12823G;
        }
        return 0;
    }

    private int getTabScrollRange() {
        return Math.max(0, ((this.f12843j.getWidth() - getWidth()) - getPaddingLeft()) - getPaddingRight());
    }

    private void setSelectedTabView(int i2) {
        J3.g gVar = this.f12843j;
        int childCount = gVar.getChildCount();
        if (i2 < childCount) {
            int i7 = 0;
            while (i7 < childCount) {
                View childAt = gVar.getChildAt(i7);
                if ((i7 != i2 || childAt.isSelected()) && (i7 == i2 || !childAt.isSelected())) {
                    childAt.setSelected(i7 == i2);
                    childAt.setActivated(i7 == i2);
                } else {
                    childAt.setSelected(i7 == i2);
                    childAt.setActivated(i7 == i2);
                    if (childAt instanceof j) {
                        ((j) childAt).e();
                    }
                }
                i7++;
            }
        }
    }

    public final void a(View view) {
        if (!(view instanceof TabItem)) {
            throw new IllegalArgumentException("Only TabItem instances can be added to TabLayout");
        }
        TabItem tabItem = (TabItem) view;
        h newTab = newTab();
        CharSequence charSequence = tabItem.f12812b;
        if (charSequence != null) {
            newTab.setText(charSequence);
        }
        Drawable drawable = tabItem.f12813e;
        if (drawable != null) {
            newTab.setIcon(drawable);
        }
        int i2 = tabItem.f12814f;
        if (i2 != 0) {
            newTab.setCustomView(i2);
        }
        if (!TextUtils.isEmpty(tabItem.getContentDescription())) {
            newTab.setContentDescription(tabItem.getContentDescription());
        }
        addTab(newTab);
    }

    @Deprecated
    public void addOnTabSelectedListener(d dVar) {
        ArrayList arrayList = this.f12837U;
        if (arrayList.contains(dVar)) {
            return;
        }
        arrayList.add(dVar);
    }

    public void addTab(h hVar) {
        addTab(hVar, this.f12841e.isEmpty());
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view) {
        a(view);
    }

    public final void b(int i2) {
        if (i2 == -1) {
            return;
        }
        if (getWindowToken() != null && AbstractC0181p0.isLaidOut(this)) {
            J3.g gVar = this.f12843j;
            int childCount = gVar.getChildCount();
            for (int i7 = 0; i7 < childCount; i7++) {
                if (gVar.getChildAt(i7).getWidth() > 0) {
                }
            }
            int scrollX = getScrollX();
            int d7 = d(0.0f, i2);
            if (scrollX != d7) {
                e();
                this.f12838V.setIntValues(scrollX, d7);
                this.f12838V.start();
            }
            ValueAnimator valueAnimator = gVar.f1516b;
            if (valueAnimator != null && valueAnimator.isRunning() && gVar.f1517e.f12840b != i2) {
                gVar.f1516b.cancel();
            }
            gVar.d(i2, this.f12826J, true);
            return;
        }
        setScrollPosition(i2, 0.0f, true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0038, code lost:
    
        if (r0 != 2) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void c() {
        /*
            r5 = this;
            int r0 = r5.f12828L
            r1 = 2
            r2 = 0
            if (r0 == 0) goto Lb
            if (r0 != r1) goto L9
            goto Lb
        L9:
            r0 = r2
            goto L14
        Lb:
            int r0 = r5.f12824H
            int r3 = r5.f12844m
            int r0 = r0 - r3
            int r0 = java.lang.Math.max(r2, r0)
        L14:
            J3.g r3 = r5.f12843j
            M.AbstractC0181p0.setPaddingRelative(r3, r0, r2, r2, r2)
            int r0 = r5.f12828L
            java.lang.String r2 = "TabLayout"
            r4 = 1
            if (r0 == 0) goto L32
            if (r0 == r4) goto L25
            if (r0 == r1) goto L25
            goto L4a
        L25:
            int r0 = r5.f12825I
            if (r0 != r1) goto L2e
            java.lang.String r0 = "GRAVITY_START is not supported with the current tab mode, GRAVITY_CENTER will be used instead"
            android.util.Log.w(r2, r0)
        L2e:
            r3.setGravity(r4)
            goto L4a
        L32:
            int r0 = r5.f12825I
            if (r0 == 0) goto L3f
            if (r0 == r4) goto L3b
            if (r0 == r1) goto L44
            goto L4a
        L3b:
            r3.setGravity(r4)
            goto L4a
        L3f:
            java.lang.String r0 = "MODE_SCROLLABLE + GRAVITY_FILL is not supported, GRAVITY_START will be used instead"
            android.util.Log.w(r2, r0)
        L44:
            r0 = 8388611(0x800003, float:1.1754948E-38)
            r3.setGravity(r0)
        L4a:
            r5.f(r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.tabs.TabLayout.c():void");
    }

    public h createTabFromPool() {
        h hVar = (h) f12816b0.acquire();
        return hVar == null ? new h() : hVar;
    }

    public final int d(float f3, int i2) {
        J3.g gVar;
        View childAt;
        int i7 = this.f12828L;
        if ((i7 != 0 && i7 != 2) || (childAt = (gVar = this.f12843j).getChildAt(i2)) == null) {
            return 0;
        }
        int i8 = i2 + 1;
        View childAt2 = i8 < gVar.getChildCount() ? gVar.getChildAt(i8) : null;
        int width = childAt.getWidth();
        int width2 = childAt2 != null ? childAt2.getWidth() : 0;
        int left = ((width / 2) + childAt.getLeft()) - (getWidth() / 2);
        int i9 = (int) ((width + width2) * 0.5f * f3);
        return AbstractC0181p0.getLayoutDirection(this) == 0 ? left + i9 : left - i9;
    }

    public final void e() {
        if (this.f12838V == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.f12838V = valueAnimator;
            valueAnimator.setInterpolator(this.f12835S);
            this.f12838V.setDuration(this.f12826J);
            this.f12838V.addUpdateListener(new c(this));
        }
    }

    public final void f(boolean z6) {
        int i2 = 0;
        while (true) {
            J3.g gVar = this.f12843j;
            if (i2 >= gVar.getChildCount()) {
                return;
            }
            View childAt = gVar.getChildAt(i2);
            childAt.setMinimumWidth(getTabMinWidth());
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) childAt.getLayoutParams();
            if (this.f12828L == 1 && this.f12825I == 0) {
                layoutParams.width = 0;
                layoutParams.weight = 1.0f;
            } else {
                layoutParams.width = -2;
                layoutParams.weight = 0.0f;
            }
            if (z6) {
                childAt.requestLayout();
            }
            i2++;
        }
    }

    public int getSelectedTabPosition() {
        h hVar = this.f12842f;
        if (hVar != null) {
            return hVar.getPosition();
        }
        return -1;
    }

    public h getTabAt(int i2) {
        if (i2 < 0 || i2 >= getTabCount()) {
            return null;
        }
        return (h) this.f12841e.get(i2);
    }

    public int getTabCount() {
        return this.f12841e.size();
    }

    public int getTabGravity() {
        return this.f12825I;
    }

    public ColorStateList getTabIconTint() {
        return this.f12852v;
    }

    public int getTabIndicatorAnimationMode() {
        return this.f12832P;
    }

    public int getTabIndicatorGravity() {
        return this.f12827K;
    }

    public int getTabMaxWidth() {
        return this.f12820D;
    }

    public int getTabMode() {
        return this.f12828L;
    }

    public ColorStateList getTabRippleColor() {
        return this.f12853w;
    }

    public Drawable getTabSelectedIndicator() {
        return this.f12854x;
    }

    public ColorStateList getTabTextColors() {
        return this.f12851u;
    }

    public boolean isTabIndicatorFullWidth() {
        return this.f12830N;
    }

    public h newTab() {
        h createTabFromPool = createTabFromPool();
        createTabFromPool.f1523f = this;
        f fVar = this.f12839W;
        j jVar = fVar != null ? (j) fVar.acquire() : null;
        if (jVar == null) {
            jVar = new j(this, getContext());
        }
        jVar.setTab(createTabFromPool);
        jVar.setFocusable(true);
        jVar.setMinimumWidth(getTabMinWidth());
        if (TextUtils.isEmpty(createTabFromPool.f1520c)) {
            jVar.setContentDescription(createTabFromPool.f1519b);
        } else {
            jVar.setContentDescription(createTabFromPool.f1520c);
        }
        createTabFromPool.f1524g = jVar;
        return createTabFromPool;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        k.setParentAbsoluteElevation(this);
        getParent();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        j jVar;
        Drawable drawable;
        int i2 = 0;
        while (true) {
            J3.g gVar = this.f12843j;
            if (i2 >= gVar.getChildCount()) {
                super.onDraw(canvas);
                return;
            }
            View childAt = gVar.getChildAt(i2);
            if ((childAt instanceof j) && (drawable = (jVar = (j) childAt).f1536r) != null) {
                drawable.setBounds(jVar.getLeft(), jVar.getTop(), jVar.getRight(), jVar.getBottom());
                jVar.f1536r.draw(canvas);
            }
            i2++;
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        n.wrap(accessibilityNodeInfo).setCollectionInfo(l.obtain(1, getTabCount(), false, 1));
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return (getTabMode() == 0 || getTabMode() == 2) && super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i2, int i7) {
        int round = Math.round(T.dpToPx(getContext(), getDefaultHeight()));
        int mode = View.MeasureSpec.getMode(i7);
        if (mode != Integer.MIN_VALUE) {
            if (mode == 0) {
                i7 = View.MeasureSpec.makeMeasureSpec(getPaddingBottom() + getPaddingTop() + round, 1073741824);
            }
        } else if (getChildCount() == 1 && View.MeasureSpec.getSize(i7) >= round) {
            getChildAt(0).setMinimumHeight(round);
        }
        int size = View.MeasureSpec.getSize(i2);
        if (View.MeasureSpec.getMode(i2) != 0) {
            int i8 = this.f12822F;
            if (i8 <= 0) {
                i8 = (int) (size - T.dpToPx(getContext(), 56));
            }
            this.f12820D = i8;
        }
        super.onMeasure(i2, i7);
        if (getChildCount() == 1) {
            View childAt = getChildAt(0);
            int i9 = this.f12828L;
            if (i9 != 0) {
                if (i9 == 1) {
                    if (childAt.getMeasuredWidth() == getMeasuredWidth()) {
                        return;
                    }
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), ViewGroup.getChildMeasureSpec(i7, getPaddingBottom() + getPaddingTop(), childAt.getLayoutParams().height));
                }
                if (i9 != 2) {
                    return;
                }
            }
            if (childAt.getMeasuredWidth() >= getMeasuredWidth()) {
                return;
            }
            childAt.measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), ViewGroup.getChildMeasureSpec(i7, getPaddingBottom() + getPaddingTop(), childAt.getLayoutParams().height));
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() != 8 || getTabMode() == 0 || getTabMode() == 2) {
            return super.onTouchEvent(motionEvent);
        }
        return false;
    }

    public boolean releaseFromTabPool(h hVar) {
        return f12816b0.release(hVar);
    }

    public void removeAllTabs() {
        J3.g gVar = this.f12843j;
        int childCount = gVar.getChildCount();
        while (true) {
            childCount--;
            if (childCount < 0) {
                break;
            }
            j jVar = (j) gVar.getChildAt(childCount);
            gVar.removeViewAt(childCount);
            if (jVar != null) {
                jVar.setTab(null);
                jVar.setSelected(false);
                this.f12839W.release(jVar);
            }
            requestLayout();
        }
        Iterator it = this.f12841e.iterator();
        while (it.hasNext()) {
            h hVar = (h) it.next();
            it.remove();
            hVar.f1523f = null;
            hVar.f1524g = null;
            hVar.f1518a = null;
            hVar.f1519b = null;
            hVar.f1520c = null;
            hVar.f1521d = -1;
            hVar.f1522e = null;
            releaseFromTabPool(hVar);
        }
        this.f12842f = null;
    }

    @Deprecated
    public void removeOnTabSelectedListener(d dVar) {
        this.f12837U.remove(dVar);
    }

    public void selectTab(h hVar) {
        selectTab(hVar, true);
    }

    @Override // android.view.View
    public void setElevation(float f3) {
        super.setElevation(f3);
        k.setElevation(this, f3);
    }

    public void setInlineLabel(boolean z6) {
        if (this.f12829M == z6) {
            return;
        }
        this.f12829M = z6;
        int i2 = 0;
        while (true) {
            J3.g gVar = this.f12843j;
            if (i2 >= gVar.getChildCount()) {
                c();
                return;
            }
            View childAt = gVar.getChildAt(i2);
            if (childAt instanceof j) {
                j jVar = (j) childAt;
                jVar.setOrientation(!jVar.f1538t.f12829M ? 1 : 0);
                TextView textView = jVar.f1534p;
                if (textView == null && jVar.f1535q == null) {
                    jVar.f(jVar.f1529e, jVar.f1530f, true);
                } else {
                    jVar.f(textView, jVar.f1535q, false);
                }
            }
            i2++;
        }
    }

    public void setInlineLabelResource(int i2) {
        setInlineLabel(getResources().getBoolean(i2));
    }

    @Deprecated
    public void setOnTabSelectedListener(e eVar) {
        setOnTabSelectedListener((d) eVar);
    }

    public void setScrollAnimatorListener(Animator.AnimatorListener animatorListener) {
        e();
        this.f12838V.addListener(animatorListener);
    }

    public void setScrollPosition(int i2, float f3, boolean z6) {
        setScrollPosition(i2, f3, z6, true);
    }

    public void setSelectedTabIndicator(Drawable drawable) {
        if (drawable == null) {
            drawable = new GradientDrawable();
        }
        Drawable mutate = E.c.wrap(drawable).mutate();
        this.f12854x = mutate;
        t3.c.setTint(mutate, this.f12855y);
        int i2 = this.f12831O;
        if (i2 == -1) {
            i2 = this.f12854x.getIntrinsicHeight();
        }
        this.f12843j.b(i2);
    }

    public void setSelectedTabIndicatorColor(int i2) {
        this.f12855y = i2;
        t3.c.setTint(this.f12854x, i2);
        f(false);
    }

    public void setSelectedTabIndicatorGravity(int i2) {
        if (this.f12827K != i2) {
            this.f12827K = i2;
            AbstractC0181p0.postInvalidateOnAnimation(this.f12843j);
        }
    }

    @Deprecated
    public void setSelectedTabIndicatorHeight(int i2) {
        this.f12831O = i2;
        this.f12843j.b(i2);
    }

    public void setTabGravity(int i2) {
        if (this.f12825I != i2) {
            this.f12825I = i2;
            c();
        }
    }

    public void setTabIconTint(ColorStateList colorStateList) {
        if (this.f12852v != colorStateList) {
            this.f12852v = colorStateList;
            ArrayList arrayList = this.f12841e;
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                j jVar = ((h) arrayList.get(i2)).f1524g;
                if (jVar != null) {
                    jVar.e();
                    h hVar = jVar.f1528b;
                    jVar.setSelected(hVar != null && hVar.isSelected());
                }
            }
        }
    }

    public void setTabIconTintResource(int i2) {
        setTabIconTint(AbstractC0876a.getColorStateList(getContext(), i2));
    }

    public void setTabIndicatorAnimationMode(int i2) {
        this.f12832P = i2;
        if (i2 == 0) {
            this.f12834R = new b();
            return;
        }
        if (i2 == 1) {
            this.f12834R = new a(0);
        } else {
            if (i2 == 2) {
                this.f12834R = new a(1);
                return;
            }
            throw new IllegalArgumentException(i2 + " is not a valid TabIndicatorAnimationMode");
        }
    }

    public void setTabIndicatorFullWidth(boolean z6) {
        this.f12830N = z6;
        int i2 = J3.g.f1515f;
        J3.g gVar = this.f12843j;
        gVar.a(gVar.f1517e.getSelectedTabPosition());
        AbstractC0181p0.postInvalidateOnAnimation(gVar);
    }

    public void setTabMode(int i2) {
        if (i2 != this.f12828L) {
            this.f12828L = i2;
            c();
        }
    }

    public void setTabRippleColor(ColorStateList colorStateList) {
        if (this.f12853w == colorStateList) {
            return;
        }
        this.f12853w = colorStateList;
        int i2 = 0;
        while (true) {
            J3.g gVar = this.f12843j;
            if (i2 >= gVar.getChildCount()) {
                return;
            }
            View childAt = gVar.getChildAt(i2);
            if (childAt instanceof j) {
                Context context = getContext();
                int i7 = j.f1527u;
                ((j) childAt).d(context);
            }
            i2++;
        }
    }

    public void setTabRippleColorResource(int i2) {
        setTabRippleColor(AbstractC0876a.getColorStateList(getContext(), i2));
    }

    public void setTabTextColors(ColorStateList colorStateList) {
        if (this.f12851u != colorStateList) {
            this.f12851u = colorStateList;
            ArrayList arrayList = this.f12841e;
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                j jVar = ((h) arrayList.get(i2)).f1524g;
                if (jVar != null) {
                    jVar.e();
                    h hVar = jVar.f1528b;
                    jVar.setSelected(hVar != null && hVar.isSelected());
                }
            }
        }
    }

    @Deprecated
    public void setTabsFromPagerAdapter(A1.a aVar) {
        removeAllTabs();
    }

    public void setUnboundedRipple(boolean z6) {
        if (this.f12833Q == z6) {
            return;
        }
        this.f12833Q = z6;
        int i2 = 0;
        while (true) {
            J3.g gVar = this.f12843j;
            if (i2 >= gVar.getChildCount()) {
                return;
            }
            View childAt = gVar.getChildAt(i2);
            if (childAt instanceof j) {
                Context context = getContext();
                int i7 = j.f1527u;
                ((j) childAt).d(context);
            }
            i2++;
        }
    }

    public void setUnboundedRippleResource(int i2) {
        setUnboundedRipple(getResources().getBoolean(i2));
    }

    public void setupWithViewPager(A1.b bVar) {
        setupWithViewPager(bVar, true);
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return getTabScrollRange() > 0;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public TabLayout(android.content.Context r11, android.util.AttributeSet r12, int r13) {
        /*
            Method dump skipped, instructions count: 564
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.tabs.TabLayout.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    public void addTab(h hVar, boolean z6) {
        addTab(hVar, this.f12841e.size(), z6);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view, int i2) {
        a(view);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return generateDefaultLayoutParams();
    }

    public void selectTab(h hVar, boolean z6) {
        h hVar2 = this.f12842f;
        ArrayList arrayList = this.f12837U;
        if (hVar2 == hVar) {
            if (hVar2 != null) {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    ((C1908i0) ((d) arrayList.get(size))).onTabReselected(hVar);
                }
                b(hVar.getPosition());
                return;
            }
            return;
        }
        int position = hVar != null ? hVar.getPosition() : -1;
        if (z6) {
            if ((hVar2 == null || hVar2.getPosition() == -1) && position != -1) {
                setScrollPosition(position, 0.0f, true);
            } else {
                b(position);
            }
            if (position != -1) {
                setSelectedTabView(position);
            }
        }
        this.f12842f = hVar;
        if (hVar2 != null && hVar2.f1523f != null) {
            for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                ((C1908i0) ((d) arrayList.get(size2))).onTabUnselected(hVar2);
            }
        }
        if (hVar != null) {
            for (int size3 = arrayList.size() - 1; size3 >= 0; size3--) {
                ((C1908i0) ((d) arrayList.get(size3))).onTabSelected(hVar);
            }
        }
    }

    @Deprecated
    public void setOnTabSelectedListener(d dVar) {
        d dVar2 = this.f12836T;
        if (dVar2 != null) {
            removeOnTabSelectedListener(dVar2);
        }
        this.f12836T = dVar;
        if (dVar != null) {
            addOnTabSelectedListener(dVar);
        }
    }

    public void setScrollPosition(int i2, float f3, boolean z6, boolean z7) {
        float f7 = i2 + f3;
        int round = Math.round(f7);
        if (round >= 0) {
            J3.g gVar = this.f12843j;
            if (round >= gVar.getChildCount()) {
                return;
            }
            if (z7) {
                gVar.f1517e.f12840b = Math.round(f7);
                ValueAnimator valueAnimator = gVar.f1516b;
                if (valueAnimator != null && valueAnimator.isRunning()) {
                    gVar.f1516b.cancel();
                }
                gVar.c(gVar.getChildAt(i2), gVar.getChildAt(i2 + 1), f3);
            }
            ValueAnimator valueAnimator2 = this.f12838V;
            if (valueAnimator2 != null && valueAnimator2.isRunning()) {
                this.f12838V.cancel();
            }
            int d7 = d(f3, i2);
            int scrollX = getScrollX();
            if ((i2 >= getSelectedTabPosition() || d7 < scrollX) && (i2 <= getSelectedTabPosition() || d7 > scrollX)) {
                getSelectedTabPosition();
            }
            if (AbstractC0181p0.getLayoutDirection(this) == 1 && ((i2 >= getSelectedTabPosition() || d7 > scrollX) && (i2 <= getSelectedTabPosition() || d7 < scrollX))) {
                getSelectedTabPosition();
            }
            if (i2 < 0) {
                d7 = 0;
            }
            scrollTo(d7, 0);
            if (z6) {
                setSelectedTabView(round);
            }
        }
    }

    public void setupWithViewPager(A1.b bVar, boolean z6) {
        removeAllTabs();
    }

    public void addTab(h hVar, int i2, boolean z6) {
        if (hVar.f1523f == this) {
            hVar.f1521d = i2;
            ArrayList arrayList = this.f12841e;
            arrayList.add(i2, hVar);
            int size = arrayList.size();
            int i7 = -1;
            for (int i8 = i2 + 1; i8 < size; i8++) {
                if (((h) arrayList.get(i8)).getPosition() == this.f12840b) {
                    i7 = i8;
                }
                ((h) arrayList.get(i8)).f1521d = i8;
            }
            this.f12840b = i7;
            j jVar = hVar.f1524g;
            jVar.setSelected(false);
            jVar.setActivated(false);
            int position = hVar.getPosition();
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
            if (this.f12828L == 1 && this.f12825I == 0) {
                layoutParams.width = 0;
                layoutParams.weight = 1.0f;
            } else {
                layoutParams.width = -2;
                layoutParams.weight = 0.0f;
            }
            this.f12843j.addView(jVar, position, layoutParams);
            if (z6) {
                hVar.select();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Tab belongs to a different TabLayout.");
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup, android.view.ViewManager
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        a(view);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        a(view);
    }

    public void setSelectedTabIndicator(int i2) {
        if (i2 != 0) {
            setSelectedTabIndicator(AbstractC0876a.getDrawable(getContext(), i2));
        } else {
            setSelectedTabIndicator((Drawable) null);
        }
    }
}
