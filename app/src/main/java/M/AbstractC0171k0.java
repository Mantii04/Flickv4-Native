package M;

import android.view.View;
import android.view.WindowInsetsController;

/* renamed from: M.k0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0171k0 {
    public static int a(View view) {
        return view.getImportantForContentCapture();
    }

    public static CharSequence b(View view) {
        return view.getStateDescription();
    }

    public static boolean c(View view) {
        return view.isImportantForContentCapture();
    }

    public static void d(View view, int i2) {
        view.setImportantForContentCapture(i2);
    }

    public static void e(View view, CharSequence charSequence) {
        view.setStateDescription(charSequence);
    }

    public static o1 getWindowInsetsController(View view) {
        WindowInsetsController windowInsetsController = view.getWindowInsetsController();
        if (windowInsetsController != null) {
            return o1.toWindowInsetsControllerCompat(windowInsetsController);
        }
        return null;
    }
}
