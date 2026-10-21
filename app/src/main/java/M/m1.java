package M;

import android.view.View;
import android.view.Window;
import android.view.WindowInsetsController;

/* loaded from: classes.dex */
public final class m1 extends n1 {

    /* renamed from: a, reason: collision with root package name */
    public final WindowInsetsController f2046a;

    /* renamed from: b, reason: collision with root package name */
    public final T f2047b;

    /* renamed from: c, reason: collision with root package name */
    public Window f2048c;

    public m1(WindowInsetsController windowInsetsController, T t6) {
        new p.q();
        this.f2046a = windowInsetsController;
        this.f2047b = t6;
    }

    @Override // M.n1
    public final void a(int i2) {
        if ((i2 & 8) != 0) {
            this.f2047b.show();
        }
        this.f2046a.show(i2 & (-9));
    }

    @Override // M.n1
    public void setAppearanceLightNavigationBars(boolean z6) {
        Window window = this.f2048c;
        if (z6) {
            if (window != null) {
                setSystemUiFlag(16);
            }
            this.f2046a.setSystemBarsAppearance(16, 16);
        } else {
            if (window != null) {
                unsetSystemUiFlag(16);
            }
            this.f2046a.setSystemBarsAppearance(0, 16);
        }
    }

    @Override // M.n1
    public void setAppearanceLightStatusBars(boolean z6) {
        Window window = this.f2048c;
        if (z6) {
            if (window != null) {
                setSystemUiFlag(8192);
            }
            this.f2046a.setSystemBarsAppearance(8, 8);
        } else {
            if (window != null) {
                unsetSystemUiFlag(8192);
            }
            this.f2046a.setSystemBarsAppearance(0, 8);
        }
    }

    public void setSystemUiFlag(int i2) {
        View decorView = this.f2048c.getDecorView();
        decorView.setSystemUiVisibility(i2 | decorView.getSystemUiVisibility());
    }

    public void unsetSystemUiFlag(int i2) {
        View decorView = this.f2048c.getDecorView();
        decorView.setSystemUiVisibility((~i2) & decorView.getSystemUiVisibility());
    }
}
