package M;

import android.graphics.Insets;
import android.view.WindowInsets;

/* loaded from: classes.dex */
public class c1 extends b1 {

    /* renamed from: n, reason: collision with root package name */
    public D.c f2019n;

    /* renamed from: o, reason: collision with root package name */
    public D.c f2020o;

    /* renamed from: p, reason: collision with root package name */
    public D.c f2021p;

    public c1(h1 h1Var, WindowInsets windowInsets) {
        super(h1Var, windowInsets);
        this.f2019n = null;
        this.f2020o = null;
        this.f2021p = null;
    }

    @Override // M.e1
    public D.c g() {
        Insets mandatorySystemGestureInsets;
        if (this.f2020o == null) {
            mandatorySystemGestureInsets = this.f2005c.getMandatorySystemGestureInsets();
            this.f2020o = D.c.toCompatInsets(mandatorySystemGestureInsets);
        }
        return this.f2020o;
    }

    @Override // M.e1
    public D.c i() {
        Insets systemGestureInsets;
        if (this.f2019n == null) {
            systemGestureInsets = this.f2005c.getSystemGestureInsets();
            this.f2019n = D.c.toCompatInsets(systemGestureInsets);
        }
        return this.f2019n;
    }

    @Override // M.e1
    public D.c k() {
        Insets tappableElementInsets;
        if (this.f2021p == null) {
            tappableElementInsets = this.f2005c.getTappableElementInsets();
            this.f2021p = D.c.toCompatInsets(tappableElementInsets);
        }
        return this.f2021p;
    }

    @Override // M.Z0, M.e1
    public h1 l(int i2, int i7, int i8, int i9) {
        WindowInsets inset;
        inset = this.f2005c.inset(i2, i7, i8, i9);
        return h1.toWindowInsetsCompat(inset);
    }

    public c1(h1 h1Var, c1 c1Var) {
        super(h1Var, c1Var);
        this.f2019n = null;
        this.f2020o = null;
        this.f2021p = null;
    }

    @Override // M.a1, M.e1
    public void setStableInsets(D.c cVar) {
    }
}
