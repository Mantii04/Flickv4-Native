package androidx.appcompat.widget;

import M.AbstractC0181p0;
import M.I;
import M.J;
import M.K;
import M.U0;
import M.h1;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.view.WindowInsets;
import android.widget.OverScroller;
import androidx.appcompat.R;
import androidx.media3.common.util.Log;
import e.x0;
import k.InterfaceC1059D;
import l.C1145g;
import l.C1157k;
import l.InterfaceC1154j;
import l.L0;
import l.M0;
import l.RunnableC1148h;
import l.RunnableC1151i;
import l.r2;

@SuppressLint({"UnknownNullness"})
/* loaded from: classes.dex */
public class ActionBarOverlayLayout extends ViewGroup implements L0, I, J {

    /* renamed from: K, reason: collision with root package name */
    public static final int[] f4987K = {R.attr.actionBarSize, android.R.attr.windowContentOverlay};

    /* renamed from: A, reason: collision with root package name */
    public h1 f4988A;

    /* renamed from: B, reason: collision with root package name */
    public h1 f4989B;

    /* renamed from: C, reason: collision with root package name */
    public h1 f4990C;

    /* renamed from: D, reason: collision with root package name */
    public InterfaceC1154j f4991D;

    /* renamed from: E, reason: collision with root package name */
    public OverScroller f4992E;

    /* renamed from: F, reason: collision with root package name */
    public ViewPropertyAnimator f4993F;

    /* renamed from: G, reason: collision with root package name */
    public final C1145g f4994G;

    /* renamed from: H, reason: collision with root package name */
    public final RunnableC1148h f4995H;

    /* renamed from: I, reason: collision with root package name */
    public final RunnableC1151i f4996I;

    /* renamed from: J, reason: collision with root package name */
    public final K f4997J;

    /* renamed from: b, reason: collision with root package name */
    public int f4998b;

    /* renamed from: e, reason: collision with root package name */
    public int f4999e;

    /* renamed from: f, reason: collision with root package name */
    public ContentFrameLayout f5000f;

    /* renamed from: j, reason: collision with root package name */
    public ActionBarContainer f5001j;

    /* renamed from: m, reason: collision with root package name */
    public M0 f5002m;

    /* renamed from: n, reason: collision with root package name */
    public Drawable f5003n;

    /* renamed from: p, reason: collision with root package name */
    public boolean f5004p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f5005q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f5006r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f5007s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f5008t;

    /* renamed from: u, reason: collision with root package name */
    public int f5009u;

    /* renamed from: v, reason: collision with root package name */
    public int f5010v;

    /* renamed from: w, reason: collision with root package name */
    public final Rect f5011w;

    /* renamed from: x, reason: collision with root package name */
    public final Rect f5012x;

    /* renamed from: y, reason: collision with root package name */
    public final Rect f5013y;

    /* renamed from: z, reason: collision with root package name */
    public h1 f5014z;

    public ActionBarOverlayLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4999e = 0;
        this.f5011w = new Rect();
        this.f5012x = new Rect();
        this.f5013y = new Rect();
        new Rect();
        new Rect();
        new Rect();
        new Rect();
        h1 h1Var = h1.f2029b;
        this.f5014z = h1Var;
        this.f4988A = h1Var;
        this.f4989B = h1Var;
        this.f4990C = h1Var;
        this.f4994G = new C1145g(this);
        this.f4995H = new RunnableC1148h(this);
        this.f4996I = new RunnableC1151i(this);
        c(context);
        this.f4997J = new K(this);
    }

    public static boolean a(View view, Rect rect, boolean z6) {
        boolean z7;
        C1157k c1157k = (C1157k) view.getLayoutParams();
        int i2 = ((ViewGroup.MarginLayoutParams) c1157k).leftMargin;
        int i7 = rect.left;
        if (i2 != i7) {
            ((ViewGroup.MarginLayoutParams) c1157k).leftMargin = i7;
            z7 = true;
        } else {
            z7 = false;
        }
        int i8 = ((ViewGroup.MarginLayoutParams) c1157k).topMargin;
        int i9 = rect.top;
        if (i8 != i9) {
            ((ViewGroup.MarginLayoutParams) c1157k).topMargin = i9;
            z7 = true;
        }
        int i10 = ((ViewGroup.MarginLayoutParams) c1157k).rightMargin;
        int i11 = rect.right;
        if (i10 != i11) {
            ((ViewGroup.MarginLayoutParams) c1157k).rightMargin = i11;
            z7 = true;
        }
        if (z6) {
            int i12 = ((ViewGroup.MarginLayoutParams) c1157k).bottomMargin;
            int i13 = rect.bottom;
            if (i12 != i13) {
                ((ViewGroup.MarginLayoutParams) c1157k).bottomMargin = i13;
                return true;
            }
        }
        return z7;
    }

    public final void b() {
        removeCallbacks(this.f4995H);
        removeCallbacks(this.f4996I);
        ViewPropertyAnimator viewPropertyAnimator = this.f4993F;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
    }

    public final void c(Context context) {
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(f4987K);
        this.f4998b = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        Drawable drawable = obtainStyledAttributes.getDrawable(1);
        this.f5003n = drawable;
        setWillNotDraw(drawable == null);
        obtainStyledAttributes.recycle();
        this.f5004p = context.getApplicationInfo().targetSdkVersion < 19;
        this.f4992E = new OverScroller(context);
    }

    @Override // l.L0
    public boolean canShowOverflowMenu() {
        d();
        return ((r2) this.f5002m).canShowOverflowMenu();
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C1157k;
    }

    public final void d() {
        M0 wrapper;
        if (this.f5000f == null) {
            this.f5000f = (ContentFrameLayout) findViewById(R.id.action_bar_activity_content);
            this.f5001j = (ActionBarContainer) findViewById(R.id.action_bar_container);
            KeyEvent.Callback findViewById = findViewById(R.id.action_bar);
            if (findViewById instanceof M0) {
                wrapper = (M0) findViewById;
            } else {
                if (!(findViewById instanceof Toolbar)) {
                    throw new IllegalStateException("Can't make a decor toolbar out of ".concat(findViewById.getClass().getSimpleName()));
                }
                wrapper = ((Toolbar) findViewById).getWrapper();
            }
            this.f5002m = wrapper;
        }
    }

    @Override // l.L0
    public void dismissPopups() {
        d();
        ((r2) this.f5002m).dismissPopupMenus();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        int i2;
        super.draw(canvas);
        if (this.f5003n == null || this.f5004p) {
            return;
        }
        if (this.f5001j.getVisibility() == 0) {
            i2 = (int) (this.f5001j.getTranslationY() + this.f5001j.getBottom() + 0.5f);
        } else {
            i2 = 0;
        }
        this.f5003n.setBounds(0, i2, getWidth(), this.f5003n.getIntrinsicHeight() + i2);
        this.f5003n.draw(canvas);
    }

    @Override // android.view.View
    public boolean fitSystemWindows(Rect rect) {
        return super.fitSystemWindows(rect);
    }

    public int getActionBarHideOffset() {
        ActionBarContainer actionBarContainer = this.f5001j;
        if (actionBarContainer != null) {
            return -((int) actionBarContainer.getTranslationY());
        }
        return 0;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.f4997J.getNestedScrollAxes();
    }

    public CharSequence getTitle() {
        d();
        return ((r2) this.f5002m).getTitle();
    }

    @Override // l.L0
    public boolean hideOverflowMenu() {
        d();
        return ((r2) this.f5002m).hideOverflowMenu();
    }

    @Override // l.L0
    public void initFeature(int i2) {
        d();
        if (i2 == 2) {
            ((r2) this.f5002m).initProgress();
        } else if (i2 == 5) {
            ((r2) this.f5002m).initIndeterminateProgress();
        } else {
            if (i2 != 109) {
                return;
            }
            setOverlayMode(true);
        }
    }

    public boolean isInOverlayMode() {
        return this.f5005q;
    }

    @Override // l.L0
    public boolean isOverflowMenuShowPending() {
        d();
        return ((r2) this.f5002m).isOverflowMenuShowPending();
    }

    @Override // l.L0
    public boolean isOverflowMenuShowing() {
        d();
        return ((r2) this.f5002m).isOverflowMenuShowing();
    }

    @Override // android.view.View
    public WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        d();
        h1 windowInsetsCompat = h1.toWindowInsetsCompat(windowInsets, this);
        boolean a7 = a(this.f5001j, new Rect(windowInsetsCompat.getSystemWindowInsetLeft(), windowInsetsCompat.getSystemWindowInsetTop(), windowInsetsCompat.getSystemWindowInsetRight(), windowInsetsCompat.getSystemWindowInsetBottom()), false);
        Rect rect = this.f5011w;
        AbstractC0181p0.computeSystemWindowInsets(this, windowInsetsCompat, rect);
        h1 inset = windowInsetsCompat.inset(rect.left, rect.top, rect.right, rect.bottom);
        this.f5014z = inset;
        boolean z6 = true;
        if (!this.f4988A.equals(inset)) {
            this.f4988A = this.f5014z;
            a7 = true;
        }
        Rect rect2 = this.f5012x;
        if (rect2.equals(rect)) {
            z6 = a7;
        } else {
            rect2.set(rect);
        }
        if (z6) {
            requestLayout();
        }
        return windowInsetsCompat.consumeDisplayCutout().consumeSystemWindowInsets().consumeStableInsets().toWindowInsets();
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        c(getContext());
        AbstractC0181p0.requestApplyInsets(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        b();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z6, int i2, int i7, int i8, int i9) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() != 8) {
                C1157k c1157k = (C1157k) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i11 = ((ViewGroup.MarginLayoutParams) c1157k).leftMargin + paddingLeft;
                int i12 = ((ViewGroup.MarginLayoutParams) c1157k).topMargin + paddingTop;
                childAt.layout(i11, i12, measuredWidth + i11, measuredHeight + i12);
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i7) {
        int measuredHeight;
        d();
        measureChildWithMargins(this.f5001j, i2, 0, i7, 0);
        C1157k c1157k = (C1157k) this.f5001j.getLayoutParams();
        int max = Math.max(0, this.f5001j.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) c1157k).leftMargin + ((ViewGroup.MarginLayoutParams) c1157k).rightMargin);
        int max2 = Math.max(0, this.f5001j.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) c1157k).topMargin + ((ViewGroup.MarginLayoutParams) c1157k).bottomMargin);
        int combineMeasuredStates = View.combineMeasuredStates(0, this.f5001j.getMeasuredState());
        boolean z6 = (AbstractC0181p0.getWindowSystemUiVisibility(this) & 256) != 0;
        if (z6) {
            measuredHeight = this.f4998b;
            if (this.f5006r && this.f5001j.getTabContainer() != null) {
                measuredHeight += this.f4998b;
            }
        } else {
            measuredHeight = this.f5001j.getVisibility() != 8 ? this.f5001j.getMeasuredHeight() : 0;
        }
        Rect rect = this.f5011w;
        Rect rect2 = this.f5013y;
        rect2.set(rect);
        h1 h1Var = this.f5014z;
        this.f4989B = h1Var;
        if (this.f5005q || z6) {
            this.f4989B = new U0(this.f4989B).setSystemWindowInsets(D.c.of(h1Var.getSystemWindowInsetLeft(), this.f4989B.getSystemWindowInsetTop() + measuredHeight, this.f4989B.getSystemWindowInsetRight(), this.f4989B.getSystemWindowInsetBottom())).build();
        } else {
            rect2.top += measuredHeight;
            rect2.bottom = rect2.bottom;
            this.f4989B = h1Var.inset(0, measuredHeight, 0, 0);
        }
        a(this.f5000f, rect2, true);
        if (!this.f4990C.equals(this.f4989B)) {
            h1 h1Var2 = this.f4989B;
            this.f4990C = h1Var2;
            AbstractC0181p0.dispatchApplyWindowInsets(this.f5000f, h1Var2);
        }
        measureChildWithMargins(this.f5000f, i2, 0, i7, 0);
        C1157k c1157k2 = (C1157k) this.f5000f.getLayoutParams();
        int max3 = Math.max(max, this.f5000f.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) c1157k2).leftMargin + ((ViewGroup.MarginLayoutParams) c1157k2).rightMargin);
        int max4 = Math.max(max2, this.f5000f.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) c1157k2).topMargin + ((ViewGroup.MarginLayoutParams) c1157k2).bottomMargin);
        int combineMeasuredStates2 = View.combineMeasuredStates(combineMeasuredStates, this.f5000f.getMeasuredState());
        setMeasuredDimension(View.resolveSizeAndState(Math.max(getPaddingRight() + getPaddingLeft() + max3, getSuggestedMinimumWidth()), i2, combineMeasuredStates2), View.resolveSizeAndState(Math.max(getPaddingBottom() + getPaddingTop() + max4, getSuggestedMinimumHeight()), i7, combineMeasuredStates2 << 16));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onNestedFling(View view, float f3, float f7, boolean z6) {
        if (!this.f5007s || !z6) {
            return false;
        }
        this.f4992E.fling(0, 0, 0, (int) f7, 0, 0, Integer.MIN_VALUE, Log.LOG_LEVEL_OFF);
        if (this.f4992E.getFinalY() > this.f5001j.getHeight()) {
            b();
            this.f4996I.run();
        } else {
            b();
            this.f4995H.run();
        }
        this.f5008t = true;
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onNestedPreFling(View view, float f3, float f7) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedPreScroll(View view, int i2, int i7, int[] iArr) {
    }

    @Override // M.J
    public void onNestedScroll(View view, int i2, int i7, int i8, int i9, int i10, int[] iArr) {
        onNestedScroll(view, i2, i7, i8, i9, i10);
    }

    @Override // M.I
    public void onNestedScrollAccepted(View view, View view2, int i2, int i7) {
        if (i7 == 0) {
            onNestedScrollAccepted(view, view2, i2);
        }
    }

    @Override // M.I
    public boolean onStartNestedScroll(View view, View view2, int i2, int i7) {
        return i7 == 0 && onStartNestedScroll(view, view2, i2);
    }

    @Override // M.I
    public void onStopNestedScroll(View view, int i2) {
        if (i2 == 0) {
            onStopNestedScroll(view);
        }
    }

    @Override // android.view.View
    @Deprecated
    public void onWindowSystemUiVisibilityChanged(int i2) {
        super.onWindowSystemUiVisibilityChanged(i2);
        d();
        int i7 = this.f5010v ^ i2;
        this.f5010v = i2;
        boolean z6 = (i2 & 4) == 0;
        boolean z7 = (i2 & 256) != 0;
        InterfaceC1154j interfaceC1154j = this.f4991D;
        if (interfaceC1154j != null) {
            ((x0) interfaceC1154j).enableContentAnimations(!z7);
            if (z6 || !z7) {
                ((x0) this.f4991D).showForSystem();
            } else {
                ((x0) this.f4991D).hideForSystem();
            }
        }
        if ((i7 & 256) == 0 || this.f4991D == null) {
            return;
        }
        AbstractC0181p0.requestApplyInsets(this);
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i2) {
        super.onWindowVisibilityChanged(i2);
        this.f4999e = i2;
        InterfaceC1154j interfaceC1154j = this.f4991D;
        if (interfaceC1154j != null) {
            ((x0) interfaceC1154j).onWindowVisibilityChanged(i2);
        }
    }

    public void setActionBarHideOffset(int i2) {
        b();
        this.f5001j.setTranslationY(-Math.max(0, Math.min(i2, this.f5001j.getHeight())));
    }

    public void setActionBarVisibilityCallback(InterfaceC1154j interfaceC1154j) {
        this.f4991D = interfaceC1154j;
        if (getWindowToken() != null) {
            ((x0) this.f4991D).onWindowVisibilityChanged(this.f4999e);
            int i2 = this.f5010v;
            if (i2 != 0) {
                onWindowSystemUiVisibilityChanged(i2);
                AbstractC0181p0.requestApplyInsets(this);
            }
        }
    }

    public void setHasNonEmbeddedTabs(boolean z6) {
        this.f5006r = z6;
    }

    public void setHideOnContentScrollEnabled(boolean z6) {
        if (z6 != this.f5007s) {
            this.f5007s = z6;
            if (z6) {
                return;
            }
            b();
            setActionBarHideOffset(0);
        }
    }

    public void setIcon(int i2) {
        d();
        ((r2) this.f5002m).setIcon(i2);
    }

    public void setLogo(int i2) {
        d();
        ((r2) this.f5002m).setLogo(i2);
    }

    @Override // l.L0
    public void setMenu(Menu menu, InterfaceC1059D interfaceC1059D) {
        d();
        ((r2) this.f5002m).setMenu(menu, interfaceC1059D);
    }

    @Override // l.L0
    public void setMenuPrepared() {
        d();
        ((r2) this.f5002m).setMenuPrepared();
    }

    public void setOverlayMode(boolean z6) {
        this.f5005q = z6;
        this.f5004p = z6 && getContext().getApplicationInfo().targetSdkVersion < 19;
    }

    public void setShowingForActionMode(boolean z6) {
    }

    public void setUiOptions(int i2) {
    }

    @Override // l.L0
    public void setWindowCallback(Window.Callback callback) {
        d();
        ((r2) this.f5002m).setWindowCallback(callback);
    }

    @Override // l.L0
    public void setWindowTitle(CharSequence charSequence) {
        d();
        ((r2) this.f5002m).setWindowTitle(charSequence);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // l.L0
    public boolean showOverflowMenu() {
        d();
        return ((r2) this.f5002m).showOverflowMenu();
    }

    @Override // android.view.ViewGroup
    public C1157k generateDefaultLayoutParams() {
        return new C1157k(-1, -1);
    }

    @Override // android.view.ViewGroup
    public C1157k generateLayoutParams(AttributeSet attributeSet) {
        return new C1157k(getContext(), attributeSet);
    }

    @Override // M.I
    public void onNestedPreScroll(View view, int i2, int i7, int[] iArr, int i8) {
        if (i8 == 0) {
            onNestedPreScroll(view, i2, i7, iArr);
        }
    }

    @Override // M.I
    public void onNestedScroll(View view, int i2, int i7, int i8, int i9, int i10) {
        if (i10 == 0) {
            onNestedScroll(view, i2, i7, i8, i9);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedScrollAccepted(View view, View view2, int i2) {
        this.f4997J.onNestedScrollAccepted(view, view2, i2);
        this.f5009u = getActionBarHideOffset();
        b();
        InterfaceC1154j interfaceC1154j = this.f4991D;
        if (interfaceC1154j != null) {
            ((x0) interfaceC1154j).onContentScrollStarted();
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onStartNestedScroll(View view, View view2, int i2) {
        if ((i2 & 2) == 0 || this.f5001j.getVisibility() != 0) {
            return false;
        }
        return this.f5007s;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onStopNestedScroll(View view) {
        if (this.f5007s && !this.f5008t) {
            if (this.f5009u <= this.f5001j.getHeight()) {
                b();
                postDelayed(this.f4995H, 600L);
            } else {
                b();
                postDelayed(this.f4996I, 600L);
            }
        }
        InterfaceC1154j interfaceC1154j = this.f4991D;
        if (interfaceC1154j != null) {
            ((x0) interfaceC1154j).onContentScrollStopped();
        }
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new C1157k(layoutParams);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedScroll(View view, int i2, int i7, int i8, int i9) {
        int i10 = this.f5009u + i7;
        this.f5009u = i10;
        setActionBarHideOffset(i10);
    }

    public void setIcon(Drawable drawable) {
        d();
        ((r2) this.f5002m).setIcon(drawable);
    }
}
