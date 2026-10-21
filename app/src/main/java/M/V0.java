package M;

import android.graphics.Rect;
import android.util.Log;
import android.view.WindowInsets;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;

/* loaded from: classes.dex */
public final class V0 extends Y0 {

    /* renamed from: e, reason: collision with root package name */
    public static Field f1980e = null;

    /* renamed from: f, reason: collision with root package name */
    public static boolean f1981f = false;

    /* renamed from: g, reason: collision with root package name */
    public static Constructor f1982g = null;

    /* renamed from: h, reason: collision with root package name */
    public static boolean f1983h = false;

    /* renamed from: c, reason: collision with root package name */
    public WindowInsets f1984c;

    /* renamed from: d, reason: collision with root package name */
    public D.c f1985d;

    public V0() {
        this.f1984c = h();
    }

    private static WindowInsets h() {
        if (!f1981f) {
            try {
                f1980e = WindowInsets.class.getDeclaredField("CONSUMED");
            } catch (ReflectiveOperationException e3) {
                Log.i("WindowInsetsCompat", "Could not retrieve WindowInsets.CONSUMED field", e3);
            }
            f1981f = true;
        }
        Field field = f1980e;
        if (field != null) {
            try {
                WindowInsets windowInsets = (WindowInsets) field.get(null);
                if (windowInsets != null) {
                    return new WindowInsets(windowInsets);
                }
            } catch (ReflectiveOperationException e7) {
                Log.i("WindowInsetsCompat", "Could not get value from WindowInsets.CONSUMED field", e7);
            }
        }
        if (!f1983h) {
            try {
                f1982g = WindowInsets.class.getConstructor(Rect.class);
            } catch (ReflectiveOperationException e8) {
                Log.i("WindowInsetsCompat", "Could not retrieve WindowInsets(Rect) constructor", e8);
            }
            f1983h = true;
        }
        Constructor constructor = f1982g;
        if (constructor != null) {
            try {
                return (WindowInsets) constructor.newInstance(new Rect());
            } catch (ReflectiveOperationException e9) {
                Log.i("WindowInsetsCompat", "Could not invoke WindowInsets(Rect) constructor", e9);
            }
        }
        return null;
    }

    @Override // M.Y0
    public h1 a() {
        applyInsetTypes();
        h1 windowInsetsCompat = h1.toWindowInsetsCompat(this.f1984c);
        windowInsetsCompat.f2030a.setOverriddenInsets(this.f1994b);
        windowInsetsCompat.f2030a.setStableInsets(this.f1985d);
        return windowInsetsCompat;
    }

    @Override // M.Y0
    public void d(D.c cVar) {
        this.f1985d = cVar;
    }

    @Override // M.Y0
    public void f(D.c cVar) {
        WindowInsets windowInsets = this.f1984c;
        if (windowInsets != null) {
            this.f1984c = windowInsets.replaceSystemWindowInsets(cVar.f808a, cVar.f809b, cVar.f810c, cVar.f811d);
        }
    }

    public V0(h1 h1Var) {
        super(h1Var);
        this.f1984c = h1Var.toWindowInsets();
    }
}
