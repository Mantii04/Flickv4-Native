package com.google.android.material.appbar;

import A.h;
import M.AbstractC0181p0;
import M.h1;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.appcompat.widget.Toolbar;
import com.google.android.material.R;
import h3.C0985i;
import h3.InterfaceC0983g;
import h3.j;
import h3.k;
import h3.l;
import h3.q;
import r3.AbstractC1595a;
import u3.C1699a;
import x3.AbstractC1833g;

/* loaded from: classes2.dex */
public class CollapsingToolbarLayout extends FrameLayout {

    /* renamed from: O, reason: collision with root package name */
    public static final int f12386O = R.style.Widget_Design_CollapsingToolbar;

    /* renamed from: A, reason: collision with root package name */
    public boolean f12387A;

    /* renamed from: B, reason: collision with root package name */
    public ValueAnimator f12388B;

    /* renamed from: C, reason: collision with root package name */
    public long f12389C;

    /* renamed from: D, reason: collision with root package name */
    public final TimeInterpolator f12390D;

    /* renamed from: E, reason: collision with root package name */
    public final TimeInterpolator f12391E;

    /* renamed from: F, reason: collision with root package name */
    public int f12392F;

    /* renamed from: G, reason: collision with root package name */
    public k f12393G;

    /* renamed from: H, reason: collision with root package name */
    public int f12394H;

    /* renamed from: I, reason: collision with root package name */
    public int f12395I;

    /* renamed from: J, reason: collision with root package name */
    public h1 f12396J;

    /* renamed from: K, reason: collision with root package name */
    public int f12397K;

    /* renamed from: L, reason: collision with root package name */
    public boolean f12398L;

    /* renamed from: M, reason: collision with root package name */
    public int f12399M;

    /* renamed from: N, reason: collision with root package name */
    public boolean f12400N;

    /* renamed from: b, reason: collision with root package name */
    public boolean f12401b;

    /* renamed from: e, reason: collision with root package name */
    public final int f12402e;

    /* renamed from: f, reason: collision with root package name */
    public ViewGroup f12403f;

    /* renamed from: j, reason: collision with root package name */
    public View f12404j;

    /* renamed from: m, reason: collision with root package name */
    public View f12405m;

    /* renamed from: n, reason: collision with root package name */
    public int f12406n;

    /* renamed from: p, reason: collision with root package name */
    public int f12407p;

    /* renamed from: q, reason: collision with root package name */
    public int f12408q;

    /* renamed from: r, reason: collision with root package name */
    public int f12409r;

    /* renamed from: s, reason: collision with root package name */
    public final Rect f12410s;

    /* renamed from: t, reason: collision with root package name */
    public final com.google.android.material.internal.a f12411t;

    /* renamed from: u, reason: collision with root package name */
    public final C1699a f12412u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f12413v;

    /* renamed from: w, reason: collision with root package name */
    public boolean f12414w;

    /* renamed from: x, reason: collision with root package name */
    public Drawable f12415x;

    /* renamed from: y, reason: collision with root package name */
    public Drawable f12416y;

    /* renamed from: z, reason: collision with root package name */
    public int f12417z;

    public CollapsingToolbarLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.collapsingToolbarLayoutStyle);
    }

    public static q b(View view) {
        q qVar = (q) view.getTag(R.id.view_offset_helper);
        if (qVar != null) {
            return qVar;
        }
        q qVar2 = new q(view);
        view.setTag(R.id.view_offset_helper, qVar2);
        return qVar2;
    }

    private int getDefaultContentScrimColorForTitleCollapseFadeMode() {
        ColorStateList colorStateListOrNull = AbstractC1595a.getColorStateListOrNull(getContext(), R.attr.colorSurfaceContainer);
        if (colorStateListOrNull != null) {
            return colorStateListOrNull.getDefaultColor();
        }
        return this.f12412u.compositeOverlayWithThemeSurfaceColorIfNeeded(getResources().getDimension(R.dimen.design_appbar_elevation));
    }

    public final void a() {
        if (this.f12401b) {
            ViewGroup viewGroup = null;
            this.f12403f = null;
            this.f12404j = null;
            int i2 = this.f12402e;
            if (i2 != -1) {
                ViewGroup viewGroup2 = (ViewGroup) findViewById(i2);
                this.f12403f = viewGroup2;
                if (viewGroup2 != null) {
                    ViewParent parent = viewGroup2.getParent();
                    View view = viewGroup2;
                    while (parent != this && parent != null) {
                        if (parent instanceof View) {
                            view = (View) parent;
                        }
                        parent = parent.getParent();
                        view = view;
                    }
                    this.f12404j = view;
                }
            }
            if (this.f12403f == null) {
                int childCount = getChildCount();
                for (int i7 = 0; i7 < childCount; i7++) {
                    View childAt = getChildAt(i7);
                    if ((childAt instanceof Toolbar) || (childAt instanceof android.widget.Toolbar)) {
                        viewGroup = (ViewGroup) childAt;
                        break;
                    }
                }
                this.f12403f = viewGroup;
            }
            c();
            this.f12401b = false;
        }
    }

    public final void c() {
        View view;
        if (!this.f12413v && (view = this.f12405m) != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.f12405m);
            }
        }
        if (!this.f12413v || this.f12403f == null) {
            return;
        }
        if (this.f12405m == null) {
            this.f12405m = new View(getContext());
        }
        if (this.f12405m.getParent() == null) {
            this.f12403f.addView(this.f12405m, -1, -1);
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof j;
    }

    public final void d() {
        if (this.f12415x == null && this.f12416y == null) {
            return;
        }
        setScrimsShown(getHeight() + this.f12394H < getScrimVisibleHeightTrigger());
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        Drawable drawable;
        super.draw(canvas);
        a();
        if (this.f12403f == null && (drawable = this.f12415x) != null && this.f12417z > 0) {
            drawable.mutate().setAlpha(this.f12417z);
            this.f12415x.draw(canvas);
        }
        if (this.f12413v && this.f12414w) {
            ViewGroup viewGroup = this.f12403f;
            com.google.android.material.internal.a aVar = this.f12411t;
            if (viewGroup == null || this.f12415x == null || this.f12417z <= 0 || this.f12395I != 1 || aVar.getExpansionFraction() >= aVar.getFadeModeThresholdFraction()) {
                aVar.draw(canvas);
            } else {
                int save = canvas.save();
                canvas.clipRect(this.f12415x.getBounds(), Region.Op.DIFFERENCE);
                aVar.draw(canvas);
                canvas.restoreToCount(save);
            }
        }
        if (this.f12416y == null || this.f12417z <= 0) {
            return;
        }
        h1 h1Var = this.f12396J;
        int systemWindowInsetTop = h1Var != null ? h1Var.getSystemWindowInsetTop() : 0;
        if (systemWindowInsetTop > 0) {
            this.f12416y.setBounds(0, -this.f12394H, getWidth(), systemWindowInsetTop - this.f12394H);
            this.f12416y.mutate().setAlpha(this.f12417z);
            this.f12416y.draw(canvas);
        }
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j7) {
        boolean z6;
        View view2;
        Drawable drawable = this.f12415x;
        if (drawable == null || this.f12417z <= 0 || ((view2 = this.f12404j) == null || view2 == this ? view != this.f12403f : view != view2)) {
            z6 = false;
        } else {
            int width = getWidth();
            int height = getHeight();
            if (this.f12395I == 1 && view != null && this.f12413v) {
                height = view.getBottom();
            }
            drawable.setBounds(0, 0, width, height);
            this.f12415x.mutate().setAlpha(this.f12417z);
            this.f12415x.draw(canvas);
            z6 = true;
        }
        return super.drawChild(canvas, view, j7) || z6;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f12416y;
        boolean state = (drawable == null || !drawable.isStateful()) ? false : drawable.setState(drawableState);
        Drawable drawable2 = this.f12415x;
        if (drawable2 != null && drawable2.isStateful()) {
            state |= drawable2.setState(drawableState);
        }
        com.google.android.material.internal.a aVar = this.f12411t;
        if (aVar != null) {
            state |= aVar.setState(drawableState);
        }
        if (state) {
            invalidate();
        }
    }

    public final void e(int i2, int i7, int i8, int i9, boolean z6) {
        View view;
        int i10;
        int i11;
        int i12;
        if (!this.f12413v || (view = this.f12405m) == null) {
            return;
        }
        int i13 = 0;
        boolean z7 = AbstractC0181p0.isAttachedToWindow(view) && this.f12405m.getVisibility() == 0;
        this.f12414w = z7;
        if (z7 || z6) {
            boolean z8 = AbstractC0181p0.getLayoutDirection(this) == 1;
            View view2 = this.f12404j;
            if (view2 == null) {
                view2 = this.f12403f;
            }
            int height = ((getHeight() - b(view2).getLayoutTop()) - view2.getHeight()) - ((FrameLayout.LayoutParams) ((j) view2.getLayoutParams())).bottomMargin;
            View view3 = this.f12405m;
            Rect rect = this.f12410s;
            AbstractC1833g.getDescendantRect(this, view3, rect);
            ViewGroup viewGroup = this.f12403f;
            if (viewGroup instanceof Toolbar) {
                Toolbar toolbar = (Toolbar) viewGroup;
                i13 = toolbar.getTitleMarginStart();
                i11 = toolbar.getTitleMarginEnd();
                i12 = toolbar.getTitleMarginTop();
                i10 = toolbar.getTitleMarginBottom();
            } else if (Build.VERSION.SDK_INT < 24 || !(viewGroup instanceof android.widget.Toolbar)) {
                i10 = 0;
                i11 = 0;
                i12 = 0;
            } else {
                android.widget.Toolbar toolbar2 = (android.widget.Toolbar) viewGroup;
                i13 = toolbar2.getTitleMarginStart();
                i11 = toolbar2.getTitleMarginEnd();
                i12 = toolbar2.getTitleMarginTop();
                i10 = toolbar2.getTitleMarginBottom();
            }
            int i14 = rect.left + (z8 ? i11 : i13);
            int i15 = rect.top + height + i12;
            int i16 = rect.right;
            if (!z8) {
                i13 = i11;
            }
            int i17 = i16 - i13;
            int i18 = (rect.bottom + height) - i10;
            com.google.android.material.internal.a aVar = this.f12411t;
            aVar.setCollapsedBounds(i14, i15, i17, i18);
            aVar.setExpandedBounds(z8 ? this.f12408q : this.f12406n, rect.top + this.f12407p, (i8 - i2) - (z8 ? this.f12406n : this.f12408q), (i9 - i7) - this.f12409r);
            aVar.recalculate(z6);
        }
    }

    public final void f() {
        if (this.f12403f != null && this.f12413v && TextUtils.isEmpty(this.f12411t.getText())) {
            ViewGroup viewGroup = this.f12403f;
            setTitle(viewGroup instanceof Toolbar ? ((Toolbar) viewGroup).getTitle() : viewGroup instanceof android.widget.Toolbar ? ((android.widget.Toolbar) viewGroup).getTitle() : null);
        }
    }

    public int getCollapsedTitleGravity() {
        return this.f12411t.getCollapsedTextGravity();
    }

    public float getCollapsedTitleTextSize() {
        return this.f12411t.getCollapsedTextSize();
    }

    public Typeface getCollapsedTitleTypeface() {
        return this.f12411t.getCollapsedTypeface();
    }

    public Drawable getContentScrim() {
        return this.f12415x;
    }

    public int getExpandedTitleGravity() {
        return this.f12411t.getExpandedTextGravity();
    }

    public int getExpandedTitleMarginBottom() {
        return this.f12409r;
    }

    public int getExpandedTitleMarginEnd() {
        return this.f12408q;
    }

    public int getExpandedTitleMarginStart() {
        return this.f12406n;
    }

    public int getExpandedTitleMarginTop() {
        return this.f12407p;
    }

    public float getExpandedTitleTextSize() {
        return this.f12411t.getExpandedTextSize();
    }

    public Typeface getExpandedTitleTypeface() {
        return this.f12411t.getExpandedTypeface();
    }

    public int getHyphenationFrequency() {
        return this.f12411t.getHyphenationFrequency();
    }

    public int getLineCount() {
        return this.f12411t.getLineCount();
    }

    public float getLineSpacingAdd() {
        return this.f12411t.getLineSpacingAdd();
    }

    public float getLineSpacingMultiplier() {
        return this.f12411t.getLineSpacingMultiplier();
    }

    public int getMaxLines() {
        return this.f12411t.getMaxLines();
    }

    public int getScrimAlpha() {
        return this.f12417z;
    }

    public long getScrimAnimationDuration() {
        return this.f12389C;
    }

    public int getScrimVisibleHeightTrigger() {
        int i2 = this.f12392F;
        if (i2 >= 0) {
            return i2 + this.f12397K + this.f12399M;
        }
        h1 h1Var = this.f12396J;
        int systemWindowInsetTop = h1Var != null ? h1Var.getSystemWindowInsetTop() : 0;
        int minimumHeight = AbstractC0181p0.getMinimumHeight(this);
        return minimumHeight > 0 ? Math.min((minimumHeight * 2) + systemWindowInsetTop, getHeight()) : getHeight() / 3;
    }

    public Drawable getStatusBarScrim() {
        return this.f12416y;
    }

    public CharSequence getTitle() {
        if (this.f12413v) {
            return this.f12411t.getText();
        }
        return null;
    }

    public int getTitleCollapseMode() {
        return this.f12395I;
    }

    public TimeInterpolator getTitlePositionInterpolator() {
        return this.f12411t.getPositionInterpolator();
    }

    public TextUtils.TruncateAt getTitleTextEllipsize() {
        return this.f12411t.getTitleTextEllipsize();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        if (parent instanceof AppBarLayout) {
            AppBarLayout appBarLayout = (AppBarLayout) parent;
            if (this.f12395I == 1) {
                appBarLayout.setLiftOnScroll(false);
            }
            AbstractC0181p0.setFitsSystemWindows(this, AbstractC0181p0.getFitsSystemWindows(appBarLayout));
            if (this.f12393G == null) {
                this.f12393G = new k(this);
            }
            appBarLayout.addOnOffsetChangedListener((InterfaceC0983g) this.f12393G);
            AbstractC0181p0.requestApplyInsets(this);
        }
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f12411t.maybeUpdateFontWeightAdjustment(configuration);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        ViewParent parent = getParent();
        k kVar = this.f12393G;
        if (kVar != null && (parent instanceof AppBarLayout)) {
            ((AppBarLayout) parent).removeOnOffsetChangedListener((InterfaceC0983g) kVar);
        }
        super.onDetachedFromWindow();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z6, int i2, int i7, int i8, int i9) {
        super.onLayout(z6, i2, i7, i8, i9);
        h1 h1Var = this.f12396J;
        if (h1Var != null) {
            int systemWindowInsetTop = h1Var.getSystemWindowInsetTop();
            int childCount = getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = getChildAt(i10);
                if (!AbstractC0181p0.getFitsSystemWindows(childAt) && childAt.getTop() < systemWindowInsetTop) {
                    AbstractC0181p0.offsetTopAndBottom(childAt, systemWindowInsetTop);
                }
            }
        }
        int childCount2 = getChildCount();
        for (int i11 = 0; i11 < childCount2; i11++) {
            q b7 = b(getChildAt(i11));
            View view = b7.f16554a;
            b7.f16555b = view.getTop();
            b7.f16556c = view.getLeft();
        }
        e(i2, i7, i8, i9, false);
        f();
        d();
        int childCount3 = getChildCount();
        for (int i12 = 0; i12 < childCount3; i12++) {
            b(getChildAt(i12)).a();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    @Override // android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r10, int r11) {
        /*
            r9 = this;
            r9.a()
            super.onMeasure(r10, r11)
            int r11 = android.view.View.MeasureSpec.getMode(r11)
            M.h1 r0 = r9.f12396J
            if (r0 == 0) goto L13
            int r0 = r0.getSystemWindowInsetTop()
            goto L14
        L13:
            r0 = 0
        L14:
            r1 = 1073741824(0x40000000, float:2.0)
            if (r11 == 0) goto L1c
            boolean r11 = r9.f12398L
            if (r11 == 0) goto L2c
        L1c:
            if (r0 <= 0) goto L2c
            r9.f12397K = r0
            int r11 = r9.getMeasuredHeight()
            int r11 = r11 + r0
            int r11 = android.view.View.MeasureSpec.makeMeasureSpec(r11, r1)
            super.onMeasure(r10, r11)
        L2c:
            boolean r11 = r9.f12400N
            if (r11 == 0) goto L6c
            com.google.android.material.internal.a r11 = r9.f12411t
            int r0 = r11.getMaxLines()
            r2 = 1
            if (r0 <= r2) goto L6c
            r9.f()
            int r6 = r9.getMeasuredWidth()
            int r7 = r9.getMeasuredHeight()
            r4 = 0
            r5 = 0
            r8 = 1
            r3 = r9
            r3.e(r4, r5, r6, r7, r8)
            int r0 = r11.getExpandedLineCount()
            if (r0 <= r2) goto L6d
            float r11 = r11.getExpandedTextFullHeight()
            int r11 = java.lang.Math.round(r11)
            int r0 = r0 - r2
            int r0 = r0 * r11
            r3.f12399M = r0
            int r11 = r9.getMeasuredHeight()
            int r0 = r3.f12399M
            int r11 = r11 + r0
            int r11 = android.view.View.MeasureSpec.makeMeasureSpec(r11, r1)
            super.onMeasure(r10, r11)
            goto L6d
        L6c:
            r3 = r9
        L6d:
            android.view.ViewGroup r10 = r3.f12403f
            if (r10 == 0) goto Lb1
            android.view.View r11 = r3.f12404j
            if (r11 == 0) goto L95
            if (r11 != r3) goto L78
            goto L95
        L78:
            android.view.ViewGroup$LayoutParams r10 = r11.getLayoutParams()
            boolean r0 = r10 instanceof android.view.ViewGroup.MarginLayoutParams
            if (r0 == 0) goto L8d
            android.view.ViewGroup$MarginLayoutParams r10 = (android.view.ViewGroup.MarginLayoutParams) r10
            int r11 = r11.getMeasuredHeight()
            int r0 = r10.topMargin
            int r11 = r11 + r0
            int r10 = r10.bottomMargin
            int r11 = r11 + r10
            goto L91
        L8d:
            int r11 = r11.getMeasuredHeight()
        L91:
            r9.setMinimumHeight(r11)
            return
        L95:
            android.view.ViewGroup$LayoutParams r11 = r10.getLayoutParams()
            boolean r0 = r11 instanceof android.view.ViewGroup.MarginLayoutParams
            if (r0 == 0) goto Laa
            android.view.ViewGroup$MarginLayoutParams r11 = (android.view.ViewGroup.MarginLayoutParams) r11
            int r10 = r10.getMeasuredHeight()
            int r0 = r11.topMargin
            int r10 = r10 + r0
            int r11 = r11.bottomMargin
            int r10 = r10 + r11
            goto Lae
        Laa:
            int r10 = r10.getMeasuredHeight()
        Lae:
            r9.setMinimumHeight(r10)
        Lb1:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.CollapsingToolbarLayout.onMeasure(int, int):void");
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i7, int i8, int i9) {
        super.onSizeChanged(i2, i7, i8, i9);
        Drawable drawable = this.f12415x;
        if (drawable != null) {
            ViewGroup viewGroup = this.f12403f;
            if (this.f12395I == 1 && viewGroup != null && this.f12413v) {
                i7 = viewGroup.getBottom();
            }
            drawable.setBounds(0, 0, i2, i7);
        }
    }

    public void setCollapsedTitleGravity(int i2) {
        this.f12411t.setCollapsedTextGravity(i2);
    }

    public void setCollapsedTitleTextAppearance(int i2) {
        this.f12411t.setCollapsedTextAppearance(i2);
    }

    public void setCollapsedTitleTextColor(int i2) {
        setCollapsedTitleTextColor(ColorStateList.valueOf(i2));
    }

    public void setCollapsedTitleTextSize(float f3) {
        this.f12411t.setCollapsedTextSize(f3);
    }

    public void setCollapsedTitleTypeface(Typeface typeface) {
        this.f12411t.setCollapsedTypeface(typeface);
    }

    public void setContentScrim(Drawable drawable) {
        Drawable drawable2 = this.f12415x;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable mutate = drawable != null ? drawable.mutate() : null;
            this.f12415x = mutate;
            if (mutate != null) {
                int width = getWidth();
                int height = getHeight();
                ViewGroup viewGroup = this.f12403f;
                if (this.f12395I == 1 && viewGroup != null && this.f12413v) {
                    height = viewGroup.getBottom();
                }
                mutate.setBounds(0, 0, width, height);
                this.f12415x.setCallback(this);
                this.f12415x.setAlpha(this.f12417z);
            }
            AbstractC0181p0.postInvalidateOnAnimation(this);
        }
    }

    public void setContentScrimColor(int i2) {
        setContentScrim(new ColorDrawable(i2));
    }

    public void setContentScrimResource(int i2) {
        setContentScrim(h.getDrawable(getContext(), i2));
    }

    public void setExpandedTitleColor(int i2) {
        setExpandedTitleTextColor(ColorStateList.valueOf(i2));
    }

    public void setExpandedTitleGravity(int i2) {
        this.f12411t.setExpandedTextGravity(i2);
    }

    public void setExpandedTitleMarginBottom(int i2) {
        this.f12409r = i2;
        requestLayout();
    }

    public void setExpandedTitleMarginEnd(int i2) {
        this.f12408q = i2;
        requestLayout();
    }

    public void setExpandedTitleMarginStart(int i2) {
        this.f12406n = i2;
        requestLayout();
    }

    public void setExpandedTitleMarginTop(int i2) {
        this.f12407p = i2;
        requestLayout();
    }

    public void setExpandedTitleTextAppearance(int i2) {
        this.f12411t.setExpandedTextAppearance(i2);
    }

    public void setExpandedTitleTextColor(ColorStateList colorStateList) {
        this.f12411t.setExpandedTextColor(colorStateList);
    }

    public void setExpandedTitleTextSize(float f3) {
        this.f12411t.setExpandedTextSize(f3);
    }

    public void setExpandedTitleTypeface(Typeface typeface) {
        this.f12411t.setExpandedTypeface(typeface);
    }

    public void setExtraMultilineHeightEnabled(boolean z6) {
        this.f12400N = z6;
    }

    public void setForceApplySystemWindowInsetTop(boolean z6) {
        this.f12398L = z6;
    }

    public void setHyphenationFrequency(int i2) {
        this.f12411t.setHyphenationFrequency(i2);
    }

    public void setLineSpacingAdd(float f3) {
        this.f12411t.setLineSpacingAdd(f3);
    }

    public void setLineSpacingMultiplier(float f3) {
        this.f12411t.setLineSpacingMultiplier(f3);
    }

    public void setMaxLines(int i2) {
        this.f12411t.setMaxLines(i2);
    }

    public void setRtlTextDirectionHeuristicsEnabled(boolean z6) {
        this.f12411t.setRtlTextDirectionHeuristicsEnabled(z6);
    }

    public void setScrimAlpha(int i2) {
        ViewGroup viewGroup;
        if (i2 != this.f12417z) {
            if (this.f12415x != null && (viewGroup = this.f12403f) != null) {
                AbstractC0181p0.postInvalidateOnAnimation(viewGroup);
            }
            this.f12417z = i2;
            AbstractC0181p0.postInvalidateOnAnimation(this);
        }
    }

    public void setScrimAnimationDuration(long j7) {
        this.f12389C = j7;
    }

    public void setScrimVisibleHeightTrigger(int i2) {
        if (this.f12392F != i2) {
            this.f12392F = i2;
            d();
        }
    }

    public void setScrimsShown(boolean z6) {
        setScrimsShown(z6, AbstractC0181p0.isLaidOut(this) && !isInEditMode());
    }

    public void setStaticLayoutBuilderConfigurer(l lVar) {
        this.f12411t.setStaticLayoutBuilderConfigurer(lVar);
    }

    public void setStatusBarScrim(Drawable drawable) {
        Drawable drawable2 = this.f12416y;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable mutate = drawable != null ? drawable.mutate() : null;
            this.f12416y = mutate;
            if (mutate != null) {
                if (mutate.isStateful()) {
                    this.f12416y.setState(getDrawableState());
                }
                E.c.setLayoutDirection(this.f12416y, AbstractC0181p0.getLayoutDirection(this));
                this.f12416y.setVisible(getVisibility() == 0, false);
                this.f12416y.setCallback(this);
                this.f12416y.setAlpha(this.f12417z);
            }
            AbstractC0181p0.postInvalidateOnAnimation(this);
        }
    }

    public void setStatusBarScrimColor(int i2) {
        setStatusBarScrim(new ColorDrawable(i2));
    }

    public void setStatusBarScrimResource(int i2) {
        setStatusBarScrim(h.getDrawable(getContext(), i2));
    }

    public void setTitle(CharSequence charSequence) {
        this.f12411t.setText(charSequence);
        setContentDescription(getTitle());
    }

    public void setTitleCollapseMode(int i2) {
        this.f12395I = i2;
        boolean z6 = i2 == 1;
        this.f12411t.setFadeModeEnabled(z6);
        ViewParent parent = getParent();
        if (parent instanceof AppBarLayout) {
            AppBarLayout appBarLayout = (AppBarLayout) parent;
            if (this.f12395I == 1) {
                appBarLayout.setLiftOnScroll(false);
            }
        }
        if (z6 && this.f12415x == null) {
            setContentScrimColor(getDefaultContentScrimColorForTitleCollapseFadeMode());
        }
    }

    public void setTitleEllipsize(TextUtils.TruncateAt truncateAt) {
        this.f12411t.setTitleTextEllipsize(truncateAt);
    }

    public void setTitleEnabled(boolean z6) {
        if (z6 != this.f12413v) {
            this.f12413v = z6;
            setContentDescription(getTitle());
            c();
            requestLayout();
        }
    }

    public void setTitlePositionInterpolator(TimeInterpolator timeInterpolator) {
        this.f12411t.setPositionInterpolator(timeInterpolator);
    }

    @Override // android.view.View
    public void setVisibility(int i2) {
        super.setVisibility(i2);
        boolean z6 = i2 == 0;
        Drawable drawable = this.f12416y;
        if (drawable != null && drawable.isVisible() != z6) {
            this.f12416y.setVisible(z6, false);
        }
        Drawable drawable2 = this.f12415x;
        if (drawable2 == null || drawable2.isVisible() == z6) {
            return;
        }
        this.f12415x.setVisible(z6, false);
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f12415x || drawable == this.f12416y;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public CollapsingToolbarLayout(android.content.Context r10, android.util.AttributeSet r11, int r12) {
        /*
            Method dump skipped, instructions count: 438
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.CollapsingToolbarLayout.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    public void setCollapsedTitleTextColor(ColorStateList colorStateList) {
        this.f12411t.setCollapsedTextColor(colorStateList);
    }

    public void setScrimsShown(boolean z6, boolean z7) {
        if (this.f12387A != z6) {
            if (z7) {
                int i2 = z6 ? 255 : 0;
                a();
                ValueAnimator valueAnimator = this.f12388B;
                if (valueAnimator == null) {
                    ValueAnimator valueAnimator2 = new ValueAnimator();
                    this.f12388B = valueAnimator2;
                    valueAnimator2.setInterpolator(i2 > this.f12417z ? this.f12390D : this.f12391E);
                    this.f12388B.addUpdateListener(new C0985i(this));
                } else if (valueAnimator.isRunning()) {
                    this.f12388B.cancel();
                }
                this.f12388B.setDuration(this.f12389C);
                this.f12388B.setIntValues(this.f12417z, i2);
                this.f12388B.start();
            } else {
                setScrimAlpha(z6 ? 255 : 0);
            }
            this.f12387A = z6;
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public j generateDefaultLayoutParams() {
        return new j(-1, -1);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new j(getContext(), attributeSet);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public FrameLayout.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new j(layoutParams);
    }
}
