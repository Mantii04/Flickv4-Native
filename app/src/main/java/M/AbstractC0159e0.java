package M;

import android.view.View;
import android.view.WindowInsets;

/* renamed from: M.e0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0159e0 {
    public static int a(View view) {
        return view.getScrollIndicators();
    }

    public static void b(View view, int i2) {
        view.setScrollIndicators(i2);
    }

    public static void c(View view, int i2, int i7) {
        view.setScrollIndicators(i2, i7);
    }

    public static h1 getRootWindowInsets(View view) {
        WindowInsets rootWindowInsets = view.getRootWindowInsets();
        if (rootWindowInsets == null) {
            return null;
        }
        h1 windowInsetsCompat = h1.toWindowInsetsCompat(rootWindowInsets);
        windowInsetsCompat.f2030a.p(windowInsetsCompat);
        windowInsetsCompat.f2030a.d(view.getRootView());
        return windowInsetsCompat;
    }
}
