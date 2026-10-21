package androidx.recyclerview.widget;

import A.i;
import I.s;
import L.h;
import M.AbstractC0181p0;
import M.AbstractC0188t0;
import M.G;
import M.H;
import N.b;
import S.j;
import U.a;
import android.R;
import android.animation.LayoutTransition;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.OverScroller;
import b.c;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import m1.A0;
import m1.AbstractC1272b0;
import m1.AbstractC1276d0;
import m1.AbstractC1286i0;
import m1.AbstractC1290k0;
import m1.AbstractC1294m0;
import m1.B0;
import m1.C1270a0;
import m1.C1271b;
import m1.C1274c0;
import m1.C1275d;
import m1.C1288j0;
import m1.C1297o;
import m1.C1298o0;
import m1.C1300p0;
import m1.C1303r0;
import m1.C1307t0;
import m1.C1308u;
import m1.C1310w;
import m1.D0;
import m1.InterfaceC1292l0;
import m1.InterfaceC1302q0;
import m1.O;
import m1.P;
import m1.Q;
import m1.RunnableC1312y;
import m1.S;
import m1.S0;
import m1.T;
import m1.T0;
import m1.U;
import m1.V;
import m1.Y;
import m1.Z;
import m1.w0;
import m1.x0;
import m1.y0;
import m1.z0;
import org.apache.commons.lang3.ClassUtils;
import org.apache.commons.lang3.StringUtils;
import p.n;
import p.q;

/* loaded from: classes.dex */
public class RecyclerView extends ViewGroup implements G {

    /* renamed from: J0, reason: collision with root package name */
    public static boolean f7998J0 = false;

    /* renamed from: K0, reason: collision with root package name */
    public static boolean f7999K0 = false;

    /* renamed from: L0, reason: collision with root package name */
    public static final int[] f8000L0 = {R.attr.nestedScrollingEnabled};

    /* renamed from: M0, reason: collision with root package name */
    public static final float f8001M0 = (float) (Math.log(0.78d) / Math.log(0.9d));

    /* renamed from: N0, reason: collision with root package name */
    public static final boolean f8002N0 = true;

    /* renamed from: O0, reason: collision with root package name */
    public static final boolean f8003O0 = true;

    /* renamed from: P0, reason: collision with root package name */
    public static final boolean f8004P0 = true;

    /* renamed from: Q0, reason: collision with root package name */
    public static final Class[] f8005Q0;

    /* renamed from: R0, reason: collision with root package name */
    public static final Q f8006R0;

    /* renamed from: S0, reason: collision with root package name */
    public static final y0 f8007S0;

    /* renamed from: A, reason: collision with root package name */
    public final ArrayList f8008A;

    /* renamed from: A0, reason: collision with root package name */
    public final int[] f8009A0;

    /* renamed from: B, reason: collision with root package name */
    public C1308u f8010B;

    /* renamed from: B0, reason: collision with root package name */
    public final int[] f8011B0;

    /* renamed from: C, reason: collision with root package name */
    public boolean f8012C;

    /* renamed from: C0, reason: collision with root package name */
    public final int[] f8013C0;

    /* renamed from: D, reason: collision with root package name */
    public boolean f8014D;

    /* renamed from: D0, reason: collision with root package name */
    public final ArrayList f8015D0;

    /* renamed from: E, reason: collision with root package name */
    public boolean f8016E;

    /* renamed from: E0, reason: collision with root package name */
    public final P f8017E0;

    /* renamed from: F, reason: collision with root package name */
    public int f8018F;

    /* renamed from: F0, reason: collision with root package name */
    public boolean f8019F0;

    /* renamed from: G, reason: collision with root package name */
    public boolean f8020G;

    /* renamed from: G0, reason: collision with root package name */
    public int f8021G0;

    /* renamed from: H, reason: collision with root package name */
    public boolean f8022H;

    /* renamed from: H0, reason: collision with root package name */
    public int f8023H0;

    /* renamed from: I, reason: collision with root package name */
    public boolean f8024I;

    /* renamed from: I0, reason: collision with root package name */
    public final S f8025I0;

    /* renamed from: J, reason: collision with root package name */
    public int f8026J;

    /* renamed from: K, reason: collision with root package name */
    public boolean f8027K;

    /* renamed from: L, reason: collision with root package name */
    public final AccessibilityManager f8028L;

    /* renamed from: M, reason: collision with root package name */
    public boolean f8029M;

    /* renamed from: N, reason: collision with root package name */
    public boolean f8030N;

    /* renamed from: O, reason: collision with root package name */
    public int f8031O;

    /* renamed from: P, reason: collision with root package name */
    public int f8032P;

    /* renamed from: Q, reason: collision with root package name */
    public Z f8033Q;

    /* renamed from: R, reason: collision with root package name */
    public EdgeEffect f8034R;

    /* renamed from: S, reason: collision with root package name */
    public EdgeEffect f8035S;

    /* renamed from: T, reason: collision with root package name */
    public EdgeEffect f8036T;

    /* renamed from: U, reason: collision with root package name */
    public EdgeEffect f8037U;

    /* renamed from: V, reason: collision with root package name */
    public AbstractC1272b0 f8038V;

    /* renamed from: W, reason: collision with root package name */
    public int f8039W;

    /* renamed from: a0, reason: collision with root package name */
    public int f8040a0;

    /* renamed from: b, reason: collision with root package name */
    public final float f8041b;

    /* renamed from: b0, reason: collision with root package name */
    public VelocityTracker f8042b0;

    /* renamed from: c0, reason: collision with root package name */
    public int f8043c0;

    /* renamed from: d0, reason: collision with root package name */
    public int f8044d0;

    /* renamed from: e, reason: collision with root package name */
    public final C1303r0 f8045e;

    /* renamed from: e0, reason: collision with root package name */
    public int f8046e0;

    /* renamed from: f, reason: collision with root package name */
    public final C1300p0 f8047f;

    /* renamed from: f0, reason: collision with root package name */
    public int f8048f0;

    /* renamed from: g0, reason: collision with root package name */
    public int f8049g0;

    /* renamed from: h0, reason: collision with root package name */
    public AbstractC1290k0 f8050h0;

    /* renamed from: i0, reason: collision with root package name */
    public final int f8051i0;

    /* renamed from: j, reason: collision with root package name */
    public C1307t0 f8052j;

    /* renamed from: j0, reason: collision with root package name */
    public final int f8053j0;

    /* renamed from: k0, reason: collision with root package name */
    public final float f8054k0;

    /* renamed from: l0, reason: collision with root package name */
    public final float f8055l0;

    /* renamed from: m, reason: collision with root package name */
    public final C1271b f8056m;

    /* renamed from: m0, reason: collision with root package name */
    public boolean f8057m0;

    /* renamed from: n, reason: collision with root package name */
    public final C1275d f8058n;

    /* renamed from: n0, reason: collision with root package name */
    public final A0 f8059n0;

    /* renamed from: o0, reason: collision with root package name */
    public RunnableC1312y f8060o0;

    /* renamed from: p, reason: collision with root package name */
    public final T0 f8061p;

    /* renamed from: p0, reason: collision with root package name */
    public final C1310w f8062p0;

    /* renamed from: q, reason: collision with root package name */
    public boolean f8063q;

    /* renamed from: q0, reason: collision with root package name */
    public final x0 f8064q0;

    /* renamed from: r, reason: collision with root package name */
    public final O f8065r;

    /* renamed from: r0, reason: collision with root package name */
    public AbstractC1294m0 f8066r0;

    /* renamed from: s, reason: collision with root package name */
    public final Rect f8067s;

    /* renamed from: s0, reason: collision with root package name */
    public ArrayList f8068s0;

    /* renamed from: t, reason: collision with root package name */
    public final Rect f8069t;

    /* renamed from: t0, reason: collision with root package name */
    public boolean f8070t0;

    /* renamed from: u, reason: collision with root package name */
    public final RectF f8071u;

    /* renamed from: u0, reason: collision with root package name */
    public boolean f8072u0;

    /* renamed from: v, reason: collision with root package name */
    public V f8073v;

    /* renamed from: v0, reason: collision with root package name */
    public final C1274c0 f8074v0;

    /* renamed from: w, reason: collision with root package name */
    public AbstractC1286i0 f8075w;

    /* renamed from: w0, reason: collision with root package name */
    public boolean f8076w0;

    /* renamed from: x, reason: collision with root package name */
    public InterfaceC1302q0 f8077x;

    /* renamed from: x0, reason: collision with root package name */
    public D0 f8078x0;

    /* renamed from: y, reason: collision with root package name */
    public final ArrayList f8079y;

    /* renamed from: y0, reason: collision with root package name */
    public final int[] f8080y0;

    /* renamed from: z, reason: collision with root package name */
    public final ArrayList f8081z;

    /* renamed from: z0, reason: collision with root package name */
    public H f8082z0;

    static {
        Class cls = Integer.TYPE;
        f8005Q0 = new Class[]{Context.class, AttributeSet.class, cls, cls};
        f8006R0 = new Q();
        f8007S0 = new y0();
    }

    public RecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, androidx.recyclerview.R.attr.recyclerViewStyle);
    }

    public static RecyclerView A(View view) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        if (view instanceof RecyclerView) {
            return (RecyclerView) view;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            RecyclerView A6 = A(viewGroup.getChildAt(i2));
            if (A6 != null) {
                return A6;
            }
        }
        return null;
    }

    public static B0 E(View view) {
        if (view == null) {
            return null;
        }
        return ((C1288j0) view.getLayoutParams()).f18409a;
    }

    public static void F(View view, Rect rect) {
        C1288j0 c1288j0 = (C1288j0) view.getLayoutParams();
        Rect rect2 = c1288j0.f18410b;
        rect.set((view.getLeft() - rect2.left) - ((ViewGroup.MarginLayoutParams) c1288j0).leftMargin, (view.getTop() - rect2.top) - ((ViewGroup.MarginLayoutParams) c1288j0).topMargin, view.getRight() + rect2.right + ((ViewGroup.MarginLayoutParams) c1288j0).rightMargin, view.getBottom() + rect2.bottom + ((ViewGroup.MarginLayoutParams) c1288j0).bottomMargin);
    }

    private H getScrollingChildHelper() {
        if (this.f8082z0 == null) {
            this.f8082z0 = new H(this);
        }
        return this.f8082z0;
    }

    public static void i(B0 b02) {
        WeakReference weakReference = b02.f18218b;
        if (weakReference != null) {
            View view = (View) weakReference.get();
            while (view != null) {
                if (view == b02.f18217a) {
                    return;
                }
                Object parent = view.getParent();
                view = parent instanceof View ? (View) parent : null;
            }
            b02.f18218b = null;
        }
    }

    public static int l(int i2, EdgeEffect edgeEffect, EdgeEffect edgeEffect2, int i7) {
        if (i2 > 0 && edgeEffect != null && j.getDistance(edgeEffect) != 0.0f) {
            int round = Math.round(j.onPullDistance(edgeEffect, ((-i2) * 4.0f) / i7, 0.5f) * ((-i7) / 4.0f));
            if (round != i2) {
                edgeEffect.finish();
            }
            return i2 - round;
        }
        if (i2 >= 0 || edgeEffect2 == null || j.getDistance(edgeEffect2) == 0.0f) {
            return i2;
        }
        float f3 = i7;
        int round2 = Math.round(j.onPullDistance(edgeEffect2, (i2 * 4.0f) / f3, 0.5f) * (f3 / 4.0f));
        if (round2 != i2) {
            edgeEffect2.finish();
        }
        return i2 - round2;
    }

    public static void setDebugAssertionsEnabled(boolean z6) {
        f7998J0 = z6;
    }

    public static void setVerboseLoggingEnabled(boolean z6) {
        f7999K0 = z6;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x003c A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final m1.B0 B(int r6, boolean r7) {
        /*
            r5 = this;
            m1.d r0 = r5.f8058n
            m1.T r0 = r0.f18363a
            int r0 = r0.getChildCount()
            r1 = 0
            r2 = 0
        La:
            if (r2 >= r0) goto L40
            m1.d r3 = r5.f8058n
            m1.T r3 = r3.f18363a
            android.view.View r3 = r3.getChildAt(r2)
            m1.B0 r3 = E(r3)
            if (r3 == 0) goto L3d
            boolean r4 = r3.f()
            if (r4 != 0) goto L3d
            if (r7 == 0) goto L27
            int r4 = r3.f18219c
            if (r4 == r6) goto L2e
            goto L3d
        L27:
            int r4 = r3.getLayoutPosition()
            if (r4 == r6) goto L2e
            goto L3d
        L2e:
            m1.d r1 = r5.f8058n
            android.view.View r4 = r3.f18217a
            java.util.ArrayList r1 = r1.f18365c
            boolean r1 = r1.contains(r4)
            if (r1 == 0) goto L3c
            r1 = r3
            goto L3d
        L3c:
            return r3
        L3d:
            int r2 = r2 + 1
            goto La
        L40:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.B(int, boolean):m1.B0");
    }

    public final int C(B0 b02) {
        if ((b02.f18226j & 524) == 0 && b02.d()) {
            return this.f8056m.applyPendingUpdatesToPosition(b02.f18219c);
        }
        return -1;
    }

    public final long D(B0 b02) {
        return this.f8073v.hasStableIds() ? b02.getItemId() : b02.f18219c;
    }

    public final Rect G(View view) {
        C1288j0 c1288j0 = (C1288j0) view.getLayoutParams();
        boolean z6 = c1288j0.f18411c;
        Rect rect = c1288j0.f18410b;
        if (z6) {
            x0 x0Var = this.f8064q0;
            if (!x0Var.isPreLayout() || (!c1288j0.isItemChanged() && !c1288j0.isViewInvalid())) {
                rect.set(0, 0, 0, 0);
                ArrayList arrayList = this.f8081z;
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    Rect rect2 = this.f8067s;
                    rect2.set(0, 0, 0, 0);
                    ((AbstractC1276d0) arrayList.get(i2)).getItemOffsets(rect2, view, this, x0Var);
                    rect.left += rect2.left;
                    rect.top += rect2.top;
                    rect.right += rect2.right;
                    rect.bottom += rect2.bottom;
                }
                c1288j0.f18411c = false;
                return rect;
            }
        }
        return rect;
    }

    public boolean H() {
        return isChildrenDrawingOrderEnabled();
    }

    public final void I(int i2) {
        if (this.f8075w == null) {
            return;
        }
        setScrollState(2);
        this.f8075w.scrollToPosition(i2);
        awakenScrollBars();
    }

    public final void J() {
        int childCount = this.f8058n.f18363a.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            ((C1288j0) this.f8058n.f18363a.getChildAt(i2).getLayoutParams()).f18411c = true;
        }
        ArrayList arrayList = this.f8047f.f18457c;
        int size = arrayList.size();
        for (int i7 = 0; i7 < size; i7++) {
            C1288j0 c1288j0 = (C1288j0) ((B0) arrayList.get(i7)).f18217a.getLayoutParams();
            if (c1288j0 != null) {
                c1288j0.f18411c = true;
            }
        }
    }

    public final void K(int i2, int i7, boolean z6) {
        int i8 = i2 + i7;
        int childCount = this.f8058n.f18363a.getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            B0 E6 = E(this.f8058n.f18363a.getChildAt(i9));
            if (E6 != null && !E6.l()) {
                int i10 = E6.f18219c;
                x0 x0Var = this.f8064q0;
                if (i10 >= i8) {
                    if (f7999K0) {
                        Log.d("RecyclerView", "offsetPositionRecordsForRemove attached child " + i9 + " holder " + E6 + " now at position " + (E6.f18219c - i7));
                    }
                    E6.j(-i7, z6);
                    x0Var.f18530f = true;
                } else if (i10 >= i2) {
                    if (f7999K0) {
                        Log.d("RecyclerView", "offsetPositionRecordsForRemove attached child " + i9 + " holder " + E6 + " now REMOVED");
                    }
                    E6.a(8);
                    E6.j(-i7, z6);
                    E6.f18219c = i2 - 1;
                    x0Var.f18530f = true;
                }
            }
        }
        C1300p0 c1300p0 = this.f8047f;
        ArrayList arrayList = c1300p0.f18457c;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            B0 b02 = (B0) arrayList.get(size);
            if (b02 != null) {
                int i11 = b02.f18219c;
                if (i11 >= i8) {
                    if (f7999K0) {
                        Log.d("RecyclerView", "offsetPositionRecordsForRemove cached " + size + " holder " + b02 + " now at position " + (b02.f18219c - i7));
                    }
                    b02.j(-i7, z6);
                } else if (i11 >= i2) {
                    b02.a(8);
                    c1300p0.f(size);
                }
            }
        }
        requestLayout();
    }

    public final void L() {
        this.f8031O++;
    }

    public final void M(boolean z6) {
        int i2;
        AccessibilityManager accessibilityManager;
        int i7 = this.f8031O - 1;
        this.f8031O = i7;
        if (i7 < 1) {
            if (f7998J0 && i7 < 0) {
                throw new IllegalStateException(c.i(this, new StringBuilder("layout or scroll counter cannot go below zero.Some calls are not matching")));
            }
            this.f8031O = 0;
            if (z6) {
                int i8 = this.f8026J;
                this.f8026J = 0;
                if (i8 != 0 && (accessibilityManager = this.f8028L) != null && accessibilityManager.isEnabled()) {
                    AccessibilityEvent obtain = AccessibilityEvent.obtain();
                    obtain.setEventType(2048);
                    b.setContentChangeTypes(obtain, i8);
                    sendAccessibilityEventUnchecked(obtain);
                }
                ArrayList arrayList = this.f8015D0;
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    B0 b02 = (B0) arrayList.get(size);
                    if (b02.f18217a.getParent() == this && !b02.l() && (i2 = b02.f18233q) != -1) {
                        AbstractC0181p0.setImportantForAccessibility(b02.f18217a, i2);
                        b02.f18233q = -1;
                    }
                }
                arrayList.clear();
            }
        }
    }

    public final void N(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f8040a0) {
            int i2 = actionIndex == 0 ? 1 : 0;
            this.f8040a0 = motionEvent.getPointerId(i2);
            int x6 = (int) (motionEvent.getX(i2) + 0.5f);
            this.f8046e0 = x6;
            this.f8043c0 = x6;
            int y6 = (int) (motionEvent.getY(i2) + 0.5f);
            this.f8048f0 = y6;
            this.f8044d0 = y6;
        }
    }

    public final void O() {
        if (this.f8076w0 || !this.f8012C) {
            return;
        }
        AbstractC0181p0.postOnAnimation(this, this.f8017E0);
        this.f8076w0 = true;
    }

    public final void P() {
        boolean z6;
        boolean z7 = false;
        if (this.f8029M) {
            C1271b c1271b = this.f8056m;
            c1271b.j(c1271b.f18349b);
            c1271b.j(c1271b.f18350c);
            c1271b.f18353f = 0;
            if (this.f8030N) {
                this.f8075w.onItemsChanged(this);
            }
        }
        if (this.f8038V == null || !this.f8075w.supportsPredictiveItemAnimations()) {
            this.f8056m.c();
        } else {
            this.f8056m.i();
        }
        boolean z8 = this.f8070t0 || this.f8072u0;
        boolean z9 = this.f8016E && this.f8038V != null && ((z6 = this.f8029M) || z8 || this.f8075w.f18393f) && (!z6 || this.f8073v.hasStableIds());
        x0 x0Var = this.f8064q0;
        x0Var.f18534j = z9;
        if (z9 && z8 && !this.f8029M && this.f8038V != null && this.f8075w.supportsPredictiveItemAnimations()) {
            z7 = true;
        }
        x0Var.f18535k = z7;
    }

    public final void Q(boolean z6) {
        this.f8030N = z6 | this.f8030N;
        this.f8029M = true;
        int childCount = this.f8058n.f18363a.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            B0 E6 = E(this.f8058n.f18363a.getChildAt(i2));
            if (E6 != null && !E6.l()) {
                E6.a(6);
            }
        }
        J();
        C1300p0 c1300p0 = this.f8047f;
        ArrayList arrayList = c1300p0.f18457c;
        int size = arrayList.size();
        for (int i7 = 0; i7 < size; i7++) {
            B0 b02 = (B0) arrayList.get(i7);
            if (b02 != null) {
                b02.a(6);
                b02.a(1024);
            }
        }
        V v6 = c1300p0.f18462h.f8073v;
        if (v6 == null || !v6.hasStableIds()) {
            c1300p0.e();
        }
    }

    public final void R(B0 b02, C1270a0 c1270a0) {
        b02.f18226j &= -8193;
        boolean z6 = this.f8064q0.f18532h;
        T0 t02 = this.f8061p;
        if (z6 && b02.i() && !b02.f() && !b02.l()) {
            t02.f18337b.put(D(b02), b02);
        }
        q qVar = t02.f18336a;
        S0 s02 = (S0) qVar.get(b02);
        if (s02 == null) {
            s02 = S0.a();
            qVar.put(b02, s02);
        }
        s02.f18333b = c1270a0;
        s02.f18332a |= 4;
    }

    public final int S(float f3, int i2) {
        float height = f3 / getHeight();
        float width = i2 / getWidth();
        EdgeEffect edgeEffect = this.f8034R;
        float f7 = 0.0f;
        if (edgeEffect == null || j.getDistance(edgeEffect) == 0.0f) {
            EdgeEffect edgeEffect2 = this.f8036T;
            if (edgeEffect2 != null && j.getDistance(edgeEffect2) != 0.0f) {
                if (canScrollHorizontally(1)) {
                    this.f8036T.onRelease();
                } else {
                    float onPullDistance = j.onPullDistance(this.f8036T, width, height);
                    if (j.getDistance(this.f8036T) == 0.0f) {
                        this.f8036T.onRelease();
                    }
                    f7 = onPullDistance;
                }
                invalidate();
            }
        } else {
            if (canScrollHorizontally(-1)) {
                this.f8034R.onRelease();
            } else {
                float f8 = -j.onPullDistance(this.f8034R, -width, 1.0f - height);
                if (j.getDistance(this.f8034R) == 0.0f) {
                    this.f8034R.onRelease();
                }
                f7 = f8;
            }
            invalidate();
        }
        return Math.round(f7 * getWidth());
    }

    public final int T(float f3, int i2) {
        float width = f3 / getWidth();
        float height = i2 / getHeight();
        EdgeEffect edgeEffect = this.f8035S;
        float f7 = 0.0f;
        if (edgeEffect == null || j.getDistance(edgeEffect) == 0.0f) {
            EdgeEffect edgeEffect2 = this.f8037U;
            if (edgeEffect2 != null && j.getDistance(edgeEffect2) != 0.0f) {
                if (canScrollVertically(1)) {
                    this.f8037U.onRelease();
                } else {
                    float onPullDistance = j.onPullDistance(this.f8037U, height, 1.0f - width);
                    if (j.getDistance(this.f8037U) == 0.0f) {
                        this.f8037U.onRelease();
                    }
                    f7 = onPullDistance;
                }
                invalidate();
            }
        } else {
            if (canScrollVertically(-1)) {
                this.f8035S.onRelease();
            } else {
                float f8 = -j.onPullDistance(this.f8035S, -height, width);
                if (j.getDistance(this.f8035S) == 0.0f) {
                    this.f8035S.onRelease();
                }
                f7 = f8;
            }
            invalidate();
        }
        return Math.round(f7 * getHeight());
    }

    public final void U(View view, View view2) {
        View view3 = view2 != null ? view2 : view;
        int width = view3.getWidth();
        int height = view3.getHeight();
        Rect rect = this.f8067s;
        rect.set(0, 0, width, height);
        ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
        if (layoutParams instanceof C1288j0) {
            C1288j0 c1288j0 = (C1288j0) layoutParams;
            if (!c1288j0.f18411c) {
                int i2 = rect.left;
                Rect rect2 = c1288j0.f18410b;
                rect.left = i2 - rect2.left;
                rect.right += rect2.right;
                rect.top -= rect2.top;
                rect.bottom += rect2.bottom;
            }
        }
        if (view2 != null) {
            offsetDescendantRectToMyCoords(view2, rect);
            offsetRectIntoDescendantCoords(view, rect);
        }
        this.f8075w.requestChildRectangleOnScreen(this, view, this.f8067s, !this.f8016E, view2 == null);
    }

    public final void V() {
        VelocityTracker velocityTracker = this.f8042b0;
        if (velocityTracker != null) {
            velocityTracker.clear();
        }
        boolean z6 = false;
        stopNestedScroll(0);
        EdgeEffect edgeEffect = this.f8034R;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            z6 = this.f8034R.isFinished();
        }
        EdgeEffect edgeEffect2 = this.f8035S;
        if (edgeEffect2 != null) {
            edgeEffect2.onRelease();
            z6 |= this.f8035S.isFinished();
        }
        EdgeEffect edgeEffect3 = this.f8036T;
        if (edgeEffect3 != null) {
            edgeEffect3.onRelease();
            z6 |= this.f8036T.isFinished();
        }
        EdgeEffect edgeEffect4 = this.f8037U;
        if (edgeEffect4 != null) {
            edgeEffect4.onRelease();
            z6 |= this.f8037U.isFinished();
        }
        if (z6) {
            AbstractC0181p0.postInvalidateOnAnimation(this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00dc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean W(int r17, int r18, android.view.MotionEvent r19, int r20) {
        /*
            Method dump skipped, instructions count: 288
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.W(int, int, android.view.MotionEvent, int):boolean");
    }

    public final void X(int i2, int i7, int[] iArr) {
        B0 b02;
        b0();
        L();
        s.beginSection("RV Scroll");
        x0 x0Var = this.f8064q0;
        x(x0Var);
        C1300p0 c1300p0 = this.f8047f;
        int scrollHorizontallyBy = i2 != 0 ? this.f8075w.scrollHorizontallyBy(i2, c1300p0, x0Var) : 0;
        int scrollVerticallyBy = i7 != 0 ? this.f8075w.scrollVerticallyBy(i7, c1300p0, x0Var) : 0;
        s.endSection();
        int d7 = this.f8058n.d();
        for (int i8 = 0; i8 < d7; i8++) {
            View c7 = this.f8058n.c(i8);
            B0 childViewHolder = getChildViewHolder(c7);
            if (childViewHolder != null && (b02 = childViewHolder.f18225i) != null) {
                int left = c7.getLeft();
                int top = c7.getTop();
                View view = b02.f18217a;
                if (left != view.getLeft() || top != view.getTop()) {
                    view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
                }
            }
        }
        M(true);
        c0(false);
        if (iArr != null) {
            iArr[0] = scrollHorizontallyBy;
            iArr[1] = scrollVerticallyBy;
        }
    }

    public final void Y(V v6, boolean z6, boolean z7) {
        V v7 = this.f8073v;
        C1303r0 c1303r0 = this.f8045e;
        if (v7 != null) {
            v7.unregisterAdapterDataObserver(c1303r0);
            this.f8073v.onDetachedFromRecyclerView(this);
        }
        C1300p0 c1300p0 = this.f8047f;
        if (!z6 || z7) {
            AbstractC1272b0 abstractC1272b0 = this.f8038V;
            if (abstractC1272b0 != null) {
                abstractC1272b0.endAnimations();
            }
            AbstractC1286i0 abstractC1286i0 = this.f8075w;
            if (abstractC1286i0 != null) {
                abstractC1286i0.removeAndRecycleAllViews(c1300p0);
                this.f8075w.d(c1300p0);
            }
            c1300p0.clear();
        }
        C1271b c1271b = this.f8056m;
        c1271b.j(c1271b.f18349b);
        c1271b.j(c1271b.f18350c);
        c1271b.f18353f = 0;
        V v8 = this.f8073v;
        this.f8073v = v6;
        if (v6 != null) {
            v6.registerAdapterDataObserver(c1303r0);
            v6.onAttachedToRecyclerView(this);
        }
        AbstractC1286i0 abstractC1286i02 = this.f8075w;
        if (abstractC1286i02 != null) {
            abstractC1286i02.onAdapterChanged(v8, this.f8073v);
        }
        V v9 = this.f8073v;
        c1300p0.clear();
        c1300p0.d(v8, true);
        C1298o0 b7 = c1300p0.b();
        if (v8 != null) {
            b7.f18449b--;
        }
        if (!z6 && b7.f18449b == 0) {
            b7.clear();
        }
        if (v9 != null) {
            b7.f18449b++;
        } else {
            b7.getClass();
        }
        c1300p0.c();
        this.f8064q0.f18530f = true;
    }

    public final boolean Z(EdgeEffect edgeEffect, int i2, int i7) {
        if (i2 > 0) {
            return true;
        }
        float distance = j.getDistance(edgeEffect) * i7;
        float abs = Math.abs(-i2) * 0.35f;
        float f3 = this.f8041b * 0.015f;
        double log = Math.log(abs / f3);
        double d7 = f8001M0;
        return ((float) (Math.exp((d7 / (d7 - 1.0d)) * log) * ((double) f3))) < distance;
    }

    public final void a0(int i2, int i7, Interpolator interpolator, int i8, boolean z6) {
        AbstractC1286i0 abstractC1286i0 = this.f8075w;
        if (abstractC1286i0 == null) {
            Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.f8022H) {
            return;
        }
        if (!abstractC1286i0.canScrollHorizontally()) {
            i2 = 0;
        }
        if (!this.f8075w.canScrollVertically()) {
            i7 = 0;
        }
        if (i2 == 0 && i7 == 0) {
            return;
        }
        if (i8 != Integer.MIN_VALUE && i8 <= 0) {
            scrollBy(i2, i7);
            return;
        }
        if (z6) {
            int i9 = i2 != 0 ? 1 : 0;
            if (i7 != 0) {
                i9 |= 2;
            }
            startNestedScroll(i9, 1);
        }
        this.f8059n0.smoothScrollBy(i2, i7, i8, interpolator);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i2, int i7) {
        AbstractC1286i0 abstractC1286i0 = this.f8075w;
        if (abstractC1286i0 == null || !abstractC1286i0.onAddFocusables(this, arrayList, i2, i7)) {
            super.addFocusables(arrayList, i2, i7);
        }
    }

    public void addItemDecoration(AbstractC1276d0 abstractC1276d0, int i2) {
        AbstractC1286i0 abstractC1286i0 = this.f8075w;
        if (abstractC1286i0 != null) {
            abstractC1286i0.assertNotInLayoutOrScroll("Cannot add item decoration during a scroll  or layout");
        }
        ArrayList arrayList = this.f8081z;
        if (arrayList.isEmpty()) {
            setWillNotDraw(false);
        }
        if (i2 < 0) {
            arrayList.add(abstractC1276d0);
        } else {
            arrayList.add(i2, abstractC1276d0);
        }
        J();
        requestLayout();
    }

    public void addOnItemTouchListener(InterfaceC1292l0 interfaceC1292l0) {
        this.f8008A.add(interfaceC1292l0);
    }

    public void addOnScrollListener(AbstractC1294m0 abstractC1294m0) {
        if (this.f8068s0 == null) {
            this.f8068s0 = new ArrayList();
        }
        this.f8068s0.add(abstractC1294m0);
    }

    public void addRecyclerListener(InterfaceC1302q0 interfaceC1302q0) {
        h.checkArgument(interfaceC1302q0 != null, "'listener' arg cannot be null.");
        this.f8079y.add(interfaceC1302q0);
    }

    public final void b0() {
        int i2 = this.f8018F + 1;
        this.f8018F = i2;
        if (i2 != 1 || this.f8022H) {
            return;
        }
        this.f8020G = false;
    }

    public final void c0(boolean z6) {
        if (this.f8018F < 1) {
            if (f7998J0) {
                throw new IllegalStateException(c.i(this, new StringBuilder("stopInterceptRequestLayout was called more times than startInterceptRequestLayout.")));
            }
            this.f8018F = 1;
        }
        if (!z6 && !this.f8022H) {
            this.f8020G = false;
        }
        if (this.f8018F == 1) {
            if (z6 && this.f8020G && !this.f8022H && this.f8075w != null && this.f8073v != null) {
                o();
            }
            if (!this.f8022H) {
                this.f8020G = false;
            }
        }
        this.f8018F--;
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof C1288j0) && this.f8075w.checkLayoutParams((C1288j0) layoutParams);
    }

    @Override // android.view.View
    public int computeHorizontalScrollExtent() {
        AbstractC1286i0 abstractC1286i0 = this.f8075w;
        if (abstractC1286i0 != null && abstractC1286i0.canScrollHorizontally()) {
            return this.f8075w.computeHorizontalScrollExtent(this.f8064q0);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeHorizontalScrollOffset() {
        AbstractC1286i0 abstractC1286i0 = this.f8075w;
        if (abstractC1286i0 != null && abstractC1286i0.canScrollHorizontally()) {
            return this.f8075w.computeHorizontalScrollOffset(this.f8064q0);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeHorizontalScrollRange() {
        AbstractC1286i0 abstractC1286i0 = this.f8075w;
        if (abstractC1286i0 != null && abstractC1286i0.canScrollHorizontally()) {
            return this.f8075w.computeHorizontalScrollRange(this.f8064q0);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollExtent() {
        AbstractC1286i0 abstractC1286i0 = this.f8075w;
        if (abstractC1286i0 != null && abstractC1286i0.canScrollVertically()) {
            return this.f8075w.computeVerticalScrollExtent(this.f8064q0);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollOffset() {
        AbstractC1286i0 abstractC1286i0 = this.f8075w;
        if (abstractC1286i0 != null && abstractC1286i0.canScrollVertically()) {
            return this.f8075w.computeVerticalScrollOffset(this.f8064q0);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollRange() {
        AbstractC1286i0 abstractC1286i0 = this.f8075w;
        if (abstractC1286i0 != null && abstractC1286i0.canScrollVertically()) {
            return this.f8075w.computeVerticalScrollRange(this.f8064q0);
        }
        return 0;
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f3, float f7, boolean z6) {
        return getScrollingChildHelper().dispatchNestedFling(f3, f7, z6);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f3, float f7) {
        return getScrollingChildHelper().dispatchNestedPreFling(f3, f7);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i2, int i7, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().dispatchNestedPreScroll(i2, i7, iArr, iArr2);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i2, int i7, int i8, int i9, int[] iArr) {
        return getScrollingChildHelper().dispatchNestedScroll(i2, i7, i8, i9, iArr);
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        onPopulateAccessibilityEvent(accessibilityEvent);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchSaveInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        boolean z6;
        super.draw(canvas);
        ArrayList arrayList = this.f8081z;
        int size = arrayList.size();
        boolean z7 = false;
        for (int i2 = 0; i2 < size; i2++) {
            ((AbstractC1276d0) arrayList.get(i2)).onDrawOver(canvas, this, this.f8064q0);
        }
        EdgeEffect edgeEffect = this.f8034R;
        if (edgeEffect == null || edgeEffect.isFinished()) {
            z6 = false;
        } else {
            int save = canvas.save();
            int paddingBottom = this.f8063q ? getPaddingBottom() : 0;
            canvas.rotate(270.0f);
            canvas.translate((-getHeight()) + paddingBottom, 0.0f);
            EdgeEffect edgeEffect2 = this.f8034R;
            z6 = edgeEffect2 != null && edgeEffect2.draw(canvas);
            canvas.restoreToCount(save);
        }
        EdgeEffect edgeEffect3 = this.f8035S;
        if (edgeEffect3 != null && !edgeEffect3.isFinished()) {
            int save2 = canvas.save();
            if (this.f8063q) {
                canvas.translate(getPaddingLeft(), getPaddingTop());
            }
            EdgeEffect edgeEffect4 = this.f8035S;
            z6 |= edgeEffect4 != null && edgeEffect4.draw(canvas);
            canvas.restoreToCount(save2);
        }
        EdgeEffect edgeEffect5 = this.f8036T;
        if (edgeEffect5 != null && !edgeEffect5.isFinished()) {
            int save3 = canvas.save();
            int width = getWidth();
            int paddingTop = this.f8063q ? getPaddingTop() : 0;
            canvas.rotate(90.0f);
            canvas.translate(paddingTop, -width);
            EdgeEffect edgeEffect6 = this.f8036T;
            z6 |= edgeEffect6 != null && edgeEffect6.draw(canvas);
            canvas.restoreToCount(save3);
        }
        EdgeEffect edgeEffect7 = this.f8037U;
        if (edgeEffect7 != null && !edgeEffect7.isFinished()) {
            int save4 = canvas.save();
            canvas.rotate(180.0f);
            if (this.f8063q) {
                canvas.translate(getPaddingRight() + (-getWidth()), getPaddingBottom() + (-getHeight()));
            } else {
                canvas.translate(-getWidth(), -getHeight());
            }
            EdgeEffect edgeEffect8 = this.f8037U;
            if (edgeEffect8 != null && edgeEffect8.draw(canvas)) {
                z7 = true;
            }
            z6 |= z7;
            canvas.restoreToCount(save4);
        }
        if ((z6 || this.f8038V == null || arrayList.size() <= 0 || !this.f8038V.isRunning()) ? z6 : true) {
            AbstractC0181p0.postInvalidateOnAnimation(this);
        }
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j7) {
        return super.drawChild(canvas, view, j7);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0016, code lost:
    
        return r3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View findContainingItemView(android.view.View r3) {
        /*
            r2 = this;
            android.view.ViewParent r0 = r3.getParent()
        L4:
            if (r0 == 0) goto L14
            if (r0 == r2) goto L14
            boolean r1 = r0 instanceof android.view.View
            if (r1 == 0) goto L14
            r3 = r0
            android.view.View r3 = (android.view.View) r3
            android.view.ViewParent r0 = r3.getParent()
            goto L4
        L14:
            if (r0 != r2) goto L17
            return r3
        L17:
            r3 = 0
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.findContainingItemView(android.view.View):android.view.View");
    }

    public B0 findContainingViewHolder(View view) {
        View findContainingItemView = findContainingItemView(view);
        if (findContainingItemView == null) {
            return null;
        }
        return getChildViewHolder(findContainingItemView);
    }

    public B0 findViewHolderForAdapterPosition(int i2) {
        B0 b02 = null;
        if (this.f8029M) {
            return null;
        }
        int childCount = this.f8058n.f18363a.getChildCount();
        for (int i7 = 0; i7 < childCount; i7++) {
            B0 E6 = E(this.f8058n.f18363a.getChildAt(i7));
            if (E6 != null && !E6.f() && C(E6) == i2) {
                C1275d c1275d = this.f8058n;
                if (!c1275d.f18365c.contains(E6.f18217a)) {
                    return E6;
                }
                b02 = E6;
            }
        }
        return b02;
    }

    public B0 findViewHolderForItemId(long j7) {
        V v6 = this.f8073v;
        B0 b02 = null;
        if (v6 != null && v6.hasStableIds()) {
            int childCount = this.f8058n.f18363a.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                B0 E6 = E(this.f8058n.f18363a.getChildAt(i2));
                if (E6 != null && !E6.f() && E6.getItemId() == j7) {
                    C1275d c1275d = this.f8058n;
                    if (!c1275d.f18365c.contains(E6.f18217a)) {
                        return E6;
                    }
                    b02 = E6;
                }
            }
        }
        return b02;
    }

    @Deprecated
    public B0 findViewHolderForPosition(int i2) {
        return B(i2, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:29:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00c4 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00dd A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00ec  */
    /* JADX WARN: Type inference failed for: r0v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean fling(int r10, int r11) {
        /*
            Method dump skipped, instructions count: 289
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.fling(int, int):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:0x017d, code lost:
    
        if (r5 > 0) goto L139;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x0180, code lost:
    
        if (r7 < 0) goto L139;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x0183, code lost:
    
        if (r5 < 0) goto L139;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x018b, code lost:
    
        if ((r5 * r6) <= 0) goto L121;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0193, code lost:
    
        if ((r5 * r6) >= 0) goto L121;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x0164, code lost:
    
        if (r7 > 0) goto L139;
     */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00d0 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0197 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0198  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00df  */
    @Override // android.view.ViewGroup, android.view.ViewParent
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View focusSearch(android.view.View r17, int r18) {
        /*
            Method dump skipped, instructions count: 413
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.focusSearch(android.view.View, int):android.view.View");
    }

    public final void g(B0 b02) {
        View view = b02.f18217a;
        boolean z6 = view.getParent() == this;
        this.f8047f.j(getChildViewHolder(view));
        if (b02.h()) {
            this.f8058n.b(view, -1, view.getLayoutParams(), true);
            return;
        }
        if (!z6) {
            this.f8058n.a(view, true, -1);
            return;
        }
        C1275d c1275d = this.f8058n;
        int indexOfChild = c1275d.f18363a.indexOfChild(view);
        if (indexOfChild < 0) {
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        }
        c1275d.f18364b.h(indexOfChild);
        c1275d.f18365c.add(view);
        c1275d.f18363a.onEnteredHiddenState(view);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        AbstractC1286i0 abstractC1286i0 = this.f8075w;
        if (abstractC1286i0 != null) {
            return abstractC1286i0.generateDefaultLayoutParams();
        }
        throw new IllegalStateException(c.i(this, new StringBuilder("RecyclerView has no LayoutManager")));
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        AbstractC1286i0 abstractC1286i0 = this.f8075w;
        if (abstractC1286i0 != null) {
            return abstractC1286i0.generateLayoutParams(getContext(), attributeSet);
        }
        throw new IllegalStateException(c.i(this, new StringBuilder("RecyclerView has no LayoutManager")));
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return "androidx.recyclerview.widget.RecyclerView";
    }

    public V getAdapter() {
        return this.f8073v;
    }

    @Override // android.view.View
    public int getBaseline() {
        AbstractC1286i0 abstractC1286i0 = this.f8075w;
        return abstractC1286i0 != null ? abstractC1286i0.getBaseline() : super.getBaseline();
    }

    public int getChildAdapterPosition(View view) {
        B0 E6 = E(view);
        if (E6 != null) {
            return E6.getAbsoluteAdapterPosition();
        }
        return -1;
    }

    @Override // android.view.ViewGroup
    public int getChildDrawingOrder(int i2, int i7) {
        return super.getChildDrawingOrder(i2, i7);
    }

    public int getChildLayoutPosition(View view) {
        B0 E6 = E(view);
        if (E6 != null) {
            return E6.getLayoutPosition();
        }
        return -1;
    }

    public B0 getChildViewHolder(View view) {
        ViewParent parent = view.getParent();
        if (parent == null || parent == this) {
            return E(view);
        }
        throw new IllegalArgumentException("View " + view + " is not a direct child of " + this);
    }

    @Override // android.view.ViewGroup
    public boolean getClipToPadding() {
        return this.f8063q;
    }

    public D0 getCompatAccessibilityDelegate() {
        return this.f8078x0;
    }

    public void getDecoratedBoundsWithMargins(View view, Rect rect) {
        F(view, rect);
    }

    public Z getEdgeEffectFactory() {
        return this.f8033Q;
    }

    public AbstractC1272b0 getItemAnimator() {
        return this.f8038V;
    }

    public int getItemDecorationCount() {
        return this.f8081z.size();
    }

    public AbstractC1286i0 getLayoutManager() {
        return this.f8075w;
    }

    public int getMaxFlingVelocity() {
        return this.f8053j0;
    }

    public int getMinFlingVelocity() {
        return this.f8051i0;
    }

    public long getNanoTime() {
        if (f8004P0) {
            return System.nanoTime();
        }
        return 0L;
    }

    public AbstractC1290k0 getOnFlingListener() {
        return this.f8050h0;
    }

    public boolean getPreserveFocusAfterLayout() {
        return this.f8057m0;
    }

    public C1298o0 getRecycledViewPool() {
        return this.f8047f.b();
    }

    public int getScrollState() {
        return this.f8039W;
    }

    public final void h(String str) {
        if (isComputingLayout()) {
            if (str != null) {
                throw new IllegalStateException(str);
            }
            throw new IllegalStateException(c.i(this, new StringBuilder("Cannot call this method while RecyclerView is computing a layout or scrolling")));
        }
        if (this.f8032P > 0) {
            Log.w("RecyclerView", "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame.", new IllegalStateException(c.i(this, new StringBuilder(""))));
        }
    }

    public boolean hasFixedSize() {
        return this.f8014D;
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return getScrollingChildHelper().hasNestedScrollingParent();
    }

    public boolean hasPendingAdapterUpdates() {
        return !this.f8016E || this.f8029M || this.f8056m.g();
    }

    @Override // android.view.View
    public boolean isAttachedToWindow() {
        return this.f8012C;
    }

    public boolean isComputingLayout() {
        return this.f8031O > 0;
    }

    @Override // android.view.ViewGroup
    public final boolean isLayoutSuppressed() {
        return this.f8022H;
    }

    @Override // android.view.View
    public boolean isNestedScrollingEnabled() {
        return getScrollingChildHelper().isNestedScrollingEnabled();
    }

    public final void j() {
        int childCount = this.f8058n.f18363a.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            B0 E6 = E(this.f8058n.f18363a.getChildAt(i2));
            if (!E6.l()) {
                E6.f18220d = -1;
                E6.f18223g = -1;
            }
        }
        C1300p0 c1300p0 = this.f8047f;
        ArrayList arrayList = c1300p0.f18457c;
        int size = arrayList.size();
        for (int i7 = 0; i7 < size; i7++) {
            B0 b02 = (B0) arrayList.get(i7);
            b02.f18220d = -1;
            b02.f18223g = -1;
        }
        ArrayList arrayList2 = c1300p0.f18455a;
        int size2 = arrayList2.size();
        for (int i8 = 0; i8 < size2; i8++) {
            B0 b03 = (B0) arrayList2.get(i8);
            b03.f18220d = -1;
            b03.f18223g = -1;
        }
        ArrayList arrayList3 = c1300p0.f18456b;
        if (arrayList3 != null) {
            int size3 = arrayList3.size();
            for (int i9 = 0; i9 < size3; i9++) {
                B0 b04 = (B0) c1300p0.f18456b.get(i9);
                b04.f18220d = -1;
                b04.f18223g = -1;
            }
        }
    }

    public final void k(int i2, int i7) {
        boolean z6;
        EdgeEffect edgeEffect = this.f8034R;
        if (edgeEffect == null || edgeEffect.isFinished() || i2 <= 0) {
            z6 = false;
        } else {
            this.f8034R.onRelease();
            z6 = this.f8034R.isFinished();
        }
        EdgeEffect edgeEffect2 = this.f8036T;
        if (edgeEffect2 != null && !edgeEffect2.isFinished() && i2 < 0) {
            this.f8036T.onRelease();
            z6 |= this.f8036T.isFinished();
        }
        EdgeEffect edgeEffect3 = this.f8035S;
        if (edgeEffect3 != null && !edgeEffect3.isFinished() && i7 > 0) {
            this.f8035S.onRelease();
            z6 |= this.f8035S.isFinished();
        }
        EdgeEffect edgeEffect4 = this.f8037U;
        if (edgeEffect4 != null && !edgeEffect4.isFinished() && i7 < 0) {
            this.f8037U.onRelease();
            z6 |= this.f8037U.isFinished();
        }
        if (z6) {
            AbstractC0181p0.postInvalidateOnAnimation(this);
        }
    }

    public final void m() {
        if (!this.f8016E || this.f8029M) {
            s.beginSection("RV FullInvalidate");
            o();
            s.endSection();
            return;
        }
        if (this.f8056m.g()) {
            C1271b c1271b = this.f8056m;
            int i2 = c1271b.f18353f;
            if ((i2 & 4) == 0 || (i2 & 11) != 0) {
                if (c1271b.g()) {
                    s.beginSection("RV FullInvalidate");
                    o();
                    s.endSection();
                    return;
                }
                return;
            }
            s.beginSection("RV PartialInvalidate");
            b0();
            L();
            this.f8056m.i();
            if (!this.f8020G) {
                int d7 = this.f8058n.d();
                int i7 = 0;
                while (true) {
                    if (i7 < d7) {
                        B0 E6 = E(this.f8058n.c(i7));
                        if (E6 != null && !E6.l() && E6.i()) {
                            o();
                            break;
                        }
                        i7++;
                    } else {
                        this.f8056m.b();
                        break;
                    }
                }
            }
            c0(true);
            M(true);
            s.endSection();
        }
    }

    public final void n(int i2, int i7) {
        setMeasuredDimension(AbstractC1286i0.chooseSize(i2, getPaddingRight() + getPaddingLeft(), AbstractC0181p0.getMinimumWidth(this)), AbstractC1286i0.chooseSize(i7, getPaddingBottom() + getPaddingTop(), AbstractC0181p0.getMinimumHeight(this)));
    }

    /* JADX WARN: Code restructure failed: missing block: B:143:0x02d6, code lost:
    
        if (r20.f8058n.f18365c.contains(getFocusedChild()) == false) goto L193;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0350  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void o() {
        /*
            Method dump skipped, instructions count: 878
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.o():void");
    }

    public void offsetChildrenHorizontal(int i2) {
        int d7 = this.f8058n.d();
        for (int i7 = 0; i7 < d7; i7++) {
            this.f8058n.c(i7).offsetLeftAndRight(i2);
        }
    }

    public void offsetChildrenVertical(int i2) {
        int d7 = this.f8058n.d();
        for (int i7 = 0; i7 < d7; i7++) {
            this.f8058n.c(i7).offsetTopAndBottom(i2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0061, code lost:
    
        if (r1 >= 30.0f) goto L22;
     */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onAttachedToWindow() {
        /*
            r5 = this;
            super.onAttachedToWindow()
            r0 = 0
            r5.f8031O = r0
            r1 = 1
            r5.f8012C = r1
            boolean r2 = r5.f8016E
            if (r2 == 0) goto L15
            boolean r2 = r5.isLayoutRequested()
            if (r2 != 0) goto L15
            r2 = r1
            goto L16
        L15:
            r2 = r0
        L16:
            r5.f8016E = r2
            m1.p0 r2 = r5.f8047f
            r2.c()
            m1.i0 r2 = r5.f8075w
            if (r2 == 0) goto L26
            r2.f18394g = r1
            r2.onAttachedToWindow(r5)
        L26:
            r5.f8076w0 = r0
            boolean r0 = androidx.recyclerview.widget.RecyclerView.f8004P0
            if (r0 == 0) goto L77
            java.lang.ThreadLocal r0 = m1.RunnableC1312y.f18541m
            java.lang.Object r1 = r0.get()
            m1.y r1 = (m1.RunnableC1312y) r1
            r5.f8060o0 = r1
            if (r1 != 0) goto L72
            m1.y r1 = new m1.y
            r1.<init>()
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            r1.f18543b = r2
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            r1.f18546j = r2
            r5.f8060o0 = r1
            android.view.Display r1 = M.AbstractC0181p0.getDisplay(r5)
            boolean r2 = r5.isInEditMode()
            if (r2 != 0) goto L64
            if (r1 == 0) goto L64
            float r1 = r1.getRefreshRate()
            r2 = 1106247680(0x41f00000, float:30.0)
            int r2 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1))
            if (r2 < 0) goto L64
            goto L66
        L64:
            r1 = 1114636288(0x42700000, float:60.0)
        L66:
            m1.y r2 = r5.f8060o0
            r3 = 1315859240(0x4e6e6b28, float:1.0E9)
            float r3 = r3 / r1
            long r3 = (long) r3
            r2.f18545f = r3
            r0.set(r2)
        L72:
            m1.y r0 = r5.f8060o0
            r0.add(r5)
        L77:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onAttachedToWindow():void");
    }

    public void onChildAttachedToWindow(View view) {
    }

    public void onChildDetachedFromWindow(View view) {
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        RunnableC1312y runnableC1312y;
        super.onDetachedFromWindow();
        AbstractC1272b0 abstractC1272b0 = this.f8038V;
        if (abstractC1272b0 != null) {
            abstractC1272b0.endAnimations();
        }
        stopScroll();
        this.f8012C = false;
        AbstractC1286i0 abstractC1286i0 = this.f8075w;
        C1300p0 c1300p0 = this.f8047f;
        if (abstractC1286i0 != null) {
            abstractC1286i0.f18394g = false;
            abstractC1286i0.onDetachedFromWindow(this, c1300p0);
        }
        this.f8015D0.clear();
        removeCallbacks(this.f8017E0);
        this.f8061p.getClass();
        while (S0.f18331d.acquire() != null) {
        }
        int i2 = 0;
        while (true) {
            ArrayList arrayList = c1300p0.f18457c;
            if (i2 >= arrayList.size()) {
                break;
            }
            a.callPoolingContainerOnRelease(((B0) arrayList.get(i2)).f18217a);
            i2++;
        }
        c1300p0.d(c1300p0.f18462h.f8073v, false);
        a.callPoolingContainerOnReleaseForChildren(this);
        if (!f8004P0 || (runnableC1312y = this.f8060o0) == null) {
            return;
        }
        runnableC1312y.remove(this);
        this.f8060o0 = null;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        ArrayList arrayList = this.f8081z;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            ((AbstractC1276d0) arrayList.get(i2)).onDraw(canvas, this, this.f8064q0);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0082  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onGenericMotionEvent(android.view.MotionEvent r15) {
        /*
            Method dump skipped, instructions count: 236
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onGenericMotionEvent(android.view.MotionEvent):boolean");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z6;
        boolean z7;
        if (!this.f8022H) {
            this.f8010B = null;
            if (y(motionEvent)) {
                V();
                setScrollState(0);
                return true;
            }
            AbstractC1286i0 abstractC1286i0 = this.f8075w;
            if (abstractC1286i0 != null) {
                boolean canScrollHorizontally = abstractC1286i0.canScrollHorizontally();
                boolean canScrollVertically = this.f8075w.canScrollVertically();
                if (this.f8042b0 == null) {
                    this.f8042b0 = VelocityTracker.obtain();
                }
                this.f8042b0.addMovement(motionEvent);
                int actionMasked = motionEvent.getActionMasked();
                int actionIndex = motionEvent.getActionIndex();
                if (actionMasked == 0) {
                    if (this.f8024I) {
                        this.f8024I = false;
                    }
                    this.f8040a0 = motionEvent.getPointerId(0);
                    int x6 = (int) (motionEvent.getX() + 0.5f);
                    this.f8046e0 = x6;
                    this.f8043c0 = x6;
                    int y6 = (int) (motionEvent.getY() + 0.5f);
                    this.f8048f0 = y6;
                    this.f8044d0 = y6;
                    EdgeEffect edgeEffect = this.f8034R;
                    if (edgeEffect == null || j.getDistance(edgeEffect) == 0.0f || canScrollHorizontally(-1)) {
                        z6 = false;
                    } else {
                        j.onPullDistance(this.f8034R, 0.0f, 1.0f - (motionEvent.getY() / getHeight()));
                        z6 = true;
                    }
                    EdgeEffect edgeEffect2 = this.f8036T;
                    boolean z8 = z6;
                    if (edgeEffect2 != null) {
                        z8 = z6;
                        if (j.getDistance(edgeEffect2) != 0.0f) {
                            z8 = z6;
                            if (!canScrollHorizontally(1)) {
                                j.onPullDistance(this.f8036T, 0.0f, motionEvent.getY() / getHeight());
                                z8 = true;
                            }
                        }
                    }
                    EdgeEffect edgeEffect3 = this.f8035S;
                    boolean z9 = z8;
                    if (edgeEffect3 != null) {
                        z9 = z8;
                        if (j.getDistance(edgeEffect3) != 0.0f) {
                            z9 = z8;
                            if (!canScrollVertically(-1)) {
                                j.onPullDistance(this.f8035S, 0.0f, motionEvent.getX() / getWidth());
                                z9 = true;
                            }
                        }
                    }
                    EdgeEffect edgeEffect4 = this.f8037U;
                    boolean z10 = z9;
                    if (edgeEffect4 != null) {
                        z10 = z9;
                        if (j.getDistance(edgeEffect4) != 0.0f) {
                            z10 = z9;
                            if (!canScrollVertically(1)) {
                                j.onPullDistance(this.f8037U, 0.0f, 1.0f - (motionEvent.getX() / getWidth()));
                                z10 = true;
                            }
                        }
                    }
                    if (z10 || this.f8039W == 2) {
                        getParent().requestDisallowInterceptTouchEvent(true);
                        setScrollState(1);
                        stopNestedScroll(1);
                    }
                    int[] iArr = this.f8011B0;
                    iArr[1] = 0;
                    iArr[0] = 0;
                    int i2 = canScrollHorizontally;
                    if (canScrollVertically) {
                        i2 = (canScrollHorizontally ? 1 : 0) | 2;
                    }
                    startNestedScroll(i2, 0);
                } else if (actionMasked == 1) {
                    this.f8042b0.clear();
                    stopNestedScroll(0);
                } else if (actionMasked == 2) {
                    int findPointerIndex = motionEvent.findPointerIndex(this.f8040a0);
                    if (findPointerIndex < 0) {
                        Log.e("RecyclerView", "Error processing scroll; pointer index for id " + this.f8040a0 + " not found. Did any MotionEvents get skipped?");
                        return false;
                    }
                    int x7 = (int) (motionEvent.getX(findPointerIndex) + 0.5f);
                    int y7 = (int) (motionEvent.getY(findPointerIndex) + 0.5f);
                    if (this.f8039W != 1) {
                        int i7 = x7 - this.f8043c0;
                        int i8 = y7 - this.f8044d0;
                        if (canScrollHorizontally == 0 || Math.abs(i7) <= this.f8049g0) {
                            z7 = false;
                        } else {
                            this.f8046e0 = x7;
                            z7 = true;
                        }
                        if (canScrollVertically && Math.abs(i8) > this.f8049g0) {
                            this.f8048f0 = y7;
                            z7 = true;
                        }
                        if (z7) {
                            setScrollState(1);
                        }
                    }
                } else if (actionMasked == 3) {
                    V();
                    setScrollState(0);
                } else if (actionMasked == 5) {
                    this.f8040a0 = motionEvent.getPointerId(actionIndex);
                    int x8 = (int) (motionEvent.getX(actionIndex) + 0.5f);
                    this.f8046e0 = x8;
                    this.f8043c0 = x8;
                    int y8 = (int) (motionEvent.getY(actionIndex) + 0.5f);
                    this.f8048f0 = y8;
                    this.f8044d0 = y8;
                } else if (actionMasked == 6) {
                    N(motionEvent);
                }
                if (this.f8039W == 1) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z6, int i2, int i7, int i8, int i9) {
        s.beginSection("RV OnLayout");
        o();
        s.endSection();
        this.f8016E = true;
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i7) {
        AbstractC1286i0 abstractC1286i0 = this.f8075w;
        if (abstractC1286i0 == null) {
            n(i2, i7);
            return;
        }
        boolean isAutoMeasureEnabled = abstractC1286i0.isAutoMeasureEnabled();
        C1300p0 c1300p0 = this.f8047f;
        boolean z6 = false;
        x0 x0Var = this.f8064q0;
        if (isAutoMeasureEnabled) {
            int mode = View.MeasureSpec.getMode(i2);
            int mode2 = View.MeasureSpec.getMode(i7);
            this.f8075w.onMeasure(c1300p0, x0Var, i2, i7);
            if (mode == 1073741824 && mode2 == 1073741824) {
                z6 = true;
            }
            this.f8019F0 = z6;
            if (z6 || this.f8073v == null) {
                return;
            }
            if (x0Var.f18528d == 1) {
                p();
            }
            this.f8075w.g(i2, i7);
            x0Var.f18533i = true;
            q();
            this.f8075w.h(i2, i7);
            if (this.f8075w.k()) {
                this.f8075w.g(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
                x0Var.f18533i = true;
                q();
                this.f8075w.h(i2, i7);
            }
            this.f8021G0 = getMeasuredWidth();
            this.f8023H0 = getMeasuredHeight();
            return;
        }
        if (this.f8014D) {
            this.f8075w.onMeasure(c1300p0, x0Var, i2, i7);
            return;
        }
        if (this.f8027K) {
            b0();
            L();
            P();
            M(true);
            if (x0Var.f18535k) {
                x0Var.f18531g = true;
            } else {
                this.f8056m.c();
                x0Var.f18531g = false;
            }
            this.f8027K = false;
            c0(false);
        } else if (x0Var.f18535k) {
            setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
            return;
        }
        V v6 = this.f8073v;
        if (v6 != null) {
            x0Var.f18529e = v6.getItemCount();
        } else {
            x0Var.f18529e = 0;
        }
        b0();
        this.f8075w.onMeasure(c1300p0, x0Var, i2, i7);
        c0(false);
        x0Var.f18531g = false;
    }

    @Override // android.view.ViewGroup
    public boolean onRequestFocusInDescendants(int i2, Rect rect) {
        if (isComputingLayout()) {
            return false;
        }
        return super.onRequestFocusInDescendants(i2, rect);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof C1307t0)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C1307t0 c1307t0 = (C1307t0) parcelable;
        this.f8052j = c1307t0;
        super.onRestoreInstanceState(c1307t0.getSuperState());
        requestLayout();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        C1307t0 c1307t0 = new C1307t0(super.onSaveInstanceState());
        C1307t0 c1307t02 = this.f8052j;
        if (c1307t02 != null) {
            c1307t0.f18469f = c1307t02.f18469f;
            return c1307t0;
        }
        AbstractC1286i0 abstractC1286i0 = this.f8075w;
        if (abstractC1286i0 != null) {
            c1307t0.f18469f = abstractC1286i0.onSaveInstanceState();
            return c1307t0;
        }
        c1307t0.f18469f = null;
        return c1307t0;
    }

    public void onScrollStateChanged(int i2) {
    }

    public void onScrolled(int i2, int i7) {
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i7, int i8, int i9) {
        super.onSizeChanged(i2, i7, i8, i9);
        if (i2 == i8 && i7 == i9) {
            return;
        }
        this.f8037U = null;
        this.f8035S = null;
        this.f8036T = null;
        this.f8034R = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0116  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r19) {
        /*
            Method dump skipped, instructions count: 522
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public final void p() {
        S0 s02;
        x0 x0Var = this.f8064q0;
        x0Var.a(1);
        x(x0Var);
        x0Var.f18533i = false;
        b0();
        T0 t02 = this.f8061p;
        t02.f18336a.clear();
        n nVar = t02.f18337b;
        nVar.clear();
        L();
        P();
        View focusedChild = (this.f8057m0 && hasFocus() && this.f8073v != null) ? getFocusedChild() : null;
        B0 findContainingViewHolder = focusedChild != null ? findContainingViewHolder(focusedChild) : null;
        if (findContainingViewHolder == null) {
            x0Var.f18537m = -1L;
            x0Var.f18536l = -1;
            x0Var.f18538n = -1;
        } else {
            x0Var.f18537m = this.f8073v.hasStableIds() ? findContainingViewHolder.getItemId() : -1L;
            x0Var.f18536l = this.f8029M ? -1 : findContainingViewHolder.f() ? findContainingViewHolder.f18220d : findContainingViewHolder.getAbsoluteAdapterPosition();
            View view = findContainingViewHolder.f18217a;
            int id = view.getId();
            while (!view.isFocused() && (view instanceof ViewGroup) && view.hasFocus()) {
                view = ((ViewGroup) view).getFocusedChild();
                if (view.getId() != -1) {
                    id = view.getId();
                }
            }
            x0Var.f18538n = id;
        }
        x0Var.f18532h = x0Var.f18534j && this.f8072u0;
        this.f8072u0 = false;
        this.f8070t0 = false;
        x0Var.f18531g = x0Var.f18535k;
        x0Var.f18529e = this.f8073v.getItemCount();
        z(this.f8080y0);
        boolean z6 = x0Var.f18534j;
        q qVar = t02.f18336a;
        if (z6) {
            int d7 = this.f8058n.d();
            for (int i2 = 0; i2 < d7; i2++) {
                B0 E6 = E(this.f8058n.c(i2));
                if (!E6.l() && (!E6.e() || this.f8073v.hasStableIds())) {
                    C1270a0 recordPreLayoutInformation = this.f8038V.recordPreLayoutInformation(x0Var, E6, AbstractC1272b0.a(E6), E6.b());
                    S0 s03 = (S0) qVar.get(E6);
                    if (s03 == null) {
                        s03 = S0.a();
                        qVar.put(E6, s03);
                    }
                    s03.f18333b = recordPreLayoutInformation;
                    s03.f18332a |= 4;
                    if (x0Var.f18532h && E6.i() && !E6.f() && !E6.l() && !E6.e()) {
                        nVar.put(D(E6), E6);
                    }
                }
            }
        }
        if (x0Var.f18535k) {
            int childCount = this.f8058n.f18363a.getChildCount();
            for (int i7 = 0; i7 < childCount; i7++) {
                B0 E7 = E(this.f8058n.f18363a.getChildAt(i7));
                if (f7998J0 && E7.f18219c == -1 && !E7.f()) {
                    throw new IllegalStateException(c.i(this, new StringBuilder("view holder cannot have position -1 unless it is removed")));
                }
                if (!E7.l() && E7.f18220d == -1) {
                    E7.f18220d = E7.f18219c;
                }
            }
            boolean z7 = x0Var.f18530f;
            x0Var.f18530f = false;
            this.f8075w.onLayoutChildren(this.f8047f, x0Var);
            x0Var.f18530f = z7;
            for (int i8 = 0; i8 < this.f8058n.d(); i8++) {
                B0 E8 = E(this.f8058n.c(i8));
                if (!E8.l() && ((s02 = (S0) qVar.get(E8)) == null || (s02.f18332a & 4) == 0)) {
                    int a7 = AbstractC1272b0.a(E8);
                    boolean z8 = (E8.f18226j & 8192) != 0;
                    if (!z8) {
                        a7 |= 4096;
                    }
                    C1270a0 recordPreLayoutInformation2 = this.f8038V.recordPreLayoutInformation(x0Var, E8, a7, E8.b());
                    if (z8) {
                        R(E8, recordPreLayoutInformation2);
                    } else {
                        S0 s04 = (S0) qVar.get(E8);
                        if (s04 == null) {
                            s04 = S0.a();
                            qVar.put(E8, s04);
                        }
                        s04.f18332a |= 2;
                        s04.f18333b = recordPreLayoutInformation2;
                    }
                }
            }
            j();
        } else {
            j();
        }
        M(true);
        c0(false);
        x0Var.f18528d = 2;
    }

    public final void q() {
        b0();
        L();
        x0 x0Var = this.f8064q0;
        x0Var.a(6);
        this.f8056m.c();
        x0Var.f18529e = this.f8073v.getItemCount();
        x0Var.f18527c = 0;
        if (this.f8052j != null) {
            V v6 = this.f8073v;
            int ordinal = v6.f18341c.ordinal();
            if (ordinal == 1 ? v6.getItemCount() > 0 : ordinal != 2) {
                Parcelable parcelable = this.f8052j.f18469f;
                if (parcelable != null) {
                    this.f8075w.onRestoreInstanceState(parcelable);
                }
                this.f8052j = null;
            }
        }
        x0Var.f18531g = false;
        this.f8075w.onLayoutChildren(this.f8047f, x0Var);
        x0Var.f18530f = false;
        x0Var.f18534j = x0Var.f18534j && this.f8038V != null;
        x0Var.f18528d = 4;
        M(true);
        c0(false);
    }

    public final void r(int i2, int i7) {
        this.f8032P++;
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        onScrollChanged(scrollX, scrollY, scrollX - i2, scrollY - i7);
        onScrolled(i2, i7);
        AbstractC1294m0 abstractC1294m0 = this.f8066r0;
        if (abstractC1294m0 != null) {
            abstractC1294m0.onScrolled(this, i2, i7);
        }
        ArrayList arrayList = this.f8068s0;
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((AbstractC1294m0) this.f8068s0.get(size)).onScrolled(this, i2, i7);
            }
        }
        this.f8032P--;
    }

    @Override // android.view.ViewGroup
    public void removeDetachedView(View view, boolean z6) {
        B0 E6 = E(view);
        if (E6 != null) {
            if (E6.h()) {
                E6.f18226j &= -257;
            } else if (!E6.l()) {
                StringBuilder sb = new StringBuilder("Called removeDetachedView with a view which is not flagged as tmp detached.");
                sb.append(E6);
                throw new IllegalArgumentException(c.i(this, sb));
            }
        } else if (f7998J0) {
            StringBuilder sb2 = new StringBuilder("No ViewHolder found for child: ");
            sb2.append(view);
            throw new IllegalArgumentException(c.i(this, sb2));
        }
        view.clearAnimation();
        B0 E7 = E(view);
        onChildDetachedFromWindow(view);
        V v6 = this.f8073v;
        if (v6 != null && E7 != null) {
            v6.onViewDetachedFromWindow(E7);
        }
        super.removeDetachedView(view, z6);
    }

    public void removeItemDecoration(AbstractC1276d0 abstractC1276d0) {
        AbstractC1286i0 abstractC1286i0 = this.f8075w;
        if (abstractC1286i0 != null) {
            abstractC1286i0.assertNotInLayoutOrScroll("Cannot remove item decoration during a scroll  or layout");
        }
        ArrayList arrayList = this.f8081z;
        arrayList.remove(abstractC1276d0);
        if (arrayList.isEmpty()) {
            setWillNotDraw(getOverScrollMode() == 2);
        }
        J();
        requestLayout();
    }

    public void removeOnItemTouchListener(InterfaceC1292l0 interfaceC1292l0) {
        this.f8008A.remove(interfaceC1292l0);
        if (this.f8010B == interfaceC1292l0) {
            this.f8010B = null;
        }
    }

    public void removeOnScrollListener(AbstractC1294m0 abstractC1294m0) {
        ArrayList arrayList = this.f8068s0;
        if (arrayList != null) {
            arrayList.remove(abstractC1294m0);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        if (!this.f8075w.onRequestChildFocus(this, this.f8064q0, view, view2) && view2 != null) {
            U(view, view2);
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z6) {
        return this.f8075w.requestChildRectangleOnScreen(this, view, rect, z6);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z6) {
        ArrayList arrayList = this.f8008A;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            ((C1308u) ((InterfaceC1292l0) arrayList.get(i2))).onRequestDisallowInterceptTouchEvent(z6);
        }
        super.requestDisallowInterceptTouchEvent(z6);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.f8018F != 0 || this.f8022H) {
            this.f8020G = true;
        } else {
            super.requestLayout();
        }
    }

    public final void s() {
        if (this.f8037U != null) {
            return;
        }
        EdgeEffect createEdgeEffect = this.f8033Q.createEdgeEffect(this, 3);
        this.f8037U = createEdgeEffect;
        if (this.f8063q) {
            createEdgeEffect.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            createEdgeEffect.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    @Override // android.view.View
    public void scrollBy(int i2, int i7) {
        AbstractC1286i0 abstractC1286i0 = this.f8075w;
        if (abstractC1286i0 == null) {
            Log.e("RecyclerView", "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.f8022H) {
            return;
        }
        boolean canScrollHorizontally = abstractC1286i0.canScrollHorizontally();
        boolean canScrollVertically = this.f8075w.canScrollVertically();
        if (canScrollHorizontally || canScrollVertically) {
            if (!canScrollHorizontally) {
                i2 = 0;
            }
            if (!canScrollVertically) {
                i7 = 0;
            }
            W(i2, i7, null, 0);
        }
    }

    @Override // android.view.View
    public void scrollTo(int i2, int i7) {
        Log.w("RecyclerView", "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead");
    }

    public void scrollToPosition(int i2) {
        if (this.f8022H) {
            return;
        }
        stopScroll();
        AbstractC1286i0 abstractC1286i0 = this.f8075w;
        if (abstractC1286i0 == null) {
            Log.e("RecyclerView", "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else {
            abstractC1286i0.scrollToPosition(i2);
            awakenScrollBars();
        }
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent) {
        if (!isComputingLayout()) {
            super.sendAccessibilityEventUnchecked(accessibilityEvent);
        } else {
            int contentChangeTypes = accessibilityEvent != null ? b.getContentChangeTypes(accessibilityEvent) : 0;
            this.f8026J |= contentChangeTypes != 0 ? contentChangeTypes : 0;
        }
    }

    public void setAccessibilityDelegateCompat(D0 d02) {
        this.f8078x0 = d02;
        AbstractC0181p0.setAccessibilityDelegate(this, d02);
    }

    public void setAdapter(V v6) {
        setLayoutFrozen(false);
        Y(v6, false, true);
        Q(false);
        requestLayout();
    }

    public void setChildDrawingOrderCallback(Y y6) {
        if (y6 == null) {
            return;
        }
        setChildrenDrawingOrderEnabled(false);
    }

    @Override // android.view.ViewGroup
    public void setClipToPadding(boolean z6) {
        if (z6 != this.f8063q) {
            this.f8037U = null;
            this.f8035S = null;
            this.f8036T = null;
            this.f8034R = null;
        }
        this.f8063q = z6;
        super.setClipToPadding(z6);
        if (this.f8016E) {
            requestLayout();
        }
    }

    public void setEdgeEffectFactory(Z z6) {
        h.checkNotNull(z6);
        this.f8033Q = z6;
        this.f8037U = null;
        this.f8035S = null;
        this.f8036T = null;
        this.f8034R = null;
    }

    public void setHasFixedSize(boolean z6) {
        this.f8014D = z6;
    }

    public void setItemAnimator(AbstractC1272b0 abstractC1272b0) {
        AbstractC1272b0 abstractC1272b02 = this.f8038V;
        if (abstractC1272b02 != null) {
            abstractC1272b02.endAnimations();
            this.f8038V.f18354a = null;
        }
        this.f8038V = abstractC1272b0;
        if (abstractC1272b0 != null) {
            abstractC1272b0.f18354a = this.f8074v0;
        }
    }

    public void setItemViewCacheSize(int i2) {
        this.f8047f.setViewCacheSize(i2);
    }

    @Deprecated
    public void setLayoutFrozen(boolean z6) {
        suppressLayout(z6);
    }

    public void setLayoutManager(AbstractC1286i0 abstractC1286i0) {
        T t6;
        if (abstractC1286i0 == this.f8075w) {
            return;
        }
        stopScroll();
        AbstractC1286i0 abstractC1286i02 = this.f8075w;
        C1300p0 c1300p0 = this.f8047f;
        if (abstractC1286i02 != null) {
            AbstractC1272b0 abstractC1272b0 = this.f8038V;
            if (abstractC1272b0 != null) {
                abstractC1272b0.endAnimations();
            }
            this.f8075w.removeAndRecycleAllViews(c1300p0);
            this.f8075w.d(c1300p0);
            c1300p0.clear();
            if (this.f8012C) {
                AbstractC1286i0 abstractC1286i03 = this.f8075w;
                abstractC1286i03.f18394g = false;
                abstractC1286i03.onDetachedFromWindow(this, c1300p0);
            }
            this.f8075w.i(null);
            this.f8075w = null;
        } else {
            c1300p0.clear();
        }
        C1275d c1275d = this.f8058n;
        c1275d.f18364b.g();
        ArrayList arrayList = c1275d.f18365c;
        int size = arrayList.size() - 1;
        while (true) {
            t6 = c1275d.f18363a;
            if (size < 0) {
                break;
            }
            t6.onLeftHiddenState((View) arrayList.get(size));
            arrayList.remove(size);
            size--;
        }
        t6.removeAllViews();
        this.f8075w = abstractC1286i0;
        if (abstractC1286i0 != null) {
            if (abstractC1286i0.f18389b != null) {
                StringBuilder sb = new StringBuilder("LayoutManager ");
                sb.append(abstractC1286i0);
                sb.append(" is already attached to a RecyclerView:");
                throw new IllegalArgumentException(c.i(abstractC1286i0.f18389b, sb));
            }
            abstractC1286i0.i(this);
            if (this.f8012C) {
                AbstractC1286i0 abstractC1286i04 = this.f8075w;
                abstractC1286i04.f18394g = true;
                abstractC1286i04.onAttachedToWindow(this);
            }
        }
        c1300p0.k();
        requestLayout();
    }

    @Override // android.view.ViewGroup
    @Deprecated
    public void setLayoutTransition(LayoutTransition layoutTransition) {
        if (layoutTransition != null) {
            throw new IllegalArgumentException("Providing a LayoutTransition into RecyclerView is not supported. Please use setItemAnimator() instead for animating changes to the items in this RecyclerView");
        }
        super.setLayoutTransition(null);
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z6) {
        getScrollingChildHelper().setNestedScrollingEnabled(z6);
    }

    public void setOnFlingListener(AbstractC1290k0 abstractC1290k0) {
        this.f8050h0 = abstractC1290k0;
    }

    @Deprecated
    public void setOnScrollListener(AbstractC1294m0 abstractC1294m0) {
        this.f8066r0 = abstractC1294m0;
    }

    public void setPreserveFocusAfterLayout(boolean z6) {
        this.f8057m0 = z6;
    }

    public void setRecycledViewPool(C1298o0 c1298o0) {
        C1300p0 c1300p0 = this.f8047f;
        RecyclerView recyclerView = c1300p0.f18462h;
        c1300p0.d(recyclerView.f8073v, false);
        if (c1300p0.f18461g != null) {
            r2.f18449b--;
        }
        c1300p0.f18461g = c1298o0;
        if (c1298o0 != null && recyclerView.getAdapter() != null) {
            c1300p0.f18461g.f18449b++;
        }
        c1300p0.c();
    }

    @Deprecated
    public void setRecyclerListener(InterfaceC1302q0 interfaceC1302q0) {
        this.f8077x = interfaceC1302q0;
    }

    public void setScrollState(int i2) {
        w0 w0Var;
        if (i2 == this.f8039W) {
            return;
        }
        if (f7999K0) {
            StringBuilder q6 = i.q(i2, "setting scroll state to ", " from ");
            q6.append(this.f8039W);
            Log.d("RecyclerView", q6.toString(), new Exception());
        }
        this.f8039W = i2;
        if (i2 != 2) {
            this.f8059n0.stop();
            AbstractC1286i0 abstractC1286i0 = this.f8075w;
            if (abstractC1286i0 != null && (w0Var = abstractC1286i0.f18392e) != null) {
                w0Var.stop();
            }
        }
        AbstractC1286i0 abstractC1286i02 = this.f8075w;
        if (abstractC1286i02 != null) {
            abstractC1286i02.onScrollStateChanged(i2);
        }
        onScrollStateChanged(i2);
        AbstractC1294m0 abstractC1294m0 = this.f8066r0;
        if (abstractC1294m0 != null) {
            abstractC1294m0.onScrollStateChanged(this, i2);
        }
        ArrayList arrayList = this.f8068s0;
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((AbstractC1294m0) this.f8068s0.get(size)).onScrollStateChanged(this, i2);
            }
        }
    }

    public void setScrollingTouchSlop(int i2) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        if (i2 != 0) {
            if (i2 == 1) {
                this.f8049g0 = viewConfiguration.getScaledPagingTouchSlop();
                return;
            }
            Log.w("RecyclerView", "setScrollingTouchSlop(): bad argument constant " + i2 + "; using default value");
        }
        this.f8049g0 = viewConfiguration.getScaledTouchSlop();
    }

    public void setViewCacheExtension(z0 z0Var) {
        this.f8047f.getClass();
    }

    public void smoothScrollBy(int i2, int i7) {
        smoothScrollBy(i2, i7, null);
    }

    public void smoothScrollToPosition(int i2) {
        if (this.f8022H) {
            return;
        }
        AbstractC1286i0 abstractC1286i0 = this.f8075w;
        if (abstractC1286i0 == null) {
            Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else {
            abstractC1286i0.smoothScrollToPosition(this, this.f8064q0, i2);
        }
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i2) {
        return getScrollingChildHelper().startNestedScroll(i2);
    }

    @Override // android.view.View
    public void stopNestedScroll() {
        getScrollingChildHelper().stopNestedScroll();
    }

    public void stopScroll() {
        w0 w0Var;
        setScrollState(0);
        this.f8059n0.stop();
        AbstractC1286i0 abstractC1286i0 = this.f8075w;
        if (abstractC1286i0 == null || (w0Var = abstractC1286i0.f18392e) == null) {
            return;
        }
        w0Var.stop();
    }

    @Override // android.view.ViewGroup
    public final void suppressLayout(boolean z6) {
        if (z6 != this.f8022H) {
            h("Do not suppressLayout in layout or scroll");
            if (z6) {
                long uptimeMillis = SystemClock.uptimeMillis();
                onTouchEvent(MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0));
                this.f8022H = true;
                this.f8024I = true;
                stopScroll();
                return;
            }
            this.f8022H = false;
            if (this.f8020G && this.f8075w != null && this.f8073v != null) {
                requestLayout();
            }
            this.f8020G = false;
        }
    }

    public void swapAdapter(V v6, boolean z6) {
        setLayoutFrozen(false);
        Y(v6, true, z6);
        Q(true);
        requestLayout();
    }

    public final void t() {
        if (this.f8034R != null) {
            return;
        }
        EdgeEffect createEdgeEffect = this.f8033Q.createEdgeEffect(this, 0);
        this.f8034R = createEdgeEffect;
        if (this.f8063q) {
            createEdgeEffect.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            createEdgeEffect.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    public final void u() {
        if (this.f8036T != null) {
            return;
        }
        EdgeEffect createEdgeEffect = this.f8033Q.createEdgeEffect(this, 2);
        this.f8036T = createEdgeEffect;
        if (this.f8063q) {
            createEdgeEffect.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            createEdgeEffect.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    public final void v() {
        if (this.f8035S != null) {
            return;
        }
        EdgeEffect createEdgeEffect = this.f8033Q.createEdgeEffect(this, 1);
        this.f8035S = createEdgeEffect;
        if (this.f8063q) {
            createEdgeEffect.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            createEdgeEffect.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public final String w() {
        return StringUtils.SPACE + super.toString() + ", adapter:" + this.f8073v + ", layout:" + this.f8075w + ", context:" + getContext();
    }

    public final void x(x0 x0Var) {
        if (getScrollState() != 2) {
            x0Var.f18539o = 0;
            x0Var.f18540p = 0;
        } else {
            OverScroller overScroller = this.f8059n0.f18209f;
            x0Var.f18539o = overScroller.getFinalX() - overScroller.getCurrX();
            x0Var.f18540p = overScroller.getFinalY() - overScroller.getCurrY();
        }
    }

    public final boolean y(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        ArrayList arrayList = this.f8008A;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            C1308u c1308u = (C1308u) ((InterfaceC1292l0) arrayList.get(i2));
            if (c1308u.onInterceptTouchEvent(this, motionEvent) && action != 3) {
                this.f8010B = c1308u;
                return true;
            }
        }
        return false;
    }

    public final void z(int[] iArr) {
        int d7 = this.f8058n.d();
        if (d7 == 0) {
            iArr[0] = -1;
            iArr[1] = -1;
            return;
        }
        int i2 = androidx.media3.common.util.Log.LOG_LEVEL_OFF;
        int i7 = Integer.MIN_VALUE;
        for (int i8 = 0; i8 < d7; i8++) {
            B0 E6 = E(this.f8058n.c(i8));
            if (!E6.l()) {
                int layoutPosition = E6.getLayoutPosition();
                if (layoutPosition < i2) {
                    i2 = layoutPosition;
                }
                if (layoutPosition > i7) {
                    i7 = layoutPosition;
                }
            }
        }
        iArr[0] = i2;
        iArr[1] = i7;
    }

    public RecyclerView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        TypedArray typedArray;
        char c7;
        Constructor constructor;
        Object[] objArr;
        this.f8045e = new C1303r0(this);
        this.f8047f = new C1300p0(this);
        this.f8061p = new T0();
        this.f8065r = new O(this);
        this.f8067s = new Rect();
        this.f8069t = new Rect();
        this.f8071u = new RectF();
        this.f8079y = new ArrayList();
        this.f8081z = new ArrayList();
        this.f8008A = new ArrayList();
        this.f8018F = 0;
        this.f8029M = false;
        this.f8030N = false;
        this.f8031O = 0;
        this.f8032P = 0;
        this.f8033Q = f8007S0;
        this.f8038V = new C1297o();
        this.f8039W = 0;
        this.f8040a0 = -1;
        this.f8054k0 = Float.MIN_VALUE;
        this.f8055l0 = Float.MIN_VALUE;
        this.f8057m0 = true;
        this.f8059n0 = new A0(this);
        this.f8062p0 = f8004P0 ? new C1310w() : null;
        this.f8064q0 = new x0();
        this.f8070t0 = false;
        this.f8072u0 = false;
        C1274c0 c1274c0 = new C1274c0(this);
        this.f8074v0 = c1274c0;
        this.f8076w0 = false;
        this.f8080y0 = new int[2];
        this.f8009A0 = new int[2];
        this.f8011B0 = new int[2];
        this.f8013C0 = new int[2];
        this.f8015D0 = new ArrayList();
        this.f8017E0 = new P(this);
        this.f8021G0 = 0;
        this.f8023H0 = 0;
        this.f8025I0 = new S(this);
        setScrollContainer(true);
        setFocusableInTouchMode(true);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f8049g0 = viewConfiguration.getScaledTouchSlop();
        this.f8054k0 = AbstractC0188t0.getScaledHorizontalScrollFactor(viewConfiguration, context);
        this.f8055l0 = AbstractC0188t0.getScaledVerticalScrollFactor(viewConfiguration, context);
        this.f8051i0 = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f8053j0 = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f8041b = context.getResources().getDisplayMetrics().density * 160.0f * 386.0878f * 0.84f;
        setWillNotDraw(getOverScrollMode() == 2);
        this.f8038V.f18354a = c1274c0;
        this.f8056m = new C1271b(new U(this));
        this.f8058n = new C1275d(new T(this));
        if (AbstractC0181p0.getImportantForAutofill(this) == 0) {
            AbstractC0181p0.setImportantForAutofill(this, 8);
        }
        if (AbstractC0181p0.getImportantForAccessibility(this) == 0) {
            AbstractC0181p0.setImportantForAccessibility(this, 1);
        }
        this.f8028L = (AccessibilityManager) getContext().getSystemService("accessibility");
        setAccessibilityDelegateCompat(new D0(this));
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, androidx.recyclerview.R.styleable.RecyclerView, i2, 0);
        AbstractC0181p0.saveAttributeDataForStyleable(this, context, androidx.recyclerview.R.styleable.RecyclerView, attributeSet, obtainStyledAttributes, i2, 0);
        String string = obtainStyledAttributes.getString(androidx.recyclerview.R.styleable.RecyclerView_layoutManager);
        if (obtainStyledAttributes.getInt(androidx.recyclerview.R.styleable.RecyclerView_android_descendantFocusability, -1) == -1) {
            setDescendantFocusability(262144);
        }
        this.f8063q = obtainStyledAttributes.getBoolean(androidx.recyclerview.R.styleable.RecyclerView_android_clipToPadding, true);
        if (obtainStyledAttributes.getBoolean(androidx.recyclerview.R.styleable.RecyclerView_fastScrollEnabled, false)) {
            StateListDrawable stateListDrawable = (StateListDrawable) obtainStyledAttributes.getDrawable(androidx.recyclerview.R.styleable.RecyclerView_fastScrollVerticalThumbDrawable);
            Drawable drawable = obtainStyledAttributes.getDrawable(androidx.recyclerview.R.styleable.RecyclerView_fastScrollVerticalTrackDrawable);
            StateListDrawable stateListDrawable2 = (StateListDrawable) obtainStyledAttributes.getDrawable(androidx.recyclerview.R.styleable.RecyclerView_fastScrollHorizontalThumbDrawable);
            Drawable drawable2 = obtainStyledAttributes.getDrawable(androidx.recyclerview.R.styleable.RecyclerView_fastScrollHorizontalTrackDrawable);
            if (stateListDrawable == null || drawable == null || stateListDrawable2 == null || drawable2 == null) {
                throw new IllegalArgumentException(c.i(this, new StringBuilder("Trying to set fast scroller without both required drawables.")));
            }
            Resources resources = getContext().getResources();
            c7 = 2;
            typedArray = obtainStyledAttributes;
            new C1308u(this, stateListDrawable, drawable, stateListDrawable2, drawable2, resources.getDimensionPixelSize(androidx.recyclerview.R.dimen.fastscroll_default_thickness), resources.getDimensionPixelSize(androidx.recyclerview.R.dimen.fastscroll_minimum_range), resources.getDimensionPixelOffset(androidx.recyclerview.R.dimen.fastscroll_margin));
        } else {
            typedArray = obtainStyledAttributes;
            c7 = 2;
        }
        typedArray.recycle();
        if (string != null) {
            String trim = string.trim();
            if (!trim.isEmpty()) {
                if (trim.charAt(0) == '.') {
                    trim = context.getPackageName() + trim;
                } else if (!trim.contains(".")) {
                    trim = RecyclerView.class.getPackage().getName() + ClassUtils.PACKAGE_SEPARATOR_CHAR + trim;
                }
                String str = trim;
                try {
                    Class<? extends U> asSubclass = Class.forName(str, false, isInEditMode() ? getClass().getClassLoader() : context.getClassLoader()).asSubclass(AbstractC1286i0.class);
                    try {
                        constructor = asSubclass.getConstructor(f8005Q0);
                        Object[] objArr2 = new Object[4];
                        objArr2[0] = context;
                        objArr2[1] = attributeSet;
                        objArr2[c7] = Integer.valueOf(i2);
                        objArr2[3] = 0;
                        objArr = objArr2;
                    } catch (NoSuchMethodException e3) {
                        try {
                            constructor = asSubclass.getConstructor(new Class[0]);
                            objArr = null;
                        } catch (NoSuchMethodException e7) {
                            e7.initCause(e3);
                            throw new IllegalStateException(attributeSet.getPositionDescription() + ": Error creating LayoutManager " + str, e7);
                        }
                    }
                    constructor.setAccessible(true);
                    setLayoutManager((AbstractC1286i0) constructor.newInstance(objArr));
                } catch (ClassCastException e8) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Class is not a LayoutManager " + str, e8);
                } catch (ClassNotFoundException e9) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Unable to find LayoutManager " + str, e9);
                } catch (IllegalAccessException e10) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Cannot access non-public constructor " + str, e10);
                } catch (InstantiationException e11) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + str, e11);
                } catch (InvocationTargetException e12) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + str, e12);
                }
            }
        }
        int[] iArr = f8000L0;
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, iArr, i2, 0);
        AbstractC0181p0.saveAttributeDataForStyleable(this, context, iArr, attributeSet, obtainStyledAttributes2, i2, 0);
        boolean z6 = obtainStyledAttributes2.getBoolean(0, true);
        obtainStyledAttributes2.recycle();
        setNestedScrollingEnabled(z6);
        a.setPoolingContainer(this, true);
    }

    public boolean dispatchNestedPreScroll(int i2, int i7, int[] iArr, int[] iArr2, int i8) {
        return getScrollingChildHelper().dispatchNestedPreScroll(i2, i7, iArr, iArr2, i8);
    }

    public final void dispatchNestedScroll(int i2, int i7, int i8, int i9, int[] iArr, int i10, int[] iArr2) {
        getScrollingChildHelper().dispatchNestedScroll(i2, i7, i8, i9, iArr, i10, iArr2);
    }

    public void smoothScrollBy(int i2, int i7, Interpolator interpolator) {
        smoothScrollBy(i2, i7, interpolator, Integer.MIN_VALUE);
    }

    public boolean startNestedScroll(int i2, int i7) {
        return getScrollingChildHelper().startNestedScroll(i2, i7);
    }

    public void stopNestedScroll(int i2) {
        getScrollingChildHelper().stopNestedScroll(i2);
    }

    public void smoothScrollBy(int i2, int i7, Interpolator interpolator, int i8) {
        a0(i2, i7, interpolator, i8, false);
    }

    public void addItemDecoration(AbstractC1276d0 abstractC1276d0) {
        addItemDecoration(abstractC1276d0, -1);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        AbstractC1286i0 abstractC1286i0 = this.f8075w;
        if (abstractC1286i0 != null) {
            return abstractC1286i0.generateLayoutParams(layoutParams);
        }
        throw new IllegalStateException(c.i(this, new StringBuilder("RecyclerView has no LayoutManager")));
    }
}
