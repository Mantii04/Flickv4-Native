package M;

import android.os.Build;
import android.view.View;
import android.view.WindowInsets;
import android.view.WindowInsetsController;
import android.view.inputmethod.InputMethodManager;

/* loaded from: classes.dex */
public final class S extends L0.f {

    /* renamed from: b, reason: collision with root package name */
    public View f1968b;

    /* renamed from: c, reason: collision with root package name */
    public WindowInsetsController f1969c;

    @Override // L0.f
    public final void d() {
        int ime;
        View view = this.f1968b;
        if (view != null && Build.VERSION.SDK_INT < 33) {
            ((InputMethodManager) view.getContext().getSystemService("input_method")).isActive();
        }
        WindowInsetsController windowInsetsController = this.f1969c;
        if (windowInsetsController == null) {
            windowInsetsController = view != null ? view.getWindowInsetsController() : null;
        }
        if (windowInsetsController == null) {
            super.d();
        } else {
            ime = WindowInsets.Type.ime();
            windowInsetsController.show(ime);
        }
    }
}
