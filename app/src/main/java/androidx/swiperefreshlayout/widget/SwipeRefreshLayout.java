package androidx.swiperefreshlayout.widget;

import A.h;
import M.AbstractC0181p0;
import M.G;
import M.H;
import M.I;
import M.J;
import M.K;
import S.n;
import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.DecelerateInterpolator;
import android.widget.ListView;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import v1.AnimationAnimationListenerC1747f;
import v1.AnimationAnimationListenerC1751j;
import v1.C1742a;
import v1.C1746e;
import v1.C1748g;
import v1.C1749h;
import v1.C1750i;
import v1.C1752k;
import v1.C1753l;
import v1.C1757p;
import v1.InterfaceC1754m;
import v1.InterfaceC1755n;

/* loaded from: classes.dex */
public class SwipeRefreshLayout extends ViewGroup implements J, I, G {

    /* renamed from: T, reason: collision with root package name */
    public static final int[] f8167T = {R.attr.enabled};

    /* renamed from: A, reason: collision with root package name */
    public int f8168A;

    /* renamed from: B, reason: collision with root package name */
    public final DecelerateInterpolator f8169B;

    /* renamed from: C, reason: collision with root package name */
    public final C1742a f8170C;

    /* renamed from: D, reason: collision with root package name */
    public int f8171D;

    /* renamed from: E, reason: collision with root package name */
    public int f8172E;

    /* renamed from: F, reason: collision with root package name */
    public final int f8173F;

    /* renamed from: G, reason: collision with root package name */
    public final int f8174G;

    /* renamed from: H, reason: collision with root package name */
    public int f8175H;

    /* renamed from: I, reason: collision with root package name */
    public final C1746e f8176I;

    /* renamed from: J, reason: collision with root package name */
    public C1748g f8177J;

    /* renamed from: K, reason: collision with root package name */
    public C1749h f8178K;

    /* renamed from: L, reason: collision with root package name */
    public C1750i f8179L;

    /* renamed from: M, reason: collision with root package name */
    public C1750i f8180M;

    /* renamed from: N, reason: collision with root package name */
    public boolean f8181N;

    /* renamed from: O, reason: collision with root package name */
    public int f8182O;

    /* renamed from: P, reason: collision with root package name */
    public boolean f8183P;

    /* renamed from: Q, reason: collision with root package name */
    public final AnimationAnimationListenerC1747f f8184Q;

    /* renamed from: R, reason: collision with root package name */
    public final C1752k f8185R;

    /* renamed from: S, reason: collision with root package name */
    public final C1753l f8186S;

    /* renamed from: b, reason: collision with root package name */
    public View f8187b;

    /* renamed from: e, reason: collision with root package name */
    public InterfaceC1755n f8188e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f8189f;

    /* renamed from: j, reason: collision with root package name */
    public final int f8190j;

    /* renamed from: m, reason: collision with root package name */
    public float f8191m;

    /* renamed from: n, reason: collision with root package name */
    public float f8192n;

    /* renamed from: p, reason: collision with root package name */
    public final K f8193p;

    /* renamed from: q, reason: collision with root package name */
    public final H f8194q;

    /* renamed from: r, reason: collision with root package name */
    public final int[] f8195r;

    /* renamed from: s, reason: collision with root package name */
    public final int[] f8196s;

    /* renamed from: t, reason: collision with root package name */
    public final int[] f8197t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f8198u;

    /* renamed from: v, reason: collision with root package name */
    public final int f8199v;

    /* renamed from: w, reason: collision with root package name */
    public int f8200w;

    /* renamed from: x, reason: collision with root package name */
    public float f8201x;

    /* renamed from: y, reason: collision with root package name */
    public float f8202y;

    /* renamed from: z, reason: collision with root package name */
    public boolean f8203z;

    public SwipeRefreshLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f8189f = false;
        this.f8191m = -1.0f;
        this.f8195r = new int[2];
        this.f8196s = new int[2];
        this.f8197t = new int[2];
        this.f8168A = -1;
        this.f8171D = -1;
        this.f8184Q = new AnimationAnimationListenerC1747f(this);
        this.f8185R = new C1752k(this);
        this.f8186S = new C1753l(this);
        this.f8190j = ViewConfiguration.get(context).getScaledTouchSlop();
        this.f8199v = getResources().getInteger(R.integer.config_mediumAnimTime);
        setWillNotDraw(false);
        this.f8169B = new DecelerateInterpolator(2.0f);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.f8182O = (int) (displayMetrics.density * 40.0f);
        C1742a c1742a = new C1742a(getContext());
        float f3 = c1742a.getContext().getResources().getDisplayMetrics().density;
        TypedArray obtainStyledAttributes = c1742a.getContext().obtainStyledAttributes(androidx.swiperefreshlayout.R.styleable.SwipeRefreshLayout);
        c1742a.f20578e = obtainStyledAttributes.getColor(androidx.swiperefreshlayout.R.styleable.SwipeRefreshLayout_swipeRefreshLayoutProgressSpinnerBackgroundColor, -328966);
        obtainStyledAttributes.recycle();
        ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShape());
        AbstractC0181p0.setElevation(c1742a, f3 * 4.0f);
        shapeDrawable.getPaint().setColor(c1742a.f20578e);
        AbstractC0181p0.setBackground(c1742a, shapeDrawable);
        this.f8170C = c1742a;
        C1746e c1746e = new C1746e(getContext());
        this.f8176I = c1746e;
        c1746e.setStyle(1);
        this.f8170C.setImageDrawable(this.f8176I);
        this.f8170C.setVisibility(8);
        addView(this.f8170C);
        setChildrenDrawingOrderEnabled(true);
        int i2 = (int) (displayMetrics.density * 64.0f);
        this.f8174G = i2;
        this.f8191m = i2;
        this.f8193p = new K(this);
        this.f8194q = new H(this);
        setNestedScrollingEnabled(true);
        int i7 = -this.f8182O;
        this.f8200w = i7;
        this.f8173F = i7;
        d(1.0f);
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, f8167T);
        setEnabled(obtainStyledAttributes2.getBoolean(0, true));
        obtainStyledAttributes2.recycle();
    }

    private void setColorViewAlpha(int i2) {
        this.f8170C.getBackground().setAlpha(i2);
        this.f8176I.setAlpha(i2);
    }

    public final void a() {
        if (this.f8187b == null) {
            for (int i2 = 0; i2 < getChildCount(); i2++) {
                View childAt = getChildAt(i2);
                if (!childAt.equals(this.f8170C)) {
                    this.f8187b = childAt;
                    return;
                }
            }
        }
    }

    public final void b(float f3) {
        if (f3 > this.f8191m) {
            f(true, true);
            return;
        }
        this.f8189f = false;
        this.f8176I.setStartEndTrim(0.0f, 0.0f);
        AnimationAnimationListenerC1751j animationAnimationListenerC1751j = new AnimationAnimationListenerC1751j(this);
        this.f8172E = this.f8200w;
        C1753l c1753l = this.f8186S;
        c1753l.reset();
        c1753l.setDuration(200L);
        c1753l.setInterpolator(this.f8169B);
        this.f8170C.setAnimationListener(animationAnimationListenerC1751j);
        this.f8170C.clearAnimation();
        this.f8170C.startAnimation(c1753l);
        this.f8176I.setArrowEnabled(false);
    }

    public final void c(float f3) {
        C1750i c1750i;
        C1750i c1750i2;
        this.f8176I.setArrowEnabled(true);
        float min = Math.min(1.0f, Math.abs(f3 / this.f8191m));
        float max = (((float) Math.max(min - 0.4d, FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE)) * 5.0f) / 3.0f;
        float abs = Math.abs(f3) - this.f8191m;
        int i2 = this.f8175H;
        if (i2 <= 0) {
            i2 = this.f8174G;
        }
        float f7 = i2;
        double max2 = Math.max(0.0f, Math.min(abs, f7 * 2.0f) / f7) / 4.0f;
        float pow = ((float) (max2 - Math.pow(max2, 2.0d))) * 2.0f;
        int i7 = this.f8173F + ((int) ((f7 * min) + (f7 * pow * 2.0f)));
        if (this.f8170C.getVisibility() != 0) {
            this.f8170C.setVisibility(0);
        }
        this.f8170C.setScaleX(1.0f);
        this.f8170C.setScaleY(1.0f);
        if (f3 < this.f8191m) {
            if (this.f8176I.getAlpha() > 76 && ((c1750i2 = this.f8179L) == null || !c1750i2.hasStarted() || c1750i2.hasEnded())) {
                C1750i c1750i3 = new C1750i(this, this.f8176I.getAlpha(), 76);
                c1750i3.setDuration(300L);
                this.f8170C.setAnimationListener(null);
                this.f8170C.clearAnimation();
                this.f8170C.startAnimation(c1750i3);
                this.f8179L = c1750i3;
            }
        } else if (this.f8176I.getAlpha() < 255 && ((c1750i = this.f8180M) == null || !c1750i.hasStarted() || c1750i.hasEnded())) {
            C1750i c1750i4 = new C1750i(this, this.f8176I.getAlpha(), 255);
            c1750i4.setDuration(300L);
            this.f8170C.setAnimationListener(null);
            this.f8170C.clearAnimation();
            this.f8170C.startAnimation(c1750i4);
            this.f8180M = c1750i4;
        }
        this.f8176I.setStartEndTrim(0.0f, Math.min(0.8f, max * 0.8f));
        this.f8176I.setArrowScale(Math.min(1.0f, max));
        this.f8176I.setProgressRotation(((pow * 2.0f) + ((max * 0.4f) - 0.25f)) * 0.5f);
        setTargetOffsetTopAndBottom(i7 - this.f8200w);
    }

    public boolean canChildScrollUp() {
        View view = this.f8187b;
        return view instanceof ListView ? n.canScrollList((ListView) view, -1) : view.canScrollVertically(-1);
    }

    public final void d(float f3) {
        setTargetOffsetTopAndBottom((this.f8172E + ((int) ((this.f8173F - r0) * f3))) - this.f8170C.getTop());
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f3, float f7, boolean z6) {
        return this.f8194q.dispatchNestedFling(f3, f7, z6);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f3, float f7) {
        return this.f8194q.dispatchNestedPreFling(f3, f7);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i2, int i7, int[] iArr, int[] iArr2) {
        return this.f8194q.dispatchNestedPreScroll(i2, i7, iArr, iArr2);
    }

    public void dispatchNestedScroll(int i2, int i7, int i8, int i9, int[] iArr, int i10, int[] iArr2) {
        if (i10 == 0) {
            this.f8194q.dispatchNestedScroll(i2, i7, i8, i9, iArr, i10, iArr2);
        }
    }

    public final void e() {
        this.f8170C.clearAnimation();
        this.f8176I.stop();
        this.f8170C.setVisibility(8);
        setColorViewAlpha(255);
        setTargetOffsetTopAndBottom(this.f8173F - this.f8200w);
        this.f8200w = this.f8170C.getTop();
    }

    public final void f(boolean z6, boolean z7) {
        if (this.f8189f != z6) {
            this.f8181N = z7;
            a();
            this.f8189f = z6;
            AnimationAnimationListenerC1747f animationAnimationListenerC1747f = this.f8184Q;
            if (!z6) {
                h(animationAnimationListenerC1747f);
                return;
            }
            this.f8172E = this.f8200w;
            C1752k c1752k = this.f8185R;
            c1752k.reset();
            c1752k.setDuration(200L);
            c1752k.setInterpolator(this.f8169B);
            if (animationAnimationListenerC1747f != null) {
                this.f8170C.setAnimationListener(animationAnimationListenerC1747f);
            }
            this.f8170C.clearAnimation();
            this.f8170C.startAnimation(c1752k);
        }
    }

    public final void g(float f3) {
        float f7 = this.f8202y;
        float f8 = f3 - f7;
        float f9 = this.f8190j;
        if (f8 <= f9 || this.f8203z) {
            return;
        }
        this.f8201x = f7 + f9;
        this.f8203z = true;
        this.f8176I.setAlpha(76);
    }

    @Override // android.view.ViewGroup
    public int getChildDrawingOrder(int i2, int i7) {
        int i8 = this.f8171D;
        return i8 < 0 ? i7 : i7 == i2 + (-1) ? i8 : i7 >= i8 ? i7 + 1 : i7;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.f8193p.getNestedScrollAxes();
    }

    public int getProgressCircleDiameter() {
        return this.f8182O;
    }

    public int getProgressViewEndOffset() {
        return this.f8174G;
    }

    public int getProgressViewStartOffset() {
        return this.f8173F;
    }

    public final void h(AnimationAnimationListenerC1747f animationAnimationListenerC1747f) {
        C1749h c1749h = new C1749h(this);
        this.f8178K = c1749h;
        c1749h.setDuration(150L);
        this.f8170C.setAnimationListener(animationAnimationListenerC1747f);
        this.f8170C.clearAnimation();
        this.f8170C.startAnimation(this.f8178K);
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return this.f8194q.hasNestedScrollingParent();
    }

    @Override // android.view.View
    public boolean isNestedScrollingEnabled() {
        return this.f8194q.isNestedScrollingEnabled();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        e();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        a();
        int actionMasked = motionEvent.getActionMasked();
        if (isEnabled() && !canChildScrollUp() && !this.f8189f && !this.f8198u) {
            if (actionMasked != 0) {
                if (actionMasked != 1) {
                    if (actionMasked == 2) {
                        int i2 = this.f8168A;
                        if (i2 == -1) {
                            Log.e("SwipeRefreshLayout", "Got ACTION_MOVE event but don't have an active pointer id.");
                            return false;
                        }
                        int findPointerIndex = motionEvent.findPointerIndex(i2);
                        if (findPointerIndex >= 0) {
                            g(motionEvent.getY(findPointerIndex));
                        }
                    } else if (actionMasked != 3) {
                        if (actionMasked == 6) {
                            int actionIndex = motionEvent.getActionIndex();
                            if (motionEvent.getPointerId(actionIndex) == this.f8168A) {
                                this.f8168A = motionEvent.getPointerId(actionIndex == 0 ? 1 : 0);
                            }
                        }
                    }
                    return this.f8203z;
                }
                this.f8203z = false;
                this.f8168A = -1;
                return this.f8203z;
            }
            setTargetOffsetTopAndBottom(this.f8173F - this.f8170C.getTop());
            int pointerId = motionEvent.getPointerId(0);
            this.f8168A = pointerId;
            this.f8203z = false;
            int findPointerIndex2 = motionEvent.findPointerIndex(pointerId);
            if (findPointerIndex2 >= 0) {
                this.f8202y = motionEvent.getY(findPointerIndex2);
                return this.f8203z;
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z6, int i2, int i7, int i8, int i9) {
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        if (getChildCount() == 0) {
            return;
        }
        if (this.f8187b == null) {
            a();
        }
        View view = this.f8187b;
        if (view == null) {
            return;
        }
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        view.layout(paddingLeft, paddingTop, ((measuredWidth - getPaddingLeft()) - getPaddingRight()) + paddingLeft, ((measuredHeight - getPaddingTop()) - getPaddingBottom()) + paddingTop);
        int measuredWidth2 = this.f8170C.getMeasuredWidth();
        int measuredHeight2 = this.f8170C.getMeasuredHeight();
        int i10 = measuredWidth / 2;
        int i11 = measuredWidth2 / 2;
        int i12 = this.f8200w;
        this.f8170C.layout(i10 - i11, i12, i10 + i11, measuredHeight2 + i12);
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i7) {
        super.onMeasure(i2, i7);
        if (this.f8187b == null) {
            a();
        }
        View view = this.f8187b;
        if (view == null) {
            return;
        }
        view.measure(View.MeasureSpec.makeMeasureSpec((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), 1073741824), View.MeasureSpec.makeMeasureSpec((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), 1073741824));
        this.f8170C.measure(View.MeasureSpec.makeMeasureSpec(this.f8182O, 1073741824), View.MeasureSpec.makeMeasureSpec(this.f8182O, 1073741824));
        this.f8171D = -1;
        for (int i8 = 0; i8 < getChildCount(); i8++) {
            if (getChildAt(i8) == this.f8170C) {
                this.f8171D = i8;
                return;
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onNestedFling(View view, float f3, float f7, boolean z6) {
        return dispatchNestedFling(f3, f7, z6);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onNestedPreFling(View view, float f3, float f7) {
        return dispatchNestedPreFling(f3, f7);
    }

    @Override // M.I
    public void onNestedPreScroll(View view, int i2, int i7, int[] iArr, int i8) {
        if (i8 == 0) {
            onNestedPreScroll(view, i2, i7, iArr);
        }
    }

    @Override // M.J
    public void onNestedScroll(View view, int i2, int i7, int i8, int i9, int i10, int[] iArr) {
        if (i10 != 0) {
            return;
        }
        int i11 = iArr[1];
        dispatchNestedScroll(i2, i7, i8, i9, this.f8196s, i10, iArr);
        int i12 = i9 - (iArr[1] - i11);
        if ((i12 == 0 ? i9 + this.f8196s[1] : i12) >= 0 || canChildScrollUp()) {
            return;
        }
        float abs = this.f8192n + Math.abs(r14);
        this.f8192n = abs;
        c(abs);
        iArr[1] = iArr[1] + i12;
    }

    @Override // M.I
    public void onNestedScrollAccepted(View view, View view2, int i2, int i7) {
        if (i7 == 0) {
            onNestedScrollAccepted(view, view2, i2);
        }
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        C1757p c1757p = (C1757p) parcelable;
        super.onRestoreInstanceState(c1757p.getSuperState());
        setRefreshing(c1757p.f20622b);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        return new C1757p(super.onSaveInstanceState(), this.f8189f);
    }

    @Override // M.I
    public boolean onStartNestedScroll(View view, View view2, int i2, int i7) {
        if (i7 == 0) {
            return onStartNestedScroll(view, view2, i2);
        }
        return false;
    }

    @Override // M.I
    public void onStopNestedScroll(View view, int i2) {
        if (i2 == 0) {
            onStopNestedScroll(view);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (isEnabled() && !canChildScrollUp() && !this.f8189f && !this.f8198u) {
            if (actionMasked == 0) {
                this.f8168A = motionEvent.getPointerId(0);
                this.f8203z = false;
                return true;
            }
            if (actionMasked == 1) {
                int findPointerIndex = motionEvent.findPointerIndex(this.f8168A);
                if (findPointerIndex < 0) {
                    Log.e("SwipeRefreshLayout", "Got ACTION_UP event but don't have an active pointer id.");
                    return false;
                }
                if (this.f8203z) {
                    float y6 = (motionEvent.getY(findPointerIndex) - this.f8201x) * 0.5f;
                    this.f8203z = false;
                    b(y6);
                }
                this.f8168A = -1;
                return false;
            }
            if (actionMasked == 2) {
                int findPointerIndex2 = motionEvent.findPointerIndex(this.f8168A);
                if (findPointerIndex2 < 0) {
                    Log.e("SwipeRefreshLayout", "Got ACTION_MOVE event but have an invalid active pointer id.");
                    return false;
                }
                float y7 = motionEvent.getY(findPointerIndex2);
                g(y7);
                if (this.f8203z) {
                    float f3 = (y7 - this.f8201x) * 0.5f;
                    if (f3 > 0.0f) {
                        getParent().requestDisallowInterceptTouchEvent(true);
                        c(f3);
                    }
                }
                return true;
            }
            if (actionMasked != 3) {
                if (actionMasked != 5) {
                    if (actionMasked == 6) {
                        int actionIndex = motionEvent.getActionIndex();
                        if (motionEvent.getPointerId(actionIndex) == this.f8168A) {
                            this.f8168A = motionEvent.getPointerId(actionIndex == 0 ? 1 : 0);
                            return true;
                        }
                    }
                    return true;
                }
                int actionIndex2 = motionEvent.getActionIndex();
                if (actionIndex2 < 0) {
                    Log.e("SwipeRefreshLayout", "Got ACTION_POINTER_DOWN event but have an invalid action index.");
                    return false;
                }
                this.f8168A = motionEvent.getPointerId(actionIndex2);
                return true;
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z6) {
        ViewParent parent;
        View view = this.f8187b;
        if (view == null || AbstractC0181p0.isNestedScrollingEnabled(view)) {
            super.requestDisallowInterceptTouchEvent(z6);
        } else {
            if (this.f8183P || (parent = getParent()) == null) {
                return;
            }
            parent.requestDisallowInterceptTouchEvent(z6);
        }
    }

    public void setAnimationProgress(float f3) {
        this.f8170C.setScaleX(f3);
        this.f8170C.setScaleY(f3);
    }

    @Deprecated
    public void setColorScheme(int... iArr) {
        setColorSchemeResources(iArr);
    }

    public void setColorSchemeColors(int... iArr) {
        a();
        this.f8176I.setColorSchemeColors(iArr);
    }

    public void setColorSchemeResources(int... iArr) {
        Context context = getContext();
        int[] iArr2 = new int[iArr.length];
        for (int i2 = 0; i2 < iArr.length; i2++) {
            iArr2[i2] = h.getColor(context, iArr[i2]);
        }
        setColorSchemeColors(iArr2);
    }

    public void setDistanceToTriggerSync(int i2) {
        this.f8191m = i2;
    }

    @Override // android.view.View
    public void setEnabled(boolean z6) {
        super.setEnabled(z6);
        if (z6) {
            return;
        }
        e();
    }

    @Deprecated
    public void setLegacyRequestDisallowInterceptTouchEventEnabled(boolean z6) {
        this.f8183P = z6;
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z6) {
        this.f8194q.setNestedScrollingEnabled(z6);
    }

    public void setOnRefreshListener(InterfaceC1755n interfaceC1755n) {
        this.f8188e = interfaceC1755n;
    }

    @Deprecated
    public void setProgressBackgroundColor(int i2) {
        setProgressBackgroundColorSchemeResource(i2);
    }

    public void setProgressBackgroundColorSchemeColor(int i2) {
        this.f8170C.setBackgroundColor(i2);
    }

    public void setProgressBackgroundColorSchemeResource(int i2) {
        setProgressBackgroundColorSchemeColor(h.getColor(getContext(), i2));
    }

    public void setRefreshing(boolean z6) {
        if (!z6 || this.f8189f == z6) {
            f(z6, false);
            return;
        }
        this.f8189f = z6;
        setTargetOffsetTopAndBottom((this.f8174G + this.f8173F) - this.f8200w);
        this.f8181N = false;
        AnimationAnimationListenerC1747f animationAnimationListenerC1747f = this.f8184Q;
        this.f8170C.setVisibility(0);
        this.f8176I.setAlpha(255);
        C1748g c1748g = new C1748g(this);
        this.f8177J = c1748g;
        c1748g.setDuration(this.f8199v);
        if (animationAnimationListenerC1747f != null) {
            this.f8170C.setAnimationListener(animationAnimationListenerC1747f);
        }
        this.f8170C.clearAnimation();
        this.f8170C.startAnimation(this.f8177J);
    }

    public void setSize(int i2) {
        if (i2 == 0 || i2 == 1) {
            DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
            if (i2 == 0) {
                this.f8182O = (int) (displayMetrics.density * 56.0f);
            } else {
                this.f8182O = (int) (displayMetrics.density * 40.0f);
            }
            this.f8170C.setImageDrawable(null);
            this.f8176I.setStyle(i2);
            this.f8170C.setImageDrawable(this.f8176I);
        }
    }

    public void setSlingshotDistance(int i2) {
        this.f8175H = i2;
    }

    public void setTargetOffsetTopAndBottom(int i2) {
        this.f8170C.bringToFront();
        AbstractC0181p0.offsetTopAndBottom(this.f8170C, i2);
        this.f8200w = this.f8170C.getTop();
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i2) {
        return this.f8194q.startNestedScroll(i2);
    }

    @Override // android.view.View
    public void stopNestedScroll() {
        this.f8194q.stopNestedScroll();
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i2, int i7, int i8, int i9, int[] iArr) {
        return this.f8194q.dispatchNestedScroll(i2, i7, i8, i9, iArr);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedPreScroll(View view, int i2, int i7, int[] iArr) {
        if (i7 > 0) {
            float f3 = this.f8192n;
            if (f3 > 0.0f) {
                float f7 = i7;
                if (f7 > f3) {
                    iArr[1] = (int) f3;
                    this.f8192n = 0.0f;
                } else {
                    this.f8192n = f3 - f7;
                    iArr[1] = i7;
                }
                c(this.f8192n);
            }
        }
        int i8 = i2 - iArr[0];
        int i9 = i7 - iArr[1];
        int[] iArr2 = this.f8195r;
        if (dispatchNestedPreScroll(i8, i9, iArr2, null)) {
            iArr[0] = iArr[0] + iArr2[0];
            iArr[1] = iArr[1] + iArr2[1];
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedScrollAccepted(View view, View view2, int i2) {
        this.f8193p.onNestedScrollAccepted(view, view2, i2);
        startNestedScroll(i2 & 2);
        this.f8192n = 0.0f;
        this.f8198u = true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onStartNestedScroll(View view, View view2, int i2) {
        return (!isEnabled() || this.f8189f || (i2 & 2) == 0) ? false : true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onStopNestedScroll(View view) {
        this.f8193p.onStopNestedScroll(view);
        this.f8198u = false;
        float f3 = this.f8192n;
        if (f3 > 0.0f) {
            b(f3);
            this.f8192n = 0.0f;
        }
        stopNestedScroll();
    }

    @Override // M.I
    public void onNestedScroll(View view, int i2, int i7, int i8, int i9, int i10) {
        onNestedScroll(view, i2, i7, i8, i9, i10, this.f8197t);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedScroll(View view, int i2, int i7, int i8, int i9) {
        onNestedScroll(view, i2, i7, i8, i9, 0, this.f8197t);
    }

    public void setOnChildScrollUpCallback(InterfaceC1754m interfaceC1754m) {
    }
}
