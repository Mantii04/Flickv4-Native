package M;

import android.view.View;
import android.view.WindowInsets;

/* renamed from: M.b0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0153b0 {
    public static WindowInsets a(View view, WindowInsets windowInsets) {
        return view.dispatchApplyWindowInsets(windowInsets);
    }

    public static WindowInsets b(View view, WindowInsets windowInsets) {
        return view.onApplyWindowInsets(windowInsets);
    }

    public static void c(View view) {
        view.requestApplyInsets();
    }
}
