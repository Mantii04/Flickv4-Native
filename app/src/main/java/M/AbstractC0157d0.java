package M;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import android.view.WindowInsets;
import androidx.core.R;

/* renamed from: M.d0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0157d0 {
    public static void a(WindowInsets windowInsets, View view) {
        View.OnApplyWindowInsetsListener onApplyWindowInsetsListener = (View.OnApplyWindowInsetsListener) view.getTag(R.id.tag_window_insets_animation_callback);
        if (onApplyWindowInsetsListener != null) {
            onApplyWindowInsetsListener.onApplyWindowInsets(view, windowInsets);
        }
    }

    public static h1 b(View view, h1 h1Var, Rect rect) {
        WindowInsets windowInsets = h1Var.toWindowInsets();
        if (windowInsets != null) {
            return h1.toWindowInsetsCompat(view.computeSystemWindowInsets(windowInsets, rect), view);
        }
        rect.setEmpty();
        return h1Var;
    }

    public static boolean c(View view, float f3, float f7, boolean z6) {
        return view.dispatchNestedFling(f3, f7, z6);
    }

    public static boolean d(View view, float f3, float f7) {
        return view.dispatchNestedPreFling(f3, f7);
    }

    public static boolean e(View view, int i2, int i7, int[] iArr, int[] iArr2) {
        return view.dispatchNestedPreScroll(i2, i7, iArr, iArr2);
    }

    public static boolean f(View view, int i2, int i7, int i8, int i9, int[] iArr) {
        return view.dispatchNestedScroll(i2, i7, i8, i9, iArr);
    }

    public static ColorStateList g(View view) {
        return view.getBackgroundTintList();
    }

    public static h1 getRootWindowInsets(View view) {
        return T0.getRootWindowInsets(view);
    }

    public static PorterDuff.Mode h(View view) {
        return view.getBackgroundTintMode();
    }

    public static float i(View view) {
        return view.getElevation();
    }

    public static String j(View view) {
        return view.getTransitionName();
    }

    public static float k(View view) {
        return view.getTranslationZ();
    }

    public static float l(View view) {
        return view.getZ();
    }

    public static boolean m(View view) {
        return view.hasNestedScrollingParent();
    }

    public static boolean n(View view) {
        return view.isImportantForAccessibility();
    }

    public static boolean o(View view) {
        return view.isNestedScrollingEnabled();
    }

    public static void p(View view, ColorStateList colorStateList) {
        view.setBackgroundTintList(colorStateList);
    }

    public static void q(View view, PorterDuff.Mode mode) {
        view.setBackgroundTintMode(mode);
    }

    public static void r(View view, float f3) {
        view.setElevation(f3);
    }

    public static void s(View view, boolean z6) {
        view.setNestedScrollingEnabled(z6);
    }

    public static void t(View view, L l7) {
        if (Build.VERSION.SDK_INT < 30) {
            view.setTag(R.id.tag_on_apply_window_listener, l7);
        }
        if (l7 == null) {
            view.setOnApplyWindowInsetsListener((View.OnApplyWindowInsetsListener) view.getTag(R.id.tag_window_insets_animation_callback));
        } else {
            view.setOnApplyWindowInsetsListener(new ViewOnApplyWindowInsetsListenerC0155c0(view, l7));
        }
    }

    public static void u(View view, String str) {
        view.setTransitionName(str);
    }

    public static void v(View view, float f3) {
        view.setTranslationZ(f3);
    }

    public static void w(View view, float f3) {
        view.setZ(f3);
    }

    public static boolean x(View view, int i2) {
        return view.startNestedScroll(i2);
    }

    public static void y(View view) {
        view.stopNestedScroll();
    }
}
