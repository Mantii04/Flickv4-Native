package A3;

import G3.C;
import G3.n;
import G3.p;
import M.AbstractC0181p0;
import M.AbstractC0185s;
import M.h1;
import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Pair;
import android.util.TypedValue;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.drawerlayout.widget.DrawerLayout;
import f.AbstractC0876a;
import g3.AbstractC0951a;
import j.C1029l;
import k.s;
import l.e2;
import x3.C1826A;
import x3.C1838l;
import x3.F;

/* loaded from: classes2.dex */
public abstract class k extends F implements z3.b {

    /* renamed from: G, reason: collision with root package name */
    public static final int[] f33G = {R.attr.state_checked};

    /* renamed from: H, reason: collision with root package name */
    public static final int[] f34H = {-16842910};

    /* renamed from: I, reason: collision with root package name */
    public static final int f35I = com.google.android.material.R.style.Widget_Design_NavigationView;

    /* renamed from: A, reason: collision with root package name */
    public final boolean f36A;

    /* renamed from: B, reason: collision with root package name */
    public final int f37B;

    /* renamed from: C, reason: collision with root package name */
    public final C f38C;

    /* renamed from: D, reason: collision with root package name */
    public final z3.j f39D;

    /* renamed from: E, reason: collision with root package name */
    public final z3.f f40E;

    /* renamed from: F, reason: collision with root package name */
    public final e f41F;

    /* renamed from: q, reason: collision with root package name */
    public final C1838l f42q;

    /* renamed from: r, reason: collision with root package name */
    public final C1826A f43r;

    /* renamed from: s, reason: collision with root package name */
    public h f44s;

    /* renamed from: t, reason: collision with root package name */
    public final int f45t;

    /* renamed from: u, reason: collision with root package name */
    public final int[] f46u;

    /* renamed from: v, reason: collision with root package name */
    public C1029l f47v;

    /* renamed from: w, reason: collision with root package name */
    public final g f48w;

    /* renamed from: x, reason: collision with root package name */
    public boolean f49x;

    /* renamed from: y, reason: collision with root package name */
    public boolean f50y;

    /* renamed from: z, reason: collision with root package name */
    public int f51z;

    public k(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.google.android.material.R.attr.navigationViewStyle);
    }

    private MenuInflater getMenuInflater() {
        if (this.f47v == null) {
            this.f47v = new C1029l(getContext());
        }
        return this.f47v;
    }

    public final ColorStateList b(int i2) {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(i2, typedValue, true)) {
            return null;
        }
        ColorStateList colorStateList = AbstractC0876a.getColorStateList(getContext(), typedValue.resourceId);
        if (!getContext().getTheme().resolveAttribute(androidx.appcompat.R.attr.colorPrimary, typedValue, true)) {
            return null;
        }
        int i7 = typedValue.data;
        int defaultColor = colorStateList.getDefaultColor();
        int[] iArr = f34H;
        return new ColorStateList(new int[][]{iArr, f33G, FrameLayout.EMPTY_STATE_SET}, new int[]{colorStateList.getColorForState(iArr, defaultColor), i7, defaultColor});
    }

    public final InsetDrawable c(e2 e2Var, ColorStateList colorStateList) {
        G3.j jVar = new G3.j(p.builder(getContext(), e2Var.getResourceId(com.google.android.material.R.styleable.NavigationView_itemShapeAppearance, 0), e2Var.getResourceId(com.google.android.material.R.styleable.NavigationView_itemShapeAppearanceOverlay, 0)).build());
        jVar.setFillColor(colorStateList);
        return new InsetDrawable((Drawable) jVar, e2Var.getDimensionPixelSize(com.google.android.material.R.styleable.NavigationView_itemShapeInsetStart, 0), e2Var.getDimensionPixelSize(com.google.android.material.R.styleable.NavigationView_itemShapeInsetTop, 0), e2Var.getDimensionPixelSize(com.google.android.material.R.styleable.NavigationView_itemShapeInsetEnd, 0), e2Var.getDimensionPixelSize(com.google.android.material.R.styleable.NavigationView_itemShapeInsetBottom, 0));
    }

    @Override // z3.b
    public void cancelBackProgress() {
        e();
        this.f39D.cancelBackProgress();
        if (!this.f36A || this.f51z == 0) {
            return;
        }
        this.f51z = 0;
        d(getWidth(), getHeight());
    }

    public final void d(int i2, int i7) {
        if ((getParent() instanceof DrawerLayout) && (getLayoutParams() instanceof c0.f)) {
            if ((this.f51z > 0 || this.f36A) && (getBackground() instanceof G3.j)) {
                boolean z6 = AbstractC0185s.getAbsoluteGravity(((c0.f) getLayoutParams()).f8529a, AbstractC0181p0.getLayoutDirection(this)) == 3;
                G3.j jVar = (G3.j) getBackground();
                n allCornerSizes = jVar.getShapeAppearanceModel().toBuilder().setAllCornerSizes(this.f51z);
                if (z6) {
                    allCornerSizes.setTopLeftCornerSize(0.0f);
                    allCornerSizes.setBottomLeftCornerSize(0.0f);
                } else {
                    allCornerSizes.setTopRightCornerSize(0.0f);
                    allCornerSizes.setBottomRightCornerSize(0.0f);
                }
                p build = allCornerSizes.build();
                jVar.setShapeAppearanceModel(build);
                C c7 = this.f38C;
                c7.onShapeAppearanceChanged(this, build);
                c7.onMaskChanged(this, new RectF(0.0f, 0.0f, i2, i7));
                c7.setOffsetZeroCornerEdgeBoundsEnabled(this, true);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        this.f38C.maybeClip(canvas, new A0.a(this, 1));
    }

    public final Pair e() {
        ViewParent parent = getParent();
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if ((parent instanceof DrawerLayout) && (layoutParams instanceof c0.f)) {
            return new Pair((DrawerLayout) parent, (c0.f) layoutParams);
        }
        throw new IllegalStateException("NavigationView back progress requires the direct parent view to be a DrawerLayout.");
    }

    public z3.j getBackHelper() {
        return this.f39D;
    }

    public MenuItem getCheckedItem() {
        return this.f43r.getCheckedItem();
    }

    public int getDividerInsetEnd() {
        return this.f43r.getDividerInsetEnd();
    }

    public int getDividerInsetStart() {
        return this.f43r.getDividerInsetStart();
    }

    public int getHeaderCount() {
        return this.f43r.getHeaderCount();
    }

    public Drawable getItemBackground() {
        return this.f43r.getItemBackground();
    }

    public int getItemHorizontalPadding() {
        return this.f43r.getItemHorizontalPadding();
    }

    public int getItemIconPadding() {
        return this.f43r.getItemIconPadding();
    }

    public ColorStateList getItemIconTintList() {
        return this.f43r.getItemTintList();
    }

    public int getItemMaxLines() {
        return this.f43r.getItemMaxLines();
    }

    public ColorStateList getItemTextColor() {
        return this.f43r.getItemTextColor();
    }

    public int getItemVerticalPadding() {
        return this.f43r.getItemVerticalPadding();
    }

    public Menu getMenu() {
        return this.f42q;
    }

    public int getSubheaderInsetEnd() {
        return this.f43r.getSubheaderInsetEnd();
    }

    public int getSubheaderInsetStart() {
        return this.f43r.getSubheaderInsetStart();
    }

    @Override // z3.b
    public void handleBackInvoked() {
        Pair e3 = e();
        DrawerLayout drawerLayout = (DrawerLayout) e3.first;
        z3.j jVar = this.f39D;
        androidx.activity.c onHandleBackInvoked = jVar.onHandleBackInvoked();
        if (onHandleBackInvoked == null || Build.VERSION.SDK_INT < 34) {
            drawerLayout.closeDrawer(this);
        } else {
            jVar.finishBackProgress(onHandleBackInvoked, ((c0.f) e3.second).f8529a, c.getScrimCloseAnimatorListener(drawerLayout, this), c.getScrimCloseAnimatorUpdateListener(drawerLayout));
        }
    }

    public View inflateHeaderView(int i2) {
        return this.f43r.inflateHeaderView(i2);
    }

    public void inflateMenu(int i2) {
        C1826A c1826a = this.f43r;
        c1826a.setUpdateSuspended(true);
        getMenuInflater().inflate(i2, this.f42q);
        c1826a.setUpdateSuspended(false);
        c1826a.updateMenuView(false);
    }

    public boolean isBottomInsetScrimEnabled() {
        return this.f50y;
    }

    public boolean isTopInsetScrimEnabled() {
        return this.f49x;
    }

    @Override // x3.F, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        G3.k.setParentAbsoluteElevation(this);
        ViewParent parent = getParent();
        if (parent instanceof DrawerLayout) {
            z3.f fVar = this.f40E;
            if (fVar.shouldListenForBackCallbacks()) {
                DrawerLayout drawerLayout = (DrawerLayout) parent;
                e eVar = this.f41F;
                drawerLayout.removeDrawerListener(eVar);
                drawerLayout.addDrawerListener(eVar);
                if (drawerLayout.isDrawerOpen(this)) {
                    fVar.startListeningForBackCallbacksWithPriorityOverlay();
                }
            }
        }
    }

    @Override // x3.F, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getViewTreeObserver().removeOnGlobalLayoutListener(this.f48w);
        ViewParent parent = getParent();
        if (parent instanceof DrawerLayout) {
            ((DrawerLayout) parent).removeDrawerListener(this.f41F);
        }
    }

    @Override // x3.F
    public void onInsetsChanged(h1 h1Var) {
        this.f43r.dispatchApplyWindowInsets(h1Var);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i2, int i7) {
        int mode = View.MeasureSpec.getMode(i2);
        int i8 = this.f45t;
        if (mode == Integer.MIN_VALUE) {
            i2 = View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i2), i8), 1073741824);
        } else if (mode == 0) {
            i2 = View.MeasureSpec.makeMeasureSpec(i8, 1073741824);
        }
        super.onMeasure(i2, i7);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof j)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        j jVar = (j) parcelable;
        super.onRestoreInstanceState(jVar.getSuperState());
        this.f42q.restorePresenterStates(jVar.f32f);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        j jVar = new j(super.onSaveInstanceState());
        Bundle bundle = new Bundle();
        jVar.f32f = bundle;
        this.f42q.savePresenterStates(bundle);
        return jVar;
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i7, int i8, int i9) {
        super.onSizeChanged(i2, i7, i8, i9);
        d(i2, i7);
    }

    public void setBottomInsetScrimEnabled(boolean z6) {
        this.f50y = z6;
    }

    public void setCheckedItem(int i2) {
        MenuItem findItem = this.f42q.findItem(i2);
        if (findItem != null) {
            this.f43r.setCheckedItem((s) findItem);
        }
    }

    public void setDividerInsetEnd(int i2) {
        this.f43r.setDividerInsetEnd(i2);
    }

    public void setDividerInsetStart(int i2) {
        this.f43r.setDividerInsetStart(i2);
    }

    @Override // android.view.View
    public void setElevation(float f3) {
        super.setElevation(f3);
        G3.k.setElevation(this, f3);
    }

    public void setForceCompatClippingEnabled(boolean z6) {
        this.f38C.setForceCompatClippingEnabled(this, z6);
    }

    public void setItemBackground(Drawable drawable) {
        this.f43r.setItemBackground(drawable);
    }

    public void setItemBackgroundResource(int i2) {
        setItemBackground(A.h.getDrawable(getContext(), i2));
    }

    public void setItemHorizontalPadding(int i2) {
        this.f43r.setItemHorizontalPadding(i2);
    }

    public void setItemHorizontalPaddingResource(int i2) {
        this.f43r.setItemHorizontalPadding(getResources().getDimensionPixelSize(i2));
    }

    public void setItemIconPadding(int i2) {
        this.f43r.setItemIconPadding(i2);
    }

    public void setItemIconPaddingResource(int i2) {
        this.f43r.setItemIconPadding(getResources().getDimensionPixelSize(i2));
    }

    public void setItemIconSize(int i2) {
        this.f43r.setItemIconSize(i2);
    }

    public void setItemIconTintList(ColorStateList colorStateList) {
        this.f43r.setItemIconTintList(colorStateList);
    }

    public void setItemMaxLines(int i2) {
        this.f43r.setItemMaxLines(i2);
    }

    public void setItemTextAppearance(int i2) {
        this.f43r.setItemTextAppearance(i2);
    }

    public void setItemTextAppearanceActiveBoldEnabled(boolean z6) {
        this.f43r.setItemTextAppearanceActiveBoldEnabled(z6);
    }

    public void setItemTextColor(ColorStateList colorStateList) {
        this.f43r.setItemTextColor(colorStateList);
    }

    public void setItemVerticalPadding(int i2) {
        this.f43r.setItemVerticalPadding(i2);
    }

    public void setItemVerticalPaddingResource(int i2) {
        this.f43r.setItemVerticalPadding(getResources().getDimensionPixelSize(i2));
    }

    public void setNavigationItemSelectedListener(h hVar) {
        this.f44s = hVar;
    }

    @Override // android.view.View
    public void setOverScrollMode(int i2) {
        super.setOverScrollMode(i2);
        C1826A c1826a = this.f43r;
        if (c1826a != null) {
            c1826a.setOverScrollMode(i2);
        }
    }

    public void setSubheaderInsetEnd(int i2) {
        this.f43r.setSubheaderInsetEnd(i2);
    }

    public void setSubheaderInsetStart(int i2) {
        this.f43r.setSubheaderInsetStart(i2);
    }

    public void setTopInsetScrimEnabled(boolean z6) {
        this.f49x = z6;
    }

    @Override // z3.b
    public void startBackProgress(androidx.activity.c cVar) {
        e();
        this.f39D.startBackProgress(cVar);
    }

    @Override // z3.b
    public void updateBackProgress(androidx.activity.c cVar) {
        int i2 = ((c0.f) e().second).f8529a;
        z3.j jVar = this.f39D;
        jVar.updateBackProgress(cVar, i2);
        if (this.f36A) {
            this.f51z = AbstractC0951a.lerp(0, this.f37B, jVar.interpolateProgress(cVar.getProgress()));
            d(getWidth(), getHeight());
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public k(android.content.Context r17, android.util.AttributeSet r18, int r19) {
        /*
            Method dump skipped, instructions count: 618
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: A3.k.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    public void setCheckedItem(MenuItem menuItem) {
        MenuItem findItem = this.f42q.findItem(menuItem.getItemId());
        if (findItem != null) {
            this.f43r.setCheckedItem((s) findItem);
            return;
        }
        throw new IllegalArgumentException("Called setCheckedItem(MenuItem) with an item that is not in the current menu.");
    }
}
