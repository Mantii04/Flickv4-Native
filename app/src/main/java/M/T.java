package M;

import android.os.Build;
import android.view.View;
import android.view.WindowInsetsController;

/* loaded from: classes.dex */
public final class T {

    /* renamed from: a, reason: collision with root package name */
    public final L0.f f1971a;

    public T(View view) {
        if (Build.VERSION.SDK_INT < 30) {
            this.f1971a = new L0.f(view);
            return;
        }
        S s6 = new S(view);
        s6.f1968b = view;
        this.f1971a = s6;
    }

    public void show() {
        this.f1971a.d();
    }

    public T(WindowInsetsController windowInsetsController) {
        S s6 = new S(null);
        s6.f1969c = windowInsetsController;
        this.f1971a = s6;
    }
}
