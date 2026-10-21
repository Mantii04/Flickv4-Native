package M;

import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.WindowInsets;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Objects;

/* loaded from: classes.dex */
public class Z0 extends e1 {

    /* renamed from: h, reason: collision with root package name */
    public static boolean f2000h = false;

    /* renamed from: i, reason: collision with root package name */
    public static Method f2001i;

    /* renamed from: j, reason: collision with root package name */
    public static Class f2002j;

    /* renamed from: k, reason: collision with root package name */
    public static Field f2003k;

    /* renamed from: l, reason: collision with root package name */
    public static Field f2004l;

    /* renamed from: c, reason: collision with root package name */
    public final WindowInsets f2005c;

    /* renamed from: d, reason: collision with root package name */
    public D.c[] f2006d;

    /* renamed from: e, reason: collision with root package name */
    public D.c f2007e;

    /* renamed from: f, reason: collision with root package name */
    public h1 f2008f;

    /* renamed from: g, reason: collision with root package name */
    public D.c f2009g;

    public Z0(h1 h1Var, WindowInsets windowInsets) {
        super(h1Var);
        this.f2007e = null;
        this.f2005c = windowInsets;
    }

    @SuppressLint({"WrongConstant"})
    private D.c q(int i2, boolean z6) {
        D.c cVar = D.c.f807e;
        for (int i7 = 1; i7 <= 256; i7 <<= 1) {
            if ((i2 & i7) != 0) {
                cVar = D.c.max(cVar, getInsetsForType(i7, z6));
            }
        }
        return cVar;
    }

    private D.c r() {
        h1 h1Var = this.f2008f;
        return h1Var != null ? h1Var.getStableInsets() : D.c.f807e;
    }

    private D.c s(View view) {
        if (Build.VERSION.SDK_INT >= 30) {
            throw new UnsupportedOperationException("getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead.");
        }
        if (!f2000h) {
            t();
        }
        Method method = f2001i;
        if (method != null && f2002j != null && f2003k != null) {
            try {
                Object invoke = method.invoke(view, new Object[0]);
                if (invoke == null) {
                    Log.w("WindowInsetsCompat", "Failed to get visible insets. getViewRootImpl() returned null from the provided view. This means that the view is either not attached or the method has been overridden", new NullPointerException());
                    return null;
                }
                Rect rect = (Rect) f2003k.get(f2004l.get(invoke));
                if (rect != null) {
                    return D.c.of(rect);
                }
                return null;
            } catch (ReflectiveOperationException e3) {
                Log.e("WindowInsetsCompat", "Failed to get visible insets. (Reflection error). " + e3.getMessage(), e3);
            }
        }
        return null;
    }

    @SuppressLint({"PrivateApi"})
    private static void t() {
        try {
            f2001i = View.class.getDeclaredMethod("getViewRootImpl", new Class[0]);
            Class<?> cls = Class.forName("android.view.View$AttachInfo");
            f2002j = cls;
            f2003k = cls.getDeclaredField("mVisibleInsets");
            f2004l = Class.forName("android.view.ViewRootImpl").getDeclaredField("mAttachInfo");
            f2003k.setAccessible(true);
            f2004l.setAccessible(true);
        } catch (ReflectiveOperationException e3) {
            Log.e("WindowInsetsCompat", "Failed to get visible insets. (Reflection error). " + e3.getMessage(), e3);
        }
        f2000h = true;
    }

    @Override // M.e1
    public void d(View view) {
        D.c s6 = s(view);
        if (s6 == null) {
            s6 = D.c.f807e;
        }
        o(s6);
    }

    @Override // M.e1
    public void e(h1 h1Var) {
        h1Var.f2030a.p(this.f2008f);
        h1Var.f2030a.o(this.f2009g);
    }

    @Override // M.e1
    public boolean equals(Object obj) {
        if (super.equals(obj)) {
            return Objects.equals(this.f2009g, ((Z0) obj).f2009g);
        }
        return false;
    }

    @Override // M.e1
    public D.c getInsets(int i2) {
        return q(i2, false);
    }

    public D.c getInsetsForType(int i2, boolean z6) {
        D.c stableInsets;
        int i7;
        if (i2 == 1) {
            return z6 ? D.c.of(0, Math.max(r().f809b, j().f809b), 0, 0) : D.c.of(0, j().f809b, 0, 0);
        }
        if (i2 == 2) {
            if (z6) {
                D.c r6 = r();
                D.c h7 = h();
                return D.c.of(Math.max(r6.f808a, h7.f808a), 0, Math.max(r6.f810c, h7.f810c), Math.max(r6.f811d, h7.f811d));
            }
            D.c j7 = j();
            h1 h1Var = this.f2008f;
            stableInsets = h1Var != null ? h1Var.getStableInsets() : null;
            int i8 = j7.f811d;
            if (stableInsets != null) {
                i8 = Math.min(i8, stableInsets.f811d);
            }
            return D.c.of(j7.f808a, 0, j7.f810c, i8);
        }
        D.c cVar = D.c.f807e;
        if (i2 != 8) {
            if (i2 == 16) {
                return i();
            }
            if (i2 == 32) {
                return g();
            }
            if (i2 == 64) {
                return k();
            }
            if (i2 != 128) {
                return cVar;
            }
            h1 h1Var2 = this.f2008f;
            C0182q displayCutout = h1Var2 != null ? h1Var2.getDisplayCutout() : f();
            return displayCutout != null ? D.c.of(displayCutout.getSafeInsetLeft(), displayCutout.getSafeInsetTop(), displayCutout.getSafeInsetRight(), displayCutout.getSafeInsetBottom()) : cVar;
        }
        D.c[] cVarArr = this.f2006d;
        stableInsets = cVarArr != null ? cVarArr[f1.a(8)] : null;
        if (stableInsets != null) {
            return stableInsets;
        }
        D.c j8 = j();
        D.c r7 = r();
        int i9 = j8.f811d;
        if (i9 > r7.f811d) {
            return D.c.of(0, 0, 0, i9);
        }
        D.c cVar2 = this.f2009g;
        return (cVar2 == null || cVar2.equals(cVar) || (i7 = this.f2009g.f811d) <= r7.f811d) ? cVar : D.c.of(0, 0, 0, i7);
    }

    @Override // M.e1
    public final D.c j() {
        if (this.f2007e == null) {
            WindowInsets windowInsets = this.f2005c;
            this.f2007e = D.c.of(windowInsets.getSystemWindowInsetLeft(), windowInsets.getSystemWindowInsetTop(), windowInsets.getSystemWindowInsetRight(), windowInsets.getSystemWindowInsetBottom());
        }
        return this.f2007e;
    }

    @Override // M.e1
    public h1 l(int i2, int i7, int i8, int i9) {
        U0 u02 = new U0(h1.toWindowInsetsCompat(this.f2005c));
        u02.setSystemWindowInsets(h1.a(j(), i2, i7, i8, i9));
        u02.setStableInsets(h1.a(h(), i2, i7, i8, i9));
        return u02.build();
    }

    @Override // M.e1
    public boolean n() {
        return this.f2005c.isRound();
    }

    @Override // M.e1
    public void o(D.c cVar) {
        this.f2009g = cVar;
    }

    @Override // M.e1
    public void p(h1 h1Var) {
        this.f2008f = h1Var;
    }

    @Override // M.e1
    public void setOverriddenInsets(D.c[] cVarArr) {
        this.f2006d = cVarArr;
    }

    public Z0(h1 h1Var, Z0 z02) {
        this(h1Var, new WindowInsets(z02.f2005c));
    }
}
