package M;

import android.os.Build;
import android.view.View;
import android.view.Window;
import android.view.WindowInsetsController;

/* loaded from: classes.dex */
public final class o1 {

    /* renamed from: a, reason: collision with root package name */
    public final n1 f2063a;

    public o1(WindowInsetsController windowInsetsController) {
        this.f2063a = new m1(windowInsetsController, new T(windowInsetsController));
    }

    @Deprecated
    public static o1 toWindowInsetsControllerCompat(WindowInsetsController windowInsetsController) {
        return new o1(windowInsetsController);
    }

    public void setAppearanceLightNavigationBars(boolean z6) {
        this.f2063a.setAppearanceLightNavigationBars(z6);
    }

    public void setAppearanceLightStatusBars(boolean z6) {
        this.f2063a.setAppearanceLightStatusBars(z6);
    }

    public void show(int i2) {
        this.f2063a.a(i2);
    }

    public o1(Window window, View view) {
        WindowInsetsController insetsController;
        T t6 = new T(view);
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 30) {
            insetsController = window.getInsetsController();
            m1 m1Var = new m1(insetsController, t6);
            m1Var.f2048c = window;
            this.f2063a = m1Var;
            return;
        }
        if (i2 >= 26) {
            this.f2063a = new k1(window, t6);
        } else {
            this.f2063a = new j1(window, t6);
        }
    }
}
