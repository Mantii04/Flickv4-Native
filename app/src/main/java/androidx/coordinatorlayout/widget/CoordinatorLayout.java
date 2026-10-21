package androidx.coordinatorlayout.widget;

import A.h;
import E.c;
import L.g;
import M.AbstractC0181p0;
import M.AbstractC0185s;
import M.I;
import M.J;
import M.K;
import M.h1;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.coordinatorlayout.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import y.AbstractC1859c;
import y.AbstractC1868l;
import y.C1857a;
import y.C1862f;
import y.C1865i;
import y.C1866j;
import y.C1867k;
import y.InterfaceC1858b;
import y.InterfaceC1860d;
import y.ViewGroupOnHierarchyChangeListenerC1861e;
import y.ViewTreeObserverOnPreDrawListenerC1863g;

/* loaded from: classes.dex */
public class CoordinatorLayout extends ViewGroup implements I, J {

    /* renamed from: D, reason: collision with root package name */
    public static final String f5511D;

    /* renamed from: E, reason: collision with root package name */
    public static final Class[] f5512E;

    /* renamed from: F, reason: collision with root package name */
    public static final ThreadLocal f5513F;

    /* renamed from: G, reason: collision with root package name */
    public static final C1866j f5514G;

    /* renamed from: H, reason: collision with root package name */
    public static final g f5515H;

    /* renamed from: A, reason: collision with root package name */
    public ViewGroup.OnHierarchyChangeListener f5516A;

    /* renamed from: B, reason: collision with root package name */
    public C1857a f5517B;

    /* renamed from: C, reason: collision with root package name */
    public final K f5518C;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f5519b;

    /* renamed from: e, reason: collision with root package name */
    public final C1867k f5520e;

    /* renamed from: f, reason: collision with root package name */
    public final ArrayList f5521f;

    /* renamed from: j, reason: collision with root package name */
    public final ArrayList f5522j;

    /* renamed from: m, reason: collision with root package name */
    public Paint f5523m;

    /* renamed from: n, reason: collision with root package name */
    public final int[] f5524n;

    /* renamed from: p, reason: collision with root package name */
    public final int[] f5525p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f5526q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f5527r;

    /* renamed from: s, reason: collision with root package name */
    public final int[] f5528s;

    /* renamed from: t, reason: collision with root package name */
    public View f5529t;

    /* renamed from: u, reason: collision with root package name */
    public View f5530u;

    /* renamed from: v, reason: collision with root package name */
    public ViewTreeObserverOnPreDrawListenerC1863g f5531v;

    /* renamed from: w, reason: collision with root package name */
    public boolean f5532w;

    /* renamed from: x, reason: collision with root package name */
    public h1 f5533x;

    /* renamed from: y, reason: collision with root package name */
    public boolean f5534y;

    /* renamed from: z, reason: collision with root package name */
    public Drawable f5535z;

    static {
        Package r02 = CoordinatorLayout.class.getPackage();
        f5511D = r02 != null ? r02.getName() : null;
        f5514G = new C1866j();
        f5512E = new Class[]{Context.class, AttributeSet.class};
        f5513F = new ThreadLocal();
        f5515H = new g(12);
    }

    public CoordinatorLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.coordinatorLayoutStyle);
    }

    public static Rect a() {
        Rect rect = (Rect) f5515H.acquire();
        return rect == null ? new Rect() : rect;
    }

    public static void d(int i2, Rect rect, Rect rect2, C1862f c1862f, int i7, int i8) {
        int i9 = c1862f.f20938c;
        if (i9 == 0) {
            i9 = 17;
        }
        int absoluteGravity = AbstractC0185s.getAbsoluteGravity(i9, i2);
        int i10 = c1862f.f20939d;
        if ((i10 & 7) == 0) {
            i10 |= 8388611;
        }
        if ((i10 & 112) == 0) {
            i10 |= 48;
        }
        int absoluteGravity2 = AbstractC0185s.getAbsoluteGravity(i10, i2);
        int i11 = absoluteGravity & 7;
        int i12 = absoluteGravity & 112;
        int i13 = absoluteGravity2 & 7;
        int i14 = absoluteGravity2 & 112;
        int width = i13 != 1 ? i13 != 5 ? rect.left : rect.right : rect.left + (rect.width() / 2);
        int height = i14 != 16 ? i14 != 80 ? rect.top : rect.bottom : rect.top + (rect.height() / 2);
        if (i11 == 1) {
            width -= i7 / 2;
        } else if (i11 != 5) {
            width -= i7;
        }
        if (i12 == 16) {
            height -= i8 / 2;
        } else if (i12 != 80) {
            height -= i8;
        }
        rect2.set(width, height, i7 + width, i8 + height);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static C1862f f(View view) {
        C1862f c1862f = (C1862f) view.getLayoutParams();
        if (!c1862f.f20937b) {
            if (view instanceof InterfaceC1858b) {
                AbstractC1859c behavior = ((InterfaceC1858b) view).getBehavior();
                if (behavior == null) {
                    Log.e("CoordinatorLayout", "Attached behavior class is null");
                }
                c1862f.setBehavior(behavior);
                c1862f.f20937b = true;
                return c1862f;
            }
            InterfaceC1860d interfaceC1860d = null;
            for (Class<?> cls = view.getClass(); cls != null; cls = cls.getSuperclass()) {
                interfaceC1860d = (InterfaceC1860d) cls.getAnnotation(InterfaceC1860d.class);
                if (interfaceC1860d != null) {
                    break;
                }
            }
            if (interfaceC1860d != null) {
                try {
                    c1862f.setBehavior((AbstractC1859c) interfaceC1860d.value().getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
                } catch (Exception e3) {
                    Log.e("CoordinatorLayout", "Default behavior class " + interfaceC1860d.value().getName() + " could not be instantiated. Did you forget a default constructor?", e3);
                }
            }
            c1862f.f20937b = true;
        }
        return c1862f;
    }

    public static void k(View view, int i2) {
        C1862f c1862f = (C1862f) view.getLayoutParams();
        int i7 = c1862f.f20944i;
        if (i7 != i2) {
            AbstractC0181p0.offsetLeftAndRight(view, i2 - i7);
            c1862f.f20944i = i2;
        }
    }

    public static void l(View view, int i2) {
        C1862f c1862f = (C1862f) view.getLayoutParams();
        int i7 = c1862f.f20945j;
        if (i7 != i2) {
            AbstractC0181p0.offsetTopAndBottom(view, i2 - i7);
            c1862f.f20945j = i2;
        }
    }

    public final void b(C1862f c1862f, Rect rect, int i2, int i7) {
        int width = getWidth();
        int height = getHeight();
        int max = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) c1862f).leftMargin, Math.min(rect.left, ((width - getPaddingRight()) - i2) - ((ViewGroup.MarginLayoutParams) c1862f).rightMargin));
        int max2 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) c1862f).topMargin, Math.min(rect.top, ((height - getPaddingBottom()) - i7) - ((ViewGroup.MarginLayoutParams) c1862f).bottomMargin));
        rect.set(max, max2, i2 + max, i7 + max2);
    }

    public final void c(View view, Rect rect, boolean z6) {
        if (view.isLayoutRequested() || view.getVisibility() == 8) {
            rect.setEmpty();
        } else if (z6) {
            AbstractC1868l.getDescendantRect(this, view, rect);
        } else {
            rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof C1862f) && super.checkLayoutParams(layoutParams);
    }

    public void dispatchDependentViewsChanged(View view) {
        List incomingEdges = this.f5520e.getIncomingEdges(view);
        if (incomingEdges == null || incomingEdges.isEmpty()) {
            return;
        }
        for (int i2 = 0; i2 < incomingEdges.size(); i2++) {
            View view2 = (View) incomingEdges.get(i2);
            AbstractC1859c behavior = ((C1862f) view2.getLayoutParams()).getBehavior();
            if (behavior != null) {
                behavior.onDependentViewChanged(this, view2, view);
            }
        }
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j7) {
        C1862f c1862f = (C1862f) view.getLayoutParams();
        AbstractC1859c abstractC1859c = c1862f.f20936a;
        if (abstractC1859c != null) {
            float scrimOpacity = abstractC1859c.getScrimOpacity(this, view);
            if (scrimOpacity > 0.0f) {
                if (this.f5523m == null) {
                    this.f5523m = new Paint();
                }
                this.f5523m.setColor(c1862f.f20936a.getScrimColor(this, view));
                Paint paint = this.f5523m;
                int round = Math.round(scrimOpacity * 255.0f);
                if (round < 0) {
                    round = 0;
                } else if (round > 255) {
                    round = 255;
                }
                paint.setAlpha(round);
                int save = canvas.save();
                if (view.isOpaque()) {
                    canvas.clipRect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom(), Region.Op.DIFFERENCE);
                }
                canvas.drawRect(getPaddingLeft(), getPaddingTop(), getWidth() - getPaddingRight(), getHeight() - getPaddingBottom(), this.f5523m);
                canvas.restoreToCount(save);
                return super.drawChild(canvas, view, j7);
            }
        }
        return super.drawChild(canvas, view, j7);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f5535z;
        if ((drawable == null || !drawable.isStateful()) ? false : drawable.setState(drawableState)) {
            invalidate();
        }
    }

    public final int e(int i2) {
        int[] iArr = this.f5528s;
        if (iArr == null) {
            Log.e("CoordinatorLayout", "No keylines defined for " + this + " - attempted index lookup " + i2);
            return 0;
        }
        if (i2 >= 0 && i2 < iArr.length) {
            return iArr[i2];
        }
        Log.e("CoordinatorLayout", "Keyline index " + i2 + " out of range for " + this);
        return 0;
    }

    public final void g(int i2) {
        int i7;
        Rect rect;
        int i8;
        ArrayList arrayList;
        boolean z6;
        boolean z7;
        boolean z8;
        int width;
        int i9;
        int i10;
        int i11;
        int height;
        int i12;
        int i13;
        int i14;
        int i15;
        ArrayList arrayList2;
        int i16;
        Rect rect2;
        int i17;
        View view;
        C1862f c1862f;
        AbstractC1859c behavior;
        int layoutDirection = AbstractC0181p0.getLayoutDirection(this);
        ArrayList arrayList3 = this.f5519b;
        int size = arrayList3.size();
        Rect a7 = a();
        Rect a8 = a();
        Rect a9 = a();
        int i18 = 0;
        while (true) {
            g gVar = f5515H;
            if (i18 >= size) {
                Rect rect3 = a9;
                a7.setEmpty();
                gVar.release(a7);
                a8.setEmpty();
                gVar.release(a8);
                rect3.setEmpty();
                gVar.release(rect3);
                return;
            }
            View view2 = (View) arrayList3.get(i18);
            C1862f c1862f2 = (C1862f) view2.getLayoutParams();
            if (i2 != 0 || view2.getVisibility() != 8) {
                int i19 = 0;
                while (i19 < i18) {
                    if (c1862f2.f20947l == ((View) arrayList3.get(i19))) {
                        C1862f c1862f3 = (C1862f) view2.getLayoutParams();
                        if (c1862f3.f20946k != null) {
                            Rect a10 = a();
                            Rect a11 = a();
                            C1862f c1862f4 = c1862f2;
                            Rect a12 = a();
                            AbstractC1868l.getDescendantRect(this, c1862f3.f20946k, a10);
                            c(view2, a11, false);
                            int measuredWidth = view2.getMeasuredWidth();
                            View view3 = view2;
                            int measuredHeight = view3.getMeasuredHeight();
                            i15 = i19;
                            layoutDirection = layoutDirection;
                            arrayList2 = arrayList3;
                            c1862f = c1862f4;
                            i17 = i18;
                            view = view3;
                            d(layoutDirection, a10, a12, c1862f3, measuredWidth, measuredHeight);
                            i16 = size;
                            rect2 = a9;
                            boolean z9 = (a12.left == a11.left && a12.top == a11.top) ? false : true;
                            b(c1862f3, a12, measuredWidth, measuredHeight);
                            int i20 = a12.left - a11.left;
                            int i21 = a12.top - a11.top;
                            if (i20 != 0) {
                                AbstractC0181p0.offsetLeftAndRight(view, i20);
                            }
                            if (i21 != 0) {
                                AbstractC0181p0.offsetTopAndBottom(view, i21);
                            }
                            if (z9 && (behavior = c1862f3.getBehavior()) != null) {
                                behavior.onDependentViewChanged(this, view, c1862f3.f20946k);
                            }
                            a10.setEmpty();
                            gVar.release(a10);
                            a11.setEmpty();
                            gVar.release(a11);
                            a12.setEmpty();
                            gVar.release(a12);
                            i19 = i15 + 1;
                            c1862f2 = c1862f;
                            view2 = view;
                            arrayList3 = arrayList2;
                            size = i16;
                            i18 = i17;
                            a9 = rect2;
                        }
                    }
                    i15 = i19;
                    arrayList2 = arrayList3;
                    i16 = size;
                    rect2 = a9;
                    i17 = i18;
                    view = view2;
                    c1862f = c1862f2;
                    i19 = i15 + 1;
                    c1862f2 = c1862f;
                    view2 = view;
                    arrayList3 = arrayList2;
                    size = i16;
                    i18 = i17;
                    a9 = rect2;
                }
                ArrayList arrayList4 = arrayList3;
                int i22 = size;
                Rect rect4 = a9;
                i7 = i18;
                View view4 = view2;
                C1862f c1862f5 = c1862f2;
                c(view4, a8, true);
                if (c1862f5.f20942g != 0 && !a8.isEmpty()) {
                    int absoluteGravity = AbstractC0185s.getAbsoluteGravity(c1862f5.f20942g, layoutDirection);
                    int i23 = absoluteGravity & 112;
                    if (i23 == 48) {
                        a7.top = Math.max(a7.top, a8.bottom);
                    } else if (i23 == 80) {
                        a7.bottom = Math.max(a7.bottom, getHeight() - a8.top);
                    }
                    int i24 = absoluteGravity & 7;
                    if (i24 == 3) {
                        a7.left = Math.max(a7.left, a8.right);
                    } else if (i24 == 5) {
                        a7.right = Math.max(a7.right, getWidth() - a8.left);
                    }
                }
                if (c1862f5.f20943h != 0 && view4.getVisibility() == 0 && AbstractC0181p0.isLaidOut(view4) && view4.getWidth() > 0 && view4.getHeight() > 0) {
                    C1862f c1862f6 = (C1862f) view4.getLayoutParams();
                    AbstractC1859c behavior2 = c1862f6.getBehavior();
                    Rect a13 = a();
                    Rect a14 = a();
                    a14.set(view4.getLeft(), view4.getTop(), view4.getRight(), view4.getBottom());
                    if (behavior2 == null || !behavior2.getInsetDodgeRect(this, view4, a13)) {
                        a13.set(a14);
                    } else if (!a14.contains(a13)) {
                        throw new IllegalArgumentException("Rect should be within the child's bounds. Rect:" + a13.toShortString() + " | Bounds:" + a14.toShortString());
                    }
                    a14.setEmpty();
                    gVar.release(a14);
                    if (a13.isEmpty()) {
                        a13.setEmpty();
                        gVar.release(a13);
                    } else {
                        int absoluteGravity2 = AbstractC0185s.getAbsoluteGravity(c1862f6.f20943h, layoutDirection);
                        if ((absoluteGravity2 & 48) != 48 || (i13 = (a13.top - ((ViewGroup.MarginLayoutParams) c1862f6).topMargin) - c1862f6.f20945j) >= (i14 = a7.top)) {
                            z7 = false;
                        } else {
                            l(view4, i14 - i13);
                            z7 = true;
                        }
                        if ((absoluteGravity2 & 80) == 80 && (height = ((getHeight() - a13.bottom) - ((ViewGroup.MarginLayoutParams) c1862f6).bottomMargin) + c1862f6.f20945j) < (i12 = a7.bottom)) {
                            l(view4, height - i12);
                            z7 = true;
                        }
                        if (!z7) {
                            l(view4, 0);
                        }
                        if ((absoluteGravity2 & 3) != 3 || (i10 = (a13.left - ((ViewGroup.MarginLayoutParams) c1862f6).leftMargin) - c1862f6.f20944i) >= (i11 = a7.left)) {
                            z8 = false;
                        } else {
                            k(view4, i11 - i10);
                            z8 = true;
                        }
                        if ((absoluteGravity2 & 5) == 5 && (width = ((getWidth() - a13.right) - ((ViewGroup.MarginLayoutParams) c1862f6).rightMargin) + c1862f6.f20944i) < (i9 = a7.right)) {
                            k(view4, width - i9);
                            z8 = true;
                        }
                        if (!z8) {
                            k(view4, 0);
                        }
                        a13.setEmpty();
                        gVar.release(a13);
                    }
                }
                if (i2 != 2) {
                    rect = rect4;
                    rect.set(((C1862f) view4.getLayoutParams()).f20952q);
                    if (rect.equals(a8)) {
                        arrayList = arrayList4;
                        i8 = i22;
                    } else {
                        ((C1862f) view4.getLayoutParams()).f20952q.set(a8);
                    }
                } else {
                    rect = rect4;
                }
                int i25 = i7 + 1;
                i8 = i22;
                while (true) {
                    arrayList = arrayList4;
                    if (i25 >= i8) {
                        break;
                    }
                    View view5 = (View) arrayList.get(i25);
                    C1862f c1862f7 = (C1862f) view5.getLayoutParams();
                    AbstractC1859c behavior3 = c1862f7.getBehavior();
                    if (behavior3 != null && behavior3.layoutDependsOn(this, view5, view4)) {
                        if (i2 == 0 && c1862f7.f20951p) {
                            c1862f7.f20951p = false;
                        } else {
                            if (i2 != 2) {
                                z6 = behavior3.onDependentViewChanged(this, view5, view4);
                            } else {
                                behavior3.onDependentViewRemoved(this, view5, view4);
                                z6 = true;
                            }
                            if (i2 == 1) {
                                c1862f7.f20951p = z6;
                            }
                        }
                    }
                    i25++;
                    arrayList4 = arrayList;
                }
            } else {
                arrayList = arrayList3;
                i8 = size;
                rect = a9;
                i7 = i18;
            }
            i18 = i7 + 1;
            a9 = rect;
            size = i8;
            arrayList3 = arrayList;
        }
    }

    public List<View> getDependencies(View view) {
        List<Object> outgoingEdges = this.f5520e.getOutgoingEdges(view);
        ArrayList arrayList = this.f5522j;
        arrayList.clear();
        if (outgoingEdges != null) {
            arrayList.addAll(outgoingEdges);
        }
        return arrayList;
    }

    public final List<View> getDependencySortedChildren() {
        i();
        return Collections.unmodifiableList(this.f5519b);
    }

    public List<View> getDependents(View view) {
        List incomingEdges = this.f5520e.getIncomingEdges(view);
        ArrayList arrayList = this.f5522j;
        arrayList.clear();
        if (incomingEdges != null) {
            arrayList.addAll(incomingEdges);
        }
        return arrayList;
    }

    public final h1 getLastWindowInsets() {
        return this.f5533x;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.f5518C.getNestedScrollAxes();
    }

    public Drawable getStatusBarBackground() {
        return this.f5535z;
    }

    @Override // android.view.View
    public int getSuggestedMinimumHeight() {
        return Math.max(super.getSuggestedMinimumHeight(), getPaddingBottom() + getPaddingTop());
    }

    @Override // android.view.View
    public int getSuggestedMinimumWidth() {
        return Math.max(super.getSuggestedMinimumWidth(), getPaddingRight() + getPaddingLeft());
    }

    public final boolean h(MotionEvent motionEvent, int i2) {
        boolean blocksInteractionBelow;
        int actionMasked = motionEvent.getActionMasked();
        ArrayList arrayList = this.f5521f;
        arrayList.clear();
        boolean isChildrenDrawingOrderEnabled = isChildrenDrawingOrderEnabled();
        int childCount = getChildCount();
        for (int i7 = childCount - 1; i7 >= 0; i7--) {
            arrayList.add(getChildAt(isChildrenDrawingOrderEnabled ? getChildDrawingOrder(childCount, i7) : i7));
        }
        C1866j c1866j = f5514G;
        if (c1866j != null) {
            Collections.sort(arrayList, c1866j);
        }
        int size = arrayList.size();
        MotionEvent motionEvent2 = null;
        boolean z6 = false;
        boolean z7 = false;
        for (int i8 = 0; i8 < size; i8++) {
            View view = (View) arrayList.get(i8);
            C1862f c1862f = (C1862f) view.getLayoutParams();
            AbstractC1859c behavior = c1862f.getBehavior();
            if (!(z6 || z7) || actionMasked == 0) {
                if (!z6 && behavior != null) {
                    if (i2 == 0) {
                        z6 = behavior.onInterceptTouchEvent(this, view, motionEvent);
                    } else if (i2 == 1) {
                        z6 = behavior.onTouchEvent(this, view, motionEvent);
                    }
                    if (z6) {
                        this.f5529t = view;
                    }
                }
                AbstractC1859c abstractC1859c = c1862f.f20936a;
                if (abstractC1859c == null) {
                    c1862f.f20948m = false;
                }
                boolean z8 = c1862f.f20948m;
                if (z8) {
                    blocksInteractionBelow = true;
                } else {
                    blocksInteractionBelow = (abstractC1859c != null ? abstractC1859c.blocksInteractionBelow(this, view) : false) | z8;
                    c1862f.f20948m = blocksInteractionBelow;
                }
                boolean z9 = blocksInteractionBelow && !z8;
                if (blocksInteractionBelow && !z9) {
                    break;
                }
                z7 = z9;
            } else if (behavior != null) {
                if (motionEvent2 == null) {
                    long uptimeMillis = SystemClock.uptimeMillis();
                    motionEvent2 = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                }
                if (i2 == 0) {
                    behavior.onInterceptTouchEvent(this, view, motionEvent2);
                } else if (i2 == 1) {
                    behavior.onTouchEvent(this, view, motionEvent2);
                }
            }
        }
        arrayList.clear();
        return z6;
    }

    public final void i() {
        View childAt;
        int layoutDirection;
        int absoluteGravity;
        AbstractC1859c abstractC1859c;
        ArrayList arrayList = this.f5519b;
        arrayList.clear();
        C1867k c1867k = this.f5520e;
        c1867k.clear();
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt2 = getChildAt(i2);
            C1862f f3 = f(childAt2);
            int i7 = f3.f20941f;
            if (i7 == -1) {
                f3.f20947l = null;
                f3.f20946k = null;
            } else {
                View view = f3.f20946k;
                if (view != null && view.getId() == i7) {
                    View view2 = f3.f20946k;
                    for (ViewParent parent = view2.getParent(); parent != this; parent = parent.getParent()) {
                        if (parent == null || parent == childAt2) {
                            f3.f20947l = null;
                            f3.f20946k = null;
                        } else {
                            if (parent instanceof View) {
                                view2 = parent;
                            }
                        }
                    }
                    f3.f20947l = view2;
                }
                View findViewById = findViewById(i7);
                f3.f20946k = findViewById;
                if (findViewById == null) {
                    if (!isInEditMode()) {
                        throw new IllegalStateException("Could not find CoordinatorLayout descendant view with id " + getResources().getResourceName(i7) + " to anchor view " + childAt2);
                    }
                    f3.f20947l = null;
                    f3.f20946k = null;
                } else if (findViewById != this) {
                    for (ViewParent parent2 = findViewById.getParent(); parent2 != this && parent2 != null; parent2 = parent2.getParent()) {
                        if (parent2 != childAt2) {
                            if (parent2 instanceof View) {
                                findViewById = parent2;
                            }
                        } else {
                            if (!isInEditMode()) {
                                throw new IllegalStateException("Anchor must not be a descendant of the anchored view");
                            }
                            f3.f20947l = null;
                            f3.f20946k = null;
                        }
                    }
                    f3.f20947l = findViewById;
                } else {
                    if (!isInEditMode()) {
                        throw new IllegalStateException("View can not be anchored to the the parent CoordinatorLayout");
                    }
                    f3.f20947l = null;
                    f3.f20946k = null;
                }
            }
            c1867k.addNode(childAt2);
            for (int i8 = 0; i8 < childCount; i8++) {
                if (i8 != i2 && ((childAt = getChildAt(i8)) == f3.f20947l || (((absoluteGravity = AbstractC0185s.getAbsoluteGravity(((C1862f) childAt.getLayoutParams()).f20942g, (layoutDirection = AbstractC0181p0.getLayoutDirection(this)))) != 0 && (AbstractC0185s.getAbsoluteGravity(f3.f20943h, layoutDirection) & absoluteGravity) == absoluteGravity) || ((abstractC1859c = f3.f20936a) != null && abstractC1859c.layoutDependsOn(this, childAt2, childAt))))) {
                    if (!c1867k.contains(childAt)) {
                        c1867k.addNode(childAt);
                    }
                    c1867k.addEdge(childAt, childAt2);
                }
            }
        }
        arrayList.addAll(c1867k.getSortedList());
        Collections.reverse(arrayList);
    }

    public boolean isPointInChildBounds(View view, int i2, int i7) {
        g gVar = f5515H;
        Rect a7 = a();
        AbstractC1868l.getDescendantRect(this, view, a7);
        try {
            return a7.contains(i2, i7);
        } finally {
            a7.setEmpty();
            gVar.release(a7);
        }
    }

    public final void j(boolean z6) {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            AbstractC1859c behavior = ((C1862f) childAt.getLayoutParams()).getBehavior();
            if (behavior != null) {
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                if (z6) {
                    behavior.onInterceptTouchEvent(this, childAt, obtain);
                } else {
                    behavior.onTouchEvent(this, childAt, obtain);
                }
                obtain.recycle();
            }
        }
        for (int i7 = 0; i7 < childCount; i7++) {
            ((C1862f) getChildAt(i7).getLayoutParams()).f20948m = false;
        }
        this.f5529t = null;
        this.f5526q = false;
    }

    public final void m() {
        if (!AbstractC0181p0.getFitsSystemWindows(this)) {
            AbstractC0181p0.setOnApplyWindowInsetsListener(this, null);
            return;
        }
        if (this.f5517B == null) {
            this.f5517B = new C1857a(this);
        }
        AbstractC0181p0.setOnApplyWindowInsetsListener(this, this.f5517B);
        setSystemUiVisibility(1280);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        j(false);
        if (this.f5532w) {
            if (this.f5531v == null) {
                this.f5531v = new ViewTreeObserverOnPreDrawListenerC1863g(this);
            }
            getViewTreeObserver().addOnPreDrawListener(this.f5531v);
        }
        if (this.f5533x == null && AbstractC0181p0.getFitsSystemWindows(this)) {
            AbstractC0181p0.requestApplyInsets(this);
        }
        this.f5527r = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        j(false);
        if (this.f5532w && this.f5531v != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.f5531v);
        }
        View view = this.f5530u;
        if (view != null) {
            onStopNestedScroll(view);
        }
        this.f5527r = false;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.f5534y || this.f5535z == null) {
            return;
        }
        h1 h1Var = this.f5533x;
        int systemWindowInsetTop = h1Var != null ? h1Var.getSystemWindowInsetTop() : 0;
        if (systemWindowInsetTop > 0) {
            this.f5535z.setBounds(0, 0, getWidth(), systemWindowInsetTop);
            this.f5535z.draw(canvas);
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            j(true);
        }
        boolean h7 = h(motionEvent, 0);
        if (actionMasked != 1 && actionMasked != 3) {
            return h7;
        }
        j(true);
        return h7;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z6, int i2, int i7, int i8, int i9) {
        AbstractC1859c behavior;
        int layoutDirection = AbstractC0181p0.getLayoutDirection(this);
        ArrayList arrayList = this.f5519b;
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            View view = (View) arrayList.get(i10);
            if (view.getVisibility() != 8 && ((behavior = ((C1862f) view.getLayoutParams()).getBehavior()) == null || !behavior.onLayoutChild(this, view, layoutDirection))) {
                onLayoutChild(view, layoutDirection);
            }
        }
    }

    public void onLayoutChild(View view, int i2) {
        Rect a7;
        Rect a8;
        C1862f c1862f = (C1862f) view.getLayoutParams();
        View view2 = c1862f.f20946k;
        if (view2 == null && c1862f.f20941f != -1) {
            throw new IllegalStateException("An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete.");
        }
        g gVar = f5515H;
        if (view2 != null) {
            a7 = a();
            a8 = a();
            try {
                AbstractC1868l.getDescendantRect(this, view2, a7);
                C1862f c1862f2 = (C1862f) view.getLayoutParams();
                int measuredWidth = view.getMeasuredWidth();
                int measuredHeight = view.getMeasuredHeight();
                d(i2, a7, a8, c1862f2, measuredWidth, measuredHeight);
                b(c1862f2, a8, measuredWidth, measuredHeight);
                view.layout(a8.left, a8.top, a8.right, a8.bottom);
                return;
            } finally {
                a7.setEmpty();
                gVar.release(a7);
                a8.setEmpty();
                gVar.release(a8);
            }
        }
        int i7 = c1862f.f20940e;
        if (i7 < 0) {
            C1862f c1862f3 = (C1862f) view.getLayoutParams();
            a7 = a();
            a7.set(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) c1862f3).leftMargin, getPaddingTop() + ((ViewGroup.MarginLayoutParams) c1862f3).topMargin, (getWidth() - getPaddingRight()) - ((ViewGroup.MarginLayoutParams) c1862f3).rightMargin, (getHeight() - getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) c1862f3).bottomMargin);
            if (this.f5533x != null && AbstractC0181p0.getFitsSystemWindows(this) && !AbstractC0181p0.getFitsSystemWindows(view)) {
                a7.left = this.f5533x.getSystemWindowInsetLeft() + a7.left;
                a7.top = this.f5533x.getSystemWindowInsetTop() + a7.top;
                a7.right -= this.f5533x.getSystemWindowInsetRight();
                a7.bottom -= this.f5533x.getSystemWindowInsetBottom();
            }
            a8 = a();
            int i8 = c1862f3.f20938c;
            if ((i8 & 7) == 0) {
                i8 |= 8388611;
            }
            if ((i8 & 112) == 0) {
                i8 |= 48;
            }
            AbstractC0185s.apply(i8, view.getMeasuredWidth(), view.getMeasuredHeight(), a7, a8, i2);
            view.layout(a8.left, a8.top, a8.right, a8.bottom);
            return;
        }
        C1862f c1862f4 = (C1862f) view.getLayoutParams();
        int i9 = c1862f4.f20938c;
        if (i9 == 0) {
            i9 = 8388661;
        }
        int absoluteGravity = AbstractC0185s.getAbsoluteGravity(i9, i2);
        int i10 = absoluteGravity & 7;
        int i11 = absoluteGravity & 112;
        int width = getWidth();
        int height = getHeight();
        int measuredWidth2 = view.getMeasuredWidth();
        int measuredHeight2 = view.getMeasuredHeight();
        if (i2 == 1) {
            i7 = width - i7;
        }
        int e3 = e(i7) - measuredWidth2;
        if (i10 == 1) {
            e3 += measuredWidth2 / 2;
        } else if (i10 == 5) {
            e3 += measuredWidth2;
        }
        int i12 = i11 != 16 ? i11 != 80 ? 0 : measuredHeight2 : measuredHeight2 / 2;
        int max = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) c1862f4).leftMargin, Math.min(e3, ((width - getPaddingRight()) - measuredWidth2) - ((ViewGroup.MarginLayoutParams) c1862f4).rightMargin));
        int max2 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) c1862f4).topMargin, Math.min(i12, ((height - getPaddingBottom()) - measuredHeight2) - ((ViewGroup.MarginLayoutParams) c1862f4).bottomMargin));
        view.layout(max, max2, measuredWidth2 + max, measuredHeight2 + max2);
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x0156  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0183  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r28, int r29) {
        /*
            Method dump skipped, instructions count: 499
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.onMeasure(int, int):void");
    }

    public void onMeasureChild(View view, int i2, int i7, int i8, int i9) {
        measureChildWithMargins(view, i2, i7, i8, i9);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onNestedFling(View view, float f3, float f7, boolean z6) {
        AbstractC1859c behavior;
        View view2;
        float f8;
        float f9;
        boolean z7;
        int childCount = getChildCount();
        int i2 = 0;
        boolean z8 = false;
        while (i2 < childCount) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() != 8) {
                C1862f c1862f = (C1862f) childAt.getLayoutParams();
                if (c1862f.a(0) && (behavior = c1862f.getBehavior()) != null) {
                    view2 = view;
                    f8 = f3;
                    f9 = f7;
                    z7 = z6;
                    z8 |= behavior.onNestedFling(this, childAt, view2, f8, f9, z7);
                    i2++;
                    view = view2;
                    f3 = f8;
                    f7 = f9;
                    z6 = z7;
                }
            }
            view2 = view;
            f8 = f3;
            f9 = f7;
            z7 = z6;
            i2++;
            view = view2;
            f3 = f8;
            f7 = f9;
            z6 = z7;
        }
        if (z8) {
            g(1);
        }
        return z8;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onNestedPreFling(View view, float f3, float f7) {
        AbstractC1859c behavior;
        View view2;
        float f8;
        float f9;
        int childCount = getChildCount();
        int i2 = 0;
        boolean z6 = false;
        while (i2 < childCount) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() != 8) {
                C1862f c1862f = (C1862f) childAt.getLayoutParams();
                if (c1862f.a(0) && (behavior = c1862f.getBehavior()) != null) {
                    view2 = view;
                    f8 = f3;
                    f9 = f7;
                    z6 |= behavior.onNestedPreFling(this, childAt, view2, f8, f9);
                    i2++;
                    view = view2;
                    f3 = f8;
                    f7 = f9;
                }
            }
            view2 = view;
            f8 = f3;
            f9 = f7;
            i2++;
            view = view2;
            f3 = f8;
            f7 = f9;
        }
        return z6;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedPreScroll(View view, int i2, int i7, int[] iArr) {
        onNestedPreScroll(view, i2, i7, iArr, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedScroll(View view, int i2, int i7, int i8, int i9) {
        onNestedScroll(view, i2, i7, i8, i9, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedScrollAccepted(View view, View view2, int i2) {
        onNestedScrollAccepted(view, view2, i2, 0);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        Parcelable parcelable2;
        if (!(parcelable instanceof C1865i)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C1865i c1865i = (C1865i) parcelable;
        super.onRestoreInstanceState(c1865i.getSuperState());
        SparseArray sparseArray = c1865i.f20954f;
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            int id = childAt.getId();
            AbstractC1859c behavior = f(childAt).getBehavior();
            if (id != -1 && behavior != null && (parcelable2 = (Parcelable) sparseArray.get(id)) != null) {
                behavior.onRestoreInstanceState(this, childAt, parcelable2);
            }
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        Parcelable onSaveInstanceState;
        C1865i c1865i = new C1865i(super.onSaveInstanceState());
        SparseArray sparseArray = new SparseArray();
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            int id = childAt.getId();
            AbstractC1859c behavior = ((C1862f) childAt.getLayoutParams()).getBehavior();
            if (id != -1 && behavior != null && (onSaveInstanceState = behavior.onSaveInstanceState(this, childAt)) != null) {
                sparseArray.append(id, onSaveInstanceState);
            }
        }
        c1865i.f20954f = sparseArray;
        return c1865i;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onStartNestedScroll(View view, View view2, int i2) {
        return onStartNestedScroll(view, view2, i2, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onStopNestedScroll(View view) {
        onStopNestedScroll(view, 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0012, code lost:
    
        if (r3 != false) goto L9;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0031  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r18) {
        /*
            r17 = this;
            r0 = r17
            r1 = r18
            int r2 = r1.getActionMasked()
            android.view.View r3 = r0.f5529t
            r4 = 1
            r5 = 0
            if (r3 != 0) goto L17
            boolean r3 = r0.h(r1, r4)
            if (r3 == 0) goto L15
            goto L18
        L15:
            r6 = r5
            goto L2c
        L17:
            r3 = r5
        L18:
            android.view.View r6 = r0.f5529t
            android.view.ViewGroup$LayoutParams r6 = r6.getLayoutParams()
            y.f r6 = (y.C1862f) r6
            y.c r6 = r6.getBehavior()
            if (r6 == 0) goto L15
            android.view.View r7 = r0.f5529t
            boolean r6 = r6.onTouchEvent(r0, r7, r1)
        L2c:
            android.view.View r7 = r0.f5529t
            r8 = 0
            if (r7 != 0) goto L37
            boolean r1 = super.onTouchEvent(r18)
            r6 = r6 | r1
            goto L4a
        L37:
            if (r3 == 0) goto L4a
            long r9 = android.os.SystemClock.uptimeMillis()
            r15 = 0
            r16 = 0
            r13 = 3
            r14 = 0
            r11 = r9
            android.view.MotionEvent r8 = android.view.MotionEvent.obtain(r9, r11, r13, r14, r15, r16)
            super.onTouchEvent(r8)
        L4a:
            if (r8 == 0) goto L4f
            r8.recycle()
        L4f:
            if (r2 == r4) goto L56
            r1 = 3
            if (r2 != r1) goto L55
            goto L56
        L55:
            return r6
        L56:
            r0.j(r5)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z6) {
        AbstractC1859c behavior = ((C1862f) view.getLayoutParams()).getBehavior();
        if (behavior == null || !behavior.onRequestChildRectangleOnScreen(this, view, rect, z6)) {
            return super.requestChildRectangleOnScreen(view, rect, z6);
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z6) {
        super.requestDisallowInterceptTouchEvent(z6);
        if (!z6 || this.f5526q) {
            return;
        }
        j(false);
        this.f5526q = true;
    }

    @Override // android.view.View
    public void setFitsSystemWindows(boolean z6) {
        super.setFitsSystemWindows(z6);
        m();
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.f5516A = onHierarchyChangeListener;
    }

    public void setStatusBarBackground(Drawable drawable) {
        Drawable drawable2 = this.f5535z;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable mutate = drawable != null ? drawable.mutate() : null;
            this.f5535z = mutate;
            if (mutate != null) {
                if (mutate.isStateful()) {
                    this.f5535z.setState(getDrawableState());
                }
                c.setLayoutDirection(this.f5535z, AbstractC0181p0.getLayoutDirection(this));
                this.f5535z.setVisible(getVisibility() == 0, false);
                this.f5535z.setCallback(this);
            }
            AbstractC0181p0.postInvalidateOnAnimation(this);
        }
    }

    public void setStatusBarBackgroundColor(int i2) {
        setStatusBarBackground(new ColorDrawable(i2));
    }

    public void setStatusBarBackgroundResource(int i2) {
        setStatusBarBackground(i2 != 0 ? h.getDrawable(getContext(), i2) : null);
    }

    @Override // android.view.View
    public void setVisibility(int i2) {
        super.setVisibility(i2);
        boolean z6 = i2 == 0;
        Drawable drawable = this.f5535z;
        if (drawable == null || drawable.isVisible() == z6) {
            return;
        }
        this.f5535z.setVisible(z6, false);
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f5535z;
    }

    public CoordinatorLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        CoordinatorLayout coordinatorLayout;
        Context context2;
        this.f5519b = new ArrayList();
        this.f5520e = new C1867k();
        this.f5521f = new ArrayList();
        this.f5522j = new ArrayList();
        this.f5524n = new int[2];
        this.f5525p = new int[2];
        this.f5518C = new K(this);
        TypedArray obtainStyledAttributes = i2 == 0 ? context.obtainStyledAttributes(attributeSet, R.styleable.CoordinatorLayout, 0, R.style.Widget_Support_CoordinatorLayout) : context.obtainStyledAttributes(attributeSet, R.styleable.CoordinatorLayout, i2, 0);
        if (Build.VERSION.SDK_INT < 29) {
            coordinatorLayout = this;
            context2 = context;
        } else if (i2 == 0) {
            coordinatorLayout = this;
            context2 = context;
            coordinatorLayout.saveAttributeDataForStyleable(context2, R.styleable.CoordinatorLayout, attributeSet, obtainStyledAttributes, 0, R.style.Widget_Support_CoordinatorLayout);
        } else {
            context2 = context;
            coordinatorLayout = this;
            coordinatorLayout.saveAttributeDataForStyleable(context2, R.styleable.CoordinatorLayout, attributeSet, obtainStyledAttributes, i2, 0);
        }
        int resourceId = obtainStyledAttributes.getResourceId(R.styleable.CoordinatorLayout_keylines, 0);
        if (resourceId != 0) {
            Resources resources = context2.getResources();
            int[] intArray = resources.getIntArray(resourceId);
            coordinatorLayout.f5528s = intArray;
            float f3 = resources.getDisplayMetrics().density;
            int length = intArray.length;
            for (int i7 = 0; i7 < length; i7++) {
                coordinatorLayout.f5528s[i7] = (int) (r11[i7] * f3);
            }
        }
        coordinatorLayout.f5535z = obtainStyledAttributes.getDrawable(R.styleable.CoordinatorLayout_statusBarBackground);
        obtainStyledAttributes.recycle();
        m();
        super.setOnHierarchyChangeListener(new ViewGroupOnHierarchyChangeListenerC1861e(this));
        if (AbstractC0181p0.getImportantForAccessibility(this) == 0) {
            AbstractC0181p0.setImportantForAccessibility(this, 1);
        }
    }

    @Override // android.view.ViewGroup
    public C1862f generateDefaultLayoutParams() {
        return new C1862f(-2, -2);
    }

    @Override // M.I
    public void onNestedPreScroll(View view, int i2, int i7, int[] iArr, int i8) {
        AbstractC1859c behavior;
        int childCount = getChildCount();
        boolean z6 = false;
        int i9 = 0;
        int i10 = 0;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() != 8) {
                C1862f c1862f = (C1862f) childAt.getLayoutParams();
                if (c1862f.a(i8) && (behavior = c1862f.getBehavior()) != null) {
                    int[] iArr2 = this.f5524n;
                    iArr2[0] = 0;
                    iArr2[1] = 0;
                    behavior.onNestedPreScroll(this, childAt, view, i2, i7, iArr2, i8);
                    int[] iArr3 = this.f5524n;
                    i9 = i2 > 0 ? Math.max(i9, iArr3[0]) : Math.min(i9, iArr3[0]);
                    i10 = i7 > 0 ? Math.max(i10, iArr3[1]) : Math.min(i10, iArr3[1]);
                    z6 = true;
                }
            }
        }
        iArr[0] = i9;
        iArr[1] = i10;
        if (z6) {
            g(1);
        }
    }

    @Override // M.I
    public void onNestedScroll(View view, int i2, int i7, int i8, int i9, int i10) {
        onNestedScroll(view, i2, i7, i8, i9, 0, this.f5525p);
    }

    @Override // M.I
    public void onNestedScrollAccepted(View view, View view2, int i2, int i7) {
        AbstractC1859c behavior;
        View view3;
        View view4;
        int i8;
        int i9;
        this.f5518C.onNestedScrollAccepted(view, view2, i2, i7);
        this.f5530u = view2;
        int childCount = getChildCount();
        int i10 = 0;
        while (i10 < childCount) {
            View childAt = getChildAt(i10);
            C1862f c1862f = (C1862f) childAt.getLayoutParams();
            if (c1862f.a(i7) && (behavior = c1862f.getBehavior()) != null) {
                view3 = view;
                view4 = view2;
                i8 = i2;
                i9 = i7;
                behavior.onNestedScrollAccepted(this, childAt, view3, view4, i8, i9);
            } else {
                view3 = view;
                view4 = view2;
                i8 = i2;
                i9 = i7;
            }
            i10++;
            view = view3;
            view2 = view4;
            i2 = i8;
            i7 = i9;
        }
    }

    @Override // M.I
    public boolean onStartNestedScroll(View view, View view2, int i2, int i7) {
        int childCount = getChildCount();
        boolean z6 = false;
        for (int i8 = 0; i8 < childCount; i8++) {
            View childAt = getChildAt(i8);
            if (childAt.getVisibility() != 8) {
                C1862f c1862f = (C1862f) childAt.getLayoutParams();
                AbstractC1859c behavior = c1862f.getBehavior();
                if (behavior != null) {
                    boolean onStartNestedScroll = behavior.onStartNestedScroll(this, childAt, view, view2, i2, i7);
                    z6 |= onStartNestedScroll;
                    if (i7 == 0) {
                        c1862f.f20949n = onStartNestedScroll;
                    } else if (i7 == 1) {
                        c1862f.f20950o = onStartNestedScroll;
                    }
                } else if (i7 == 0) {
                    c1862f.f20949n = false;
                } else if (i7 == 1) {
                    c1862f.f20950o = false;
                }
            }
        }
        return z6;
    }

    @Override // M.I
    public void onStopNestedScroll(View view, int i2) {
        this.f5518C.onStopNestedScroll(view, i2);
        int childCount = getChildCount();
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            C1862f c1862f = (C1862f) childAt.getLayoutParams();
            if (c1862f.a(i2)) {
                AbstractC1859c behavior = c1862f.getBehavior();
                if (behavior != null) {
                    behavior.onStopNestedScroll(this, childAt, view, i2);
                }
                if (i2 == 0) {
                    c1862f.f20949n = false;
                } else if (i2 == 1) {
                    c1862f.f20950o = false;
                }
                c1862f.f20951p = false;
            }
        }
        this.f5530u = null;
    }

    @Override // android.view.ViewGroup
    public C1862f generateLayoutParams(AttributeSet attributeSet) {
        return new C1862f(getContext(), attributeSet);
    }

    @Override // M.J
    public void onNestedScroll(View view, int i2, int i7, int i8, int i9, int i10, int[] iArr) {
        AbstractC1859c behavior;
        int min;
        int childCount = getChildCount();
        boolean z6 = false;
        int i11 = 0;
        int i12 = 0;
        for (int i13 = 0; i13 < childCount; i13++) {
            View childAt = getChildAt(i13);
            if (childAt.getVisibility() != 8) {
                C1862f c1862f = (C1862f) childAt.getLayoutParams();
                if (c1862f.a(i10) && (behavior = c1862f.getBehavior()) != null) {
                    int[] iArr2 = this.f5524n;
                    iArr2[0] = 0;
                    iArr2[1] = 0;
                    behavior.onNestedScroll(this, childAt, view, i2, i7, i8, i9, i10, iArr2);
                    int[] iArr3 = this.f5524n;
                    i11 = i8 > 0 ? Math.max(i11, iArr3[0]) : Math.min(i11, iArr3[0]);
                    if (i9 > 0) {
                        min = Math.max(i12, iArr3[1]);
                    } else {
                        min = Math.min(i12, iArr3[1]);
                    }
                    i12 = min;
                    z6 = true;
                }
            }
        }
        iArr[0] = iArr[0] + i11;
        iArr[1] = iArr[1] + i12;
        if (z6) {
            g(1);
        }
    }

    @Override // android.view.ViewGroup
    public C1862f generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof C1862f) {
            return new C1862f((C1862f) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new C1862f((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new C1862f(layoutParams);
    }
}
