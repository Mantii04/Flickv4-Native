package M;

import android.view.View;
import android.view.Window;

/* loaded from: classes.dex */
public abstract class i1 extends n1 {

    /* renamed from: a, reason: collision with root package name */
    public final Window f2036a;

    /* renamed from: b, reason: collision with root package name */
    public final T f2037b;

    public i1(Window window, T t6) {
        this.f2036a = window;
        this.f2037b = t6;
    }

    @Override // M.n1
    public final void a(int i2) {
        for (int i7 = 1; i7 <= 256; i7 <<= 1) {
            if ((i2 & i7) != 0) {
                if (i7 == 1) {
                    unsetSystemUiFlag(4);
                    unsetWindowFlag(1024);
                } else if (i7 == 2) {
                    unsetSystemUiFlag(2);
                } else if (i7 == 8) {
                    this.f2037b.show();
                }
            }
        }
    }

    public void setSystemUiFlag(int i2) {
        View decorView = this.f2036a.getDecorView();
        decorView.setSystemUiVisibility(i2 | decorView.getSystemUiVisibility());
    }

    public void setWindowFlag(int i2) {
        this.f2036a.addFlags(i2);
    }

    public void unsetSystemUiFlag(int i2) {
        View decorView = this.f2036a.getDecorView();
        decorView.setSystemUiVisibility((~i2) & decorView.getSystemUiVisibility());
    }

    public void unsetWindowFlag(int i2) {
        this.f2036a.clearFlags(i2);
    }
}
