package M;

import android.os.Build;
import android.view.View;
import android.view.Window;

/* loaded from: classes.dex */
public abstract class H0 {
    public static o1 getInsetsController(Window window, View view) {
        return new o1(window, view);
    }

    public static void setDecorFitsSystemWindows(Window window, boolean z6) {
        if (Build.VERSION.SDK_INT >= 30) {
            G0.a(window, z6);
            return;
        }
        View decorView = window.getDecorView();
        int systemUiVisibility = decorView.getSystemUiVisibility();
        decorView.setSystemUiVisibility(z6 ? systemUiVisibility & (-1793) : systemUiVisibility | 1792);
    }
}
