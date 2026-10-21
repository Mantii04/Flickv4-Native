package x3;

import M.AbstractC0181p0;
import M.h1;
import android.graphics.Rect;
import android.view.View;

/* loaded from: classes2.dex */
public final class E implements M.L {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ F f20871a;

    public E(F f3) {
        this.f20871a = f3;
    }

    @Override // M.L
    public h1 onApplyWindowInsets(View view, h1 h1Var) {
        F f3 = this.f20871a;
        if (f3.f20873e == null) {
            f3.f20873e = new Rect();
        }
        f3.f20873e.set(h1Var.getSystemWindowInsetLeft(), h1Var.getSystemWindowInsetTop(), h1Var.getSystemWindowInsetRight(), h1Var.getSystemWindowInsetBottom());
        f3.onInsetsChanged(h1Var);
        f3.setWillNotDraw(!h1Var.hasSystemWindowInsets() || f3.f20872b == null);
        AbstractC0181p0.postInvalidateOnAnimation(f3);
        return h1Var.consumeSystemWindowInsets();
    }
}
