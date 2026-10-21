package androidx.drawerlayout.widget;

import D.c;
import M.AbstractC0181p0;
import M.AbstractC0185s;
import M.h1;
import N.h;
import W.l;
import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import c0.C0668a;
import c0.C0670c;
import c0.ViewOnApplyWindowInsetsListenerC0669b;
import c0.d;
import c0.e;
import c0.f;
import c0.k;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class DrawerLayout extends ViewGroup {

    /* renamed from: M, reason: collision with root package name */
    public static final int[] f5935M = {R.attr.colorPrimaryDark};

    /* renamed from: N, reason: collision with root package name */
    public static final int[] f5936N = {R.attr.layout_gravity};

    /* renamed from: O, reason: collision with root package name */
    public static final boolean f5937O;

    /* renamed from: P, reason: collision with root package name */
    public static final boolean f5938P;

    /* renamed from: Q, reason: collision with root package name */
    public static final boolean f5939Q;

    /* renamed from: A, reason: collision with root package name */
    public boolean f5940A;

    /* renamed from: B, reason: collision with root package name */
    public e f5941B;

    /* renamed from: C, reason: collision with root package name */
    public ArrayList f5942C;

    /* renamed from: D, reason: collision with root package name */
    public float f5943D;

    /* renamed from: E, reason: collision with root package name */
    public float f5944E;

    /* renamed from: F, reason: collision with root package name */
    public Drawable f5945F;

    /* renamed from: G, reason: collision with root package name */
    public Object f5946G;

    /* renamed from: H, reason: collision with root package name */
    public boolean f5947H;

    /* renamed from: I, reason: collision with root package name */
    public final ArrayList f5948I;

    /* renamed from: J, reason: collision with root package name */
    public Rect f5949J;

    /* renamed from: K, reason: collision with root package name */
    public Matrix f5950K;

    /* renamed from: L, reason: collision with root package name */
    public final C0668a f5951L;

    /* renamed from: b, reason: collision with root package name */
    public final d f5952b;

    /* renamed from: e, reason: collision with root package name */
    public float f5953e;

    /* renamed from: f, reason: collision with root package name */
    public final int f5954f;

    /* renamed from: j, reason: collision with root package name */
    public int f5955j;

    /* renamed from: m, reason: collision with root package name */
    public float f5956m;

    /* renamed from: n, reason: collision with root package name */
    public final Paint f5957n;

    /* renamed from: p, reason: collision with root package name */
    public final l f5958p;

    /* renamed from: q, reason: collision with root package name */
    public final l f5959q;

    /* renamed from: r, reason: collision with root package name */
    public final k f5960r;

    /* renamed from: s, reason: collision with root package name */
    public final k f5961s;

    /* renamed from: t, reason: collision with root package name */
    public int f5962t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f5963u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f5964v;

    /* renamed from: w, reason: collision with root package name */
    public int f5965w;

    /* renamed from: x, reason: collision with root package name */
    public int f5966x;

    /* renamed from: y, reason: collision with root package name */
    public int f5967y;

    /* renamed from: z, reason: collision with root package name */
    public int f5968z;

    static {
        int i2 = Build.VERSION.SDK_INT;
        f5937O = true;
        f5938P = true;
        f5939Q = i2 >= 29;
    }

    public DrawerLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, androidx.drawerlayout.R.attr.drawerLayoutStyle);
    }

    public static String g(int i2) {
        return (i2 & 3) == 3 ? "LEFT" : (i2 & 5) == 5 ? "RIGHT" : Integer.toHexString(i2);
    }

    public static boolean h(View view) {
        return (AbstractC0181p0.getImportantForAccessibility(view) == 4 || AbstractC0181p0.getImportantForAccessibility(view) == 2) ? false : true;
    }

    public static boolean i(View view) {
        return ((f) view.getLayoutParams()).f8529a == 0;
    }

    public static boolean j(View view) {
        int absoluteGravity = AbstractC0185s.getAbsoluteGravity(((f) view.getLayoutParams()).f8529a, AbstractC0181p0.getLayoutDirection(view));
        return ((absoluteGravity & 3) == 0 && (absoluteGravity & 5) == 0) ? false : true;
    }

    public final boolean a(View view, int i2) {
        return (f(view) & i2) == i2;
    }

    public void addDrawerListener(e eVar) {
        if (eVar == null) {
            return;
        }
        if (this.f5942C == null) {
            this.f5942C = new ArrayList();
        }
        this.f5942C.add(eVar);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i2, int i7) {
        ArrayList arrayList2;
        if (getDescendantFocusability() == 393216) {
            return;
        }
        int childCount = getChildCount();
        int i8 = 0;
        boolean z6 = false;
        while (true) {
            arrayList2 = this.f5948I;
            if (i8 >= childCount) {
                break;
            }
            View childAt = getChildAt(i8);
            if (!j(childAt)) {
                arrayList2.add(childAt);
            } else if (isDrawerOpen(childAt)) {
                childAt.addFocusables(arrayList, i2, i7);
                z6 = true;
            }
            i8++;
        }
        if (!z6) {
            int size = arrayList2.size();
            for (int i9 = 0; i9 < size; i9++) {
                View view = (View) arrayList2.get(i9);
                if (view.getVisibility() == 0) {
                    view.addFocusables(arrayList, i2, i7);
                }
            }
        }
        arrayList2.clear();
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i2, layoutParams);
        if (d() != null || j(view)) {
            AbstractC0181p0.setImportantForAccessibility(view, 4);
        } else {
            AbstractC0181p0.setImportantForAccessibility(view, 1);
        }
        if (f5937O) {
            return;
        }
        AbstractC0181p0.setAccessibilityDelegate(view, this.f5952b);
    }

    public final void b(boolean z6) {
        int childCount = getChildCount();
        boolean z7 = false;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            f fVar = (f) childAt.getLayoutParams();
            if (j(childAt) && (!z6 || fVar.f8531c)) {
                z7 |= a(childAt, 3) ? this.f5958p.smoothSlideViewTo(childAt, -childAt.getWidth(), childAt.getTop()) : this.f5959q.smoothSlideViewTo(childAt, getWidth(), childAt.getTop());
                fVar.f8531c = false;
            }
        }
        this.f5960r.removeCallbacks();
        this.f5961s.removeCallbacks();
        if (z7) {
            invalidate();
        }
    }

    public final View c(int i2) {
        int absoluteGravity = AbstractC0185s.getAbsoluteGravity(i2, AbstractC0181p0.getLayoutDirection(this)) & 7;
        int childCount = getChildCount();
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            if ((f(childAt) & 7) == absoluteGravity) {
                return childAt;
            }
        }
        return null;
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof f) && super.checkLayoutParams(layoutParams);
    }

    public void closeDrawer(View view) {
        closeDrawer(view, true);
    }

    public void closeDrawers() {
        b(false);
    }

    @Override // android.view.View
    public void computeScroll() {
        int childCount = getChildCount();
        float f3 = 0.0f;
        for (int i2 = 0; i2 < childCount; i2++) {
            f3 = Math.max(f3, ((f) getChildAt(i2).getLayoutParams()).f8530b);
        }
        this.f5956m = f3;
        boolean continueSettling = this.f5958p.continueSettling(true);
        boolean continueSettling2 = this.f5959q.continueSettling(true);
        if (continueSettling || continueSettling2) {
            AbstractC0181p0.postInvalidateOnAnimation(this);
        }
    }

    public final View d() {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if ((((f) childAt.getLayoutParams()).f8532d & 1) == 1) {
                return childAt;
            }
        }
        return null;
    }

    @Override // android.view.View
    public boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        boolean dispatchGenericMotionEvent;
        if ((motionEvent.getSource() & 2) == 0 || motionEvent.getAction() == 10 || this.f5956m <= 0.0f) {
            return super.dispatchGenericMotionEvent(motionEvent);
        }
        int childCount = getChildCount();
        if (childCount == 0) {
            return false;
        }
        float x6 = motionEvent.getX();
        float y6 = motionEvent.getY();
        for (int i2 = childCount - 1; i2 >= 0; i2--) {
            View childAt = getChildAt(i2);
            if (this.f5949J == null) {
                this.f5949J = new Rect();
            }
            childAt.getHitRect(this.f5949J);
            if (this.f5949J.contains((int) x6, (int) y6) && !i(childAt)) {
                if (childAt.getMatrix().isIdentity()) {
                    float scrollX = getScrollX() - childAt.getLeft();
                    float scrollY = getScrollY() - childAt.getTop();
                    motionEvent.offsetLocation(scrollX, scrollY);
                    dispatchGenericMotionEvent = childAt.dispatchGenericMotionEvent(motionEvent);
                    motionEvent.offsetLocation(-scrollX, -scrollY);
                } else {
                    float scrollX2 = getScrollX() - childAt.getLeft();
                    float scrollY2 = getScrollY() - childAt.getTop();
                    MotionEvent obtain = MotionEvent.obtain(motionEvent);
                    obtain.offsetLocation(scrollX2, scrollY2);
                    Matrix matrix = childAt.getMatrix();
                    if (!matrix.isIdentity()) {
                        if (this.f5950K == null) {
                            this.f5950K = new Matrix();
                        }
                        matrix.invert(this.f5950K);
                        obtain.transform(this.f5950K);
                    }
                    dispatchGenericMotionEvent = childAt.dispatchGenericMotionEvent(obtain);
                    obtain.recycle();
                }
                if (dispatchGenericMotionEvent) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j7) {
        Drawable background;
        int height = getHeight();
        boolean i2 = i(view);
        int width = getWidth();
        int save = canvas.save();
        int i7 = 0;
        if (i2) {
            int childCount = getChildCount();
            int i8 = 0;
            for (int i9 = 0; i9 < childCount; i9++) {
                View childAt = getChildAt(i9);
                if (childAt != view && childAt.getVisibility() == 0 && (background = childAt.getBackground()) != null && background.getOpacity() == -1 && j(childAt) && childAt.getHeight() >= height) {
                    if (a(childAt, 3)) {
                        int right = childAt.getRight();
                        if (right > i8) {
                            i8 = right;
                        }
                    } else {
                        int left = childAt.getLeft();
                        if (left < width) {
                            width = left;
                        }
                    }
                }
            }
            canvas.clipRect(i8, 0, width, getHeight());
            i7 = i8;
        }
        boolean drawChild = super.drawChild(canvas, view, j7);
        canvas.restoreToCount(save);
        float f3 = this.f5956m;
        if (f3 > 0.0f && i2) {
            int i10 = this.f5955j;
            Paint paint = this.f5957n;
            paint.setColor((((int) ((((-16777216) & i10) >>> 24) * f3)) << 24) | (i10 & 16777215));
            canvas.drawRect(i7, 0.0f, width, getHeight(), paint);
        }
        return drawChild;
    }

    public final View e() {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (j(childAt) && isDrawerVisible(childAt)) {
                return childAt;
            }
        }
        return null;
    }

    public final int f(View view) {
        return AbstractC0185s.getAbsoluteGravity(((f) view.getLayoutParams()).f8529a, AbstractC0181p0.getLayoutDirection(this));
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new f(-1, -1);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof f ? new f((f) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new f((ViewGroup.MarginLayoutParams) layoutParams) : new f(layoutParams);
    }

    public float getDrawerElevation() {
        if (f5938P) {
            return this.f5953e;
        }
        return 0.0f;
    }

    public int getDrawerLockMode(int i2) {
        int layoutDirection = AbstractC0181p0.getLayoutDirection(this);
        if (i2 == 3) {
            int i7 = this.f5965w;
            if (i7 != 3) {
                return i7;
            }
            int i8 = layoutDirection == 0 ? this.f5967y : this.f5968z;
            if (i8 != 3) {
                return i8;
            }
            return 0;
        }
        if (i2 == 5) {
            int i9 = this.f5966x;
            if (i9 != 3) {
                return i9;
            }
            int i10 = layoutDirection == 0 ? this.f5968z : this.f5967y;
            if (i10 != 3) {
                return i10;
            }
            return 0;
        }
        if (i2 == 8388611) {
            int i11 = this.f5967y;
            if (i11 != 3) {
                return i11;
            }
            int i12 = layoutDirection == 0 ? this.f5965w : this.f5966x;
            if (i12 != 3) {
                return i12;
            }
            return 0;
        }
        if (i2 != 8388613) {
            return 0;
        }
        int i13 = this.f5968z;
        if (i13 != 3) {
            return i13;
        }
        int i14 = layoutDirection == 0 ? this.f5966x : this.f5965w;
        if (i14 != 3) {
            return i14;
        }
        return 0;
    }

    public CharSequence getDrawerTitle(int i2) {
        AbstractC0185s.getAbsoluteGravity(i2, AbstractC0181p0.getLayoutDirection(this));
        return null;
    }

    public Drawable getStatusBarBackgroundDrawable() {
        return this.f5945F;
    }

    public boolean isDrawerOpen(View view) {
        if (j(view)) {
            return (((f) view.getLayoutParams()).f8532d & 1) == 1;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    public boolean isDrawerVisible(View view) {
        if (j(view)) {
            return ((f) view.getLayoutParams()).f8530b > 0.0f;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    public final void k(View view, float f3) {
        float f7 = ((f) view.getLayoutParams()).f8530b;
        float width = view.getWidth();
        int i2 = ((int) (width * f3)) - ((int) (f7 * width));
        if (!a(view, 3)) {
            i2 = -i2;
        }
        view.offsetLeftAndRight(i2);
        l(view, f3);
    }

    public final void l(View view, float f3) {
        f fVar = (f) view.getLayoutParams();
        if (f3 == fVar.f8530b) {
            return;
        }
        fVar.f8530b = f3;
        ArrayList arrayList = this.f5942C;
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((e) this.f5942C.get(size)).onDrawerSlide(view, f3);
            }
        }
    }

    public final void m(View view) {
        h hVar = h.f2128l;
        AbstractC0181p0.removeAccessibilityAction(view, hVar.getId());
        if (!isDrawerOpen(view) || getDrawerLockMode(view) == 2) {
            return;
        }
        AbstractC0181p0.replaceAccessibilityAction(view, hVar, null, this.f5951L);
    }

    public final void n(View view, boolean z6) {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if ((z6 || j(childAt)) && !(z6 && childAt == view)) {
                AbstractC0181p0.setImportantForAccessibility(childAt, 4);
            } else {
                AbstractC0181p0.setImportantForAccessibility(childAt, 1);
            }
        }
    }

    public final void o(View view, int i2) {
        int i7;
        View rootView;
        int viewDragState = this.f5958p.getViewDragState();
        int viewDragState2 = this.f5959q.getViewDragState();
        if (viewDragState == 1 || viewDragState2 == 1) {
            i7 = 1;
        } else {
            i7 = 2;
            if (viewDragState != 2 && viewDragState2 != 2) {
                i7 = 0;
            }
        }
        if (view != null && i2 == 0) {
            float f3 = ((f) view.getLayoutParams()).f8530b;
            if (f3 == 0.0f) {
                f fVar = (f) view.getLayoutParams();
                if ((fVar.f8532d & 1) == 1) {
                    fVar.f8532d = 0;
                    ArrayList arrayList = this.f5942C;
                    if (arrayList != null) {
                        for (int size = arrayList.size() - 1; size >= 0; size--) {
                            ((e) this.f5942C.get(size)).onDrawerClosed(view);
                        }
                    }
                    n(view, false);
                    m(view);
                    if (hasWindowFocus() && (rootView = getRootView()) != null) {
                        rootView.sendAccessibilityEvent(32);
                    }
                }
            } else if (f3 == 1.0f) {
                f fVar2 = (f) view.getLayoutParams();
                if ((fVar2.f8532d & 1) == 0) {
                    fVar2.f8532d = 1;
                    ArrayList arrayList2 = this.f5942C;
                    if (arrayList2 != null) {
                        for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
                            ((e) this.f5942C.get(size2)).onDrawerOpened(view);
                        }
                    }
                    n(view, true);
                    m(view);
                    if (hasWindowFocus()) {
                        sendAccessibilityEvent(32);
                    }
                }
            }
        }
        if (i7 != this.f5962t) {
            this.f5962t = i7;
            ArrayList arrayList3 = this.f5942C;
            if (arrayList3 != null) {
                for (int size3 = arrayList3.size() - 1; size3 >= 0; size3--) {
                    ((e) this.f5942C.get(size3)).onDrawerStateChanged(i7);
                }
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f5964v = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f5964v = true;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.f5947H || this.f5945F == null) {
            return;
        }
        Object obj = this.f5946G;
        int systemWindowInsetTop = obj != null ? ((WindowInsets) obj).getSystemWindowInsetTop() : 0;
        if (systemWindowInsetTop > 0) {
            this.f5945F.setBounds(0, 0, getWidth(), systemWindowInsetTop);
            this.f5945F.draw(canvas);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x001b, code lost:
    
        if (r0 != 3) goto L13;
     */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onInterceptTouchEvent(android.view.MotionEvent r8) {
        /*
            r7 = this;
            int r0 = r8.getActionMasked()
            W.l r1 = r7.f5958p
            boolean r2 = r1.shouldInterceptTouchEvent(r8)
            W.l r3 = r7.f5959q
            boolean r3 = r3.shouldInterceptTouchEvent(r8)
            r2 = r2 | r3
            r3 = 1
            r4 = 0
            if (r0 == 0) goto L36
            if (r0 == r3) goto L2f
            r8 = 2
            r5 = 3
            if (r0 == r8) goto L1e
            if (r0 == r5) goto L2f
            goto L34
        L1e:
            boolean r8 = r1.checkTouchSlop(r5)
            if (r8 == 0) goto L34
            c0.k r8 = r7.f5960r
            r8.removeCallbacks()
            c0.k r8 = r7.f5961s
            r8.removeCallbacks()
            goto L34
        L2f:
            r7.b(r3)
            r7.f5940A = r4
        L34:
            r8 = r4
            goto L5c
        L36:
            float r0 = r8.getX()
            float r8 = r8.getY()
            r7.f5943D = r0
            r7.f5944E = r8
            float r5 = r7.f5956m
            r6 = 0
            int r5 = (r5 > r6 ? 1 : (r5 == r6 ? 0 : -1))
            if (r5 <= 0) goto L59
            int r0 = (int) r0
            int r8 = (int) r8
            android.view.View r8 = r1.findTopChildUnder(r0, r8)
            if (r8 == 0) goto L59
            boolean r8 = i(r8)
            if (r8 == 0) goto L59
            r8 = r3
            goto L5a
        L59:
            r8 = r4
        L5a:
            r7.f5940A = r4
        L5c:
            if (r2 != 0) goto L7f
            if (r8 != 0) goto L7f
            int r8 = r7.getChildCount()
            r0 = r4
        L65:
            if (r0 >= r8) goto L79
            android.view.View r1 = r7.getChildAt(r0)
            android.view.ViewGroup$LayoutParams r1 = r1.getLayoutParams()
            c0.f r1 = (c0.f) r1
            boolean r1 = r1.f8531c
            if (r1 == 0) goto L76
            goto L7f
        L76:
            int r0 = r0 + 1
            goto L65
        L79:
            boolean r8 = r7.f5940A
            if (r8 == 0) goto L7e
            goto L7f
        L7e:
            return r4
        L7f:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.drawerlayout.widget.DrawerLayout.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (i2 != 4 || e() == null) {
            return super.onKeyDown(i2, keyEvent);
        }
        keyEvent.startTracking();
        return true;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i2, KeyEvent keyEvent) {
        if (i2 != 4) {
            return super.onKeyUp(i2, keyEvent);
        }
        View e3 = e();
        if (e3 != null && getDrawerLockMode(e3) == 0) {
            closeDrawers();
        }
        return e3 != null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z6, int i2, int i7, int i8, int i9) {
        WindowInsets rootWindowInsets;
        float f3;
        int i10;
        boolean z7 = true;
        this.f5963u = true;
        int i11 = i8 - i2;
        int childCount = getChildCount();
        int i12 = 0;
        while (i12 < childCount) {
            View childAt = getChildAt(i12);
            if (childAt.getVisibility() != 8) {
                f fVar = (f) childAt.getLayoutParams();
                if (i(childAt)) {
                    int i13 = ((ViewGroup.MarginLayoutParams) fVar).leftMargin;
                    childAt.layout(i13, ((ViewGroup.MarginLayoutParams) fVar).topMargin, childAt.getMeasuredWidth() + i13, childAt.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) fVar).topMargin);
                } else {
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (a(childAt, 3)) {
                        float f7 = measuredWidth;
                        i10 = (-measuredWidth) + ((int) (fVar.f8530b * f7));
                        f3 = (measuredWidth + i10) / f7;
                    } else {
                        float f8 = measuredWidth;
                        f3 = (i11 - r11) / f8;
                        i10 = i11 - ((int) (fVar.f8530b * f8));
                    }
                    boolean z8 = f3 != fVar.f8530b ? z7 : false;
                    int i14 = fVar.f8529a & 112;
                    if (i14 == 16) {
                        int i15 = i9 - i7;
                        int i16 = (i15 - measuredHeight) / 2;
                        int i17 = ((ViewGroup.MarginLayoutParams) fVar).topMargin;
                        if (i16 < i17) {
                            i16 = i17;
                        } else {
                            int i18 = i16 + measuredHeight;
                            int i19 = i15 - ((ViewGroup.MarginLayoutParams) fVar).bottomMargin;
                            if (i18 > i19) {
                                i16 = i19 - measuredHeight;
                            }
                        }
                        childAt.layout(i10, i16, measuredWidth + i10, measuredHeight + i16);
                    } else if (i14 != 80) {
                        int i20 = ((ViewGroup.MarginLayoutParams) fVar).topMargin;
                        childAt.layout(i10, i20, measuredWidth + i10, measuredHeight + i20);
                    } else {
                        int i21 = i9 - i7;
                        childAt.layout(i10, (i21 - ((ViewGroup.MarginLayoutParams) fVar).bottomMargin) - childAt.getMeasuredHeight(), measuredWidth + i10, i21 - ((ViewGroup.MarginLayoutParams) fVar).bottomMargin);
                    }
                    if (z8) {
                        l(childAt, f3);
                    }
                    int i22 = fVar.f8530b > 0.0f ? 0 : 4;
                    if (childAt.getVisibility() != i22) {
                        childAt.setVisibility(i22);
                    }
                }
            }
            i12++;
            z7 = true;
        }
        if (f5939Q && (rootWindowInsets = getRootWindowInsets()) != null) {
            c systemGestureInsets = h1.toWindowInsetsCompat(rootWindowInsets).getSystemGestureInsets();
            l lVar = this.f5958p;
            lVar.setEdgeSize(Math.max(lVar.getDefaultEdgeSize(), systemGestureInsets.f808a));
            l lVar2 = this.f5959q;
            lVar2.setEdgeSize(Math.max(lVar2.getDefaultEdgeSize(), systemGestureInsets.f810c));
        }
        this.f5963u = false;
        this.f5964v = false;
    }

    @Override // android.view.View
    @SuppressLint({"WrongConstant"})
    public void onMeasure(int i2, int i7) {
        int mode = View.MeasureSpec.getMode(i2);
        int mode2 = View.MeasureSpec.getMode(i7);
        int size = View.MeasureSpec.getSize(i2);
        int size2 = View.MeasureSpec.getSize(i7);
        if (mode != 1073741824 || mode2 != 1073741824) {
            if (!isInEditMode()) {
                throw new IllegalArgumentException("DrawerLayout must be measured with MeasureSpec.EXACTLY.");
            }
            if (mode == 0) {
                size = 300;
            }
            if (mode2 == 0) {
                size2 = 300;
            }
        }
        setMeasuredDimension(size, size2);
        boolean z6 = this.f5946G != null && AbstractC0181p0.getFitsSystemWindows(this);
        int layoutDirection = AbstractC0181p0.getLayoutDirection(this);
        int childCount = getChildCount();
        boolean z7 = false;
        boolean z8 = false;
        for (int i8 = 0; i8 < childCount; i8++) {
            View childAt = getChildAt(i8);
            if (childAt.getVisibility() != 8) {
                f fVar = (f) childAt.getLayoutParams();
                if (z6) {
                    int absoluteGravity = AbstractC0185s.getAbsoluteGravity(fVar.f8529a, layoutDirection);
                    if (AbstractC0181p0.getFitsSystemWindows(childAt)) {
                        WindowInsets windowInsets = (WindowInsets) this.f5946G;
                        if (absoluteGravity == 3) {
                            windowInsets = windowInsets.replaceSystemWindowInsets(windowInsets.getSystemWindowInsetLeft(), windowInsets.getSystemWindowInsetTop(), 0, windowInsets.getSystemWindowInsetBottom());
                        } else if (absoluteGravity == 5) {
                            windowInsets = windowInsets.replaceSystemWindowInsets(0, windowInsets.getSystemWindowInsetTop(), windowInsets.getSystemWindowInsetRight(), windowInsets.getSystemWindowInsetBottom());
                        }
                        childAt.dispatchApplyWindowInsets(windowInsets);
                    } else {
                        WindowInsets windowInsets2 = (WindowInsets) this.f5946G;
                        if (absoluteGravity == 3) {
                            windowInsets2 = windowInsets2.replaceSystemWindowInsets(windowInsets2.getSystemWindowInsetLeft(), windowInsets2.getSystemWindowInsetTop(), 0, windowInsets2.getSystemWindowInsetBottom());
                        } else if (absoluteGravity == 5) {
                            windowInsets2 = windowInsets2.replaceSystemWindowInsets(0, windowInsets2.getSystemWindowInsetTop(), windowInsets2.getSystemWindowInsetRight(), windowInsets2.getSystemWindowInsetBottom());
                        }
                        ((ViewGroup.MarginLayoutParams) fVar).leftMargin = windowInsets2.getSystemWindowInsetLeft();
                        ((ViewGroup.MarginLayoutParams) fVar).topMargin = windowInsets2.getSystemWindowInsetTop();
                        ((ViewGroup.MarginLayoutParams) fVar).rightMargin = windowInsets2.getSystemWindowInsetRight();
                        ((ViewGroup.MarginLayoutParams) fVar).bottomMargin = windowInsets2.getSystemWindowInsetBottom();
                    }
                }
                if (i(childAt)) {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec((size - ((ViewGroup.MarginLayoutParams) fVar).leftMargin) - ((ViewGroup.MarginLayoutParams) fVar).rightMargin, 1073741824), View.MeasureSpec.makeMeasureSpec((size2 - ((ViewGroup.MarginLayoutParams) fVar).topMargin) - ((ViewGroup.MarginLayoutParams) fVar).bottomMargin, 1073741824));
                } else {
                    if (!j(childAt)) {
                        throw new IllegalStateException("Child " + childAt + " at index " + i8 + " does not have a valid layout_gravity - must be Gravity.LEFT, Gravity.RIGHT or Gravity.NO_GRAVITY");
                    }
                    if (f5938P) {
                        float elevation = AbstractC0181p0.getElevation(childAt);
                        float f3 = this.f5953e;
                        if (elevation != f3) {
                            AbstractC0181p0.setElevation(childAt, f3);
                        }
                    }
                    int f7 = f(childAt) & 7;
                    boolean z9 = f7 == 3;
                    if ((z9 && z7) || (!z9 && z8)) {
                        throw new IllegalStateException("Child drawer has absolute gravity " + g(f7) + " but this DrawerLayout already has a drawer view along that edge");
                    }
                    if (z9) {
                        z7 = true;
                    } else {
                        z8 = true;
                    }
                    childAt.measure(ViewGroup.getChildMeasureSpec(i2, this.f5954f + ((ViewGroup.MarginLayoutParams) fVar).leftMargin + ((ViewGroup.MarginLayoutParams) fVar).rightMargin, ((ViewGroup.MarginLayoutParams) fVar).width), ViewGroup.getChildMeasureSpec(i7, ((ViewGroup.MarginLayoutParams) fVar).topMargin + ((ViewGroup.MarginLayoutParams) fVar).bottomMargin, ((ViewGroup.MarginLayoutParams) fVar).height));
                }
            }
        }
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        View c7;
        if (!(parcelable instanceof c0.h)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        c0.h hVar = (c0.h) parcelable;
        super.onRestoreInstanceState(hVar.getSuperState());
        int i2 = hVar.f8533f;
        if (i2 != 0 && (c7 = c(i2)) != null) {
            openDrawer(c7);
        }
        int i7 = hVar.f8534j;
        if (i7 != 3) {
            setDrawerLockMode(i7, 3);
        }
        int i8 = hVar.f8535m;
        if (i8 != 3) {
            setDrawerLockMode(i8, 5);
        }
        int i9 = hVar.f8536n;
        if (i9 != 3) {
            setDrawerLockMode(i9, 8388611);
        }
        int i10 = hVar.f8537p;
        if (i10 != 3) {
            setDrawerLockMode(i10, 8388613);
        }
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i2) {
        if (f5938P) {
            return;
        }
        AbstractC0181p0.getLayoutDirection(this);
        AbstractC0181p0.getLayoutDirection(this);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        c0.h hVar = new c0.h(super.onSaveInstanceState());
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            f fVar = (f) getChildAt(i2).getLayoutParams();
            int i7 = fVar.f8532d;
            boolean z6 = i7 == 1;
            boolean z7 = i7 == 2;
            if (z6 || z7) {
                hVar.f8533f = fVar.f8529a;
                break;
            }
        }
        hVar.f8534j = this.f5965w;
        hVar.f8535m = this.f5966x;
        hVar.f8536n = this.f5967y;
        hVar.f8537p = this.f5968z;
        return hVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0054, code lost:
    
        if (getDrawerLockMode(r7) != 2) goto L21;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r7) {
        /*
            r6 = this;
            W.l r0 = r6.f5958p
            r0.processTouchEvent(r7)
            W.l r1 = r6.f5959q
            r1.processTouchEvent(r7)
            int r1 = r7.getAction()
            r1 = r1 & 255(0xff, float:3.57E-43)
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L5b
            if (r1 == r3) goto L20
            r7 = 3
            if (r1 == r7) goto L1a
            return r3
        L1a:
            r6.b(r3)
            r6.f5940A = r2
            return r3
        L20:
            float r1 = r7.getX()
            float r7 = r7.getY()
            int r4 = (int) r1
            int r5 = (int) r7
            android.view.View r4 = r0.findTopChildUnder(r4, r5)
            if (r4 == 0) goto L56
            boolean r4 = i(r4)
            if (r4 == 0) goto L56
            float r4 = r6.f5943D
            float r1 = r1 - r4
            float r4 = r6.f5944E
            float r7 = r7 - r4
            int r0 = r0.getTouchSlop()
            float r1 = r1 * r1
            float r7 = r7 * r7
            float r7 = r7 + r1
            int r0 = r0 * r0
            float r0 = (float) r0
            int r7 = (r7 > r0 ? 1 : (r7 == r0 ? 0 : -1))
            if (r7 >= 0) goto L56
            android.view.View r7 = r6.d()
            if (r7 == 0) goto L56
            int r7 = r6.getDrawerLockMode(r7)
            r0 = 2
            if (r7 != r0) goto L57
        L56:
            r2 = r3
        L57:
            r6.b(r2)
            return r3
        L5b:
            float r0 = r7.getX()
            float r7 = r7.getY()
            r6.f5943D = r0
            r6.f5944E = r7
            r6.f5940A = r2
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.drawerlayout.widget.DrawerLayout.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public void openDrawer(View view) {
        openDrawer(view, true);
    }

    public void removeDrawerListener(e eVar) {
        ArrayList arrayList;
        if (eVar == null || (arrayList = this.f5942C) == null) {
            return;
        }
        arrayList.remove(eVar);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z6) {
        super.requestDisallowInterceptTouchEvent(z6);
        if (z6) {
            b(true);
        }
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.f5963u) {
            return;
        }
        super.requestLayout();
    }

    public void setChildInsets(Object obj, boolean z6) {
        this.f5946G = obj;
        this.f5947H = z6;
        setWillNotDraw(!z6 && getBackground() == null);
        requestLayout();
    }

    public void setDrawerElevation(float f3) {
        this.f5953e = f3;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            if (j(childAt)) {
                AbstractC0181p0.setElevation(childAt, this.f5953e);
            }
        }
    }

    @Deprecated
    public void setDrawerListener(e eVar) {
        e eVar2 = this.f5941B;
        if (eVar2 != null) {
            removeDrawerListener(eVar2);
        }
        if (eVar != null) {
            addDrawerListener(eVar);
        }
        this.f5941B = eVar;
    }

    public void setDrawerLockMode(int i2) {
        setDrawerLockMode(i2, 3);
        setDrawerLockMode(i2, 5);
    }

    public void setScrimColor(int i2) {
        this.f5955j = i2;
        invalidate();
    }

    public void setStatusBarBackground(Drawable drawable) {
        this.f5945F = drawable;
        invalidate();
    }

    public void setStatusBarBackgroundColor(int i2) {
        this.f5945F = new ColorDrawable(i2);
        invalidate();
    }

    public DrawerLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f5952b = new d();
        this.f5955j = -1728053248;
        this.f5957n = new Paint();
        this.f5964v = true;
        this.f5965w = 3;
        this.f5966x = 3;
        this.f5967y = 3;
        this.f5968z = 3;
        this.f5951L = new C0668a(this);
        setDescendantFocusability(262144);
        float f3 = getResources().getDisplayMetrics().density;
        this.f5954f = (int) ((64.0f * f3) + 0.5f);
        float f7 = f3 * 400.0f;
        k kVar = new k(this, 3);
        this.f5960r = kVar;
        k kVar2 = new k(this, 5);
        this.f5961s = kVar2;
        l create = l.create(this, 1.0f, kVar);
        this.f5958p = create;
        create.setEdgeTrackingEnabled(1);
        create.setMinVelocity(f7);
        kVar.setDragger(create);
        l create2 = l.create(this, 1.0f, kVar2);
        this.f5959q = create2;
        create2.setEdgeTrackingEnabled(2);
        create2.setMinVelocity(f7);
        kVar2.setDragger(create2);
        setFocusableInTouchMode(true);
        AbstractC0181p0.setImportantForAccessibility(this, 1);
        AbstractC0181p0.setAccessibilityDelegate(this, new C0670c(this));
        setMotionEventSplittingEnabled(false);
        if (AbstractC0181p0.getFitsSystemWindows(this)) {
            setOnApplyWindowInsetsListener(new ViewOnApplyWindowInsetsListenerC0669b());
            setSystemUiVisibility(1280);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(f5935M);
            try {
                this.f5945F = obtainStyledAttributes.getDrawable(0);
            } finally {
                obtainStyledAttributes.recycle();
            }
        }
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, androidx.drawerlayout.R.styleable.DrawerLayout, i2, 0);
        try {
            if (obtainStyledAttributes2.hasValue(androidx.drawerlayout.R.styleable.DrawerLayout_elevation)) {
                this.f5953e = obtainStyledAttributes2.getDimension(androidx.drawerlayout.R.styleable.DrawerLayout_elevation, 0.0f);
            } else {
                this.f5953e = getResources().getDimension(androidx.drawerlayout.R.dimen.def_drawer_elevation);
            }
            obtainStyledAttributes2.recycle();
            this.f5948I = new ArrayList();
        } catch (Throwable th) {
            obtainStyledAttributes2.recycle();
            throw th;
        }
    }

    public void closeDrawer(View view, boolean z6) {
        if (!j(view)) {
            throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
        }
        f fVar = (f) view.getLayoutParams();
        if (this.f5964v) {
            fVar.f8530b = 0.0f;
            fVar.f8532d = 0;
        } else if (z6) {
            fVar.f8532d |= 4;
            if (a(view, 3)) {
                this.f5958p.smoothSlideViewTo(view, -view.getWidth(), view.getTop());
            } else {
                this.f5959q.smoothSlideViewTo(view, getWidth(), view.getTop());
            }
        } else {
            k(view, 0.0f);
            o(view, 0);
            view.setVisibility(4);
        }
        invalidate();
    }

    public void openDrawer(View view, boolean z6) {
        if (!j(view)) {
            throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
        }
        f fVar = (f) view.getLayoutParams();
        if (this.f5964v) {
            fVar.f8530b = 1.0f;
            fVar.f8532d = 1;
            n(view, true);
            m(view);
        } else if (z6) {
            fVar.f8532d |= 2;
            if (a(view, 3)) {
                this.f5958p.smoothSlideViewTo(view, 0, view.getTop());
            } else {
                this.f5959q.smoothSlideViewTo(view, getWidth() - view.getWidth(), view.getTop());
            }
        } else {
            k(view, 1.0f);
            o(view, 0);
            view.setVisibility(0);
        }
        invalidate();
    }

    public void setDrawerLockMode(int i2, int i7) {
        View c7;
        int absoluteGravity = AbstractC0185s.getAbsoluteGravity(i7, AbstractC0181p0.getLayoutDirection(this));
        if (i7 == 3) {
            this.f5965w = i2;
        } else if (i7 == 5) {
            this.f5966x = i2;
        } else if (i7 == 8388611) {
            this.f5967y = i2;
        } else if (i7 == 8388613) {
            this.f5968z = i2;
        }
        if (i2 != 0) {
            (absoluteGravity == 3 ? this.f5958p : this.f5959q).cancel();
        }
        if (i2 != 1) {
            if (i2 == 2 && (c7 = c(absoluteGravity)) != null) {
                openDrawer(c7);
                return;
            }
            return;
        }
        View c8 = c(absoluteGravity);
        if (c8 != null) {
            closeDrawer(c8);
        }
    }

    public void setStatusBarBackground(int i2) {
        this.f5945F = i2 != 0 ? A.h.getDrawable(getContext(), i2) : null;
        invalidate();
    }

    public boolean isDrawerVisible(int i2) {
        View c7 = c(i2);
        if (c7 != null) {
            return isDrawerVisible(c7);
        }
        return false;
    }

    public boolean isDrawerOpen(int i2) {
        View c7 = c(i2);
        if (c7 != null) {
            return isDrawerOpen(c7);
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new f(getContext(), attributeSet);
    }

    public int getDrawerLockMode(View view) {
        if (j(view)) {
            return getDrawerLockMode(((f) view.getLayoutParams()).f8529a);
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    public void closeDrawer(int i2) {
        closeDrawer(i2, true);
    }

    public void closeDrawer(int i2, boolean z6) {
        View c7 = c(i2);
        if (c7 != null) {
            closeDrawer(c7, z6);
        } else {
            throw new IllegalArgumentException("No drawer view found with gravity " + g(i2));
        }
    }

    public void openDrawer(int i2) {
        openDrawer(i2, true);
    }

    public void openDrawer(int i2, boolean z6) {
        View c7 = c(i2);
        if (c7 != null) {
            openDrawer(c7, z6);
        } else {
            throw new IllegalArgumentException("No drawer view found with gravity " + g(i2));
        }
    }
}
