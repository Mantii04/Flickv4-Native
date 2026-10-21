package M;

import android.view.DisplayCutout;
import android.view.WindowInsets;
import java.util.Objects;

/* loaded from: classes.dex */
public class b1 extends a1 {
    public b1(h1 h1Var, WindowInsets windowInsets) {
        super(h1Var, windowInsets);
    }

    @Override // M.e1
    public h1 a() {
        WindowInsets consumeDisplayCutout;
        consumeDisplayCutout = this.f2005c.consumeDisplayCutout();
        return h1.toWindowInsetsCompat(consumeDisplayCutout);
    }

    @Override // M.Z0, M.e1
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b1)) {
            return false;
        }
        b1 b1Var = (b1) obj;
        return Objects.equals(this.f2005c, b1Var.f2005c) && Objects.equals(this.f2009g, b1Var.f2009g);
    }

    @Override // M.e1
    public C0182q f() {
        DisplayCutout displayCutout;
        displayCutout = this.f2005c.getDisplayCutout();
        if (displayCutout == null) {
            return null;
        }
        return new C0182q(displayCutout);
    }

    @Override // M.e1
    public int hashCode() {
        return this.f2005c.hashCode();
    }

    public b1(h1 h1Var, b1 b1Var) {
        super(h1Var, b1Var);
    }
}
