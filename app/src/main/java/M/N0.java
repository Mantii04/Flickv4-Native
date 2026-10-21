package M;

import android.animation.ValueAnimator;
import android.view.View;
import android.view.WindowInsets;
import java.util.Objects;

/* loaded from: classes.dex */
public final class N0 implements View.OnApplyWindowInsetsListener {

    /* renamed from: a, reason: collision with root package name */
    public final J0 f1950a;

    /* renamed from: b, reason: collision with root package name */
    public h1 f1951b;

    public N0(View view, J0 j02) {
        this.f1950a = j02;
        h1 rootWindowInsets = AbstractC0181p0.getRootWindowInsets(view);
        this.f1951b = rootWindowInsets != null ? new U0(rootWindowInsets).build() : null;
    }

    @Override // android.view.View.OnApplyWindowInsetsListener
    public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
        if (!view.isLaidOut()) {
            this.f1951b = h1.toWindowInsetsCompat(windowInsets, view);
            return O0.e(view, windowInsets);
        }
        h1 windowInsetsCompat = h1.toWindowInsetsCompat(windowInsets, view);
        if (this.f1951b == null) {
            this.f1951b = AbstractC0181p0.getRootWindowInsets(view);
        }
        if (this.f1951b == null) {
            this.f1951b = windowInsetsCompat;
            return O0.e(view, windowInsets);
        }
        J0 f3 = O0.f(view);
        if (f3 != null && Objects.equals(f3.f1935a, windowInsets)) {
            return O0.e(view, windowInsets);
        }
        h1 h1Var = this.f1951b;
        int i2 = 0;
        for (int i7 = 1; i7 <= 256; i7 <<= 1) {
            if (!windowInsetsCompat.getInsets(i7).equals(h1Var.getInsets(i7))) {
                i2 |= i7;
            }
        }
        if (i2 == 0) {
            return O0.e(view, windowInsets);
        }
        h1 h1Var2 = this.f1951b;
        S0 s02 = new S0(i2, (i2 & 8) != 0 ? windowInsetsCompat.getInsets(f1.ime()).f811d > h1Var2.getInsets(f1.ime()).f811d ? O0.f1955e : O0.f1956f : O0.f1957g, 160L);
        s02.setFraction(0.0f);
        ValueAnimator duration = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(s02.getDurationMillis());
        D.c insets = windowInsetsCompat.getInsets(i2);
        D.c insets2 = h1Var2.getInsets(i2);
        int min = Math.min(insets.f808a, insets2.f808a);
        int i8 = insets.f809b;
        int i9 = insets2.f809b;
        int min2 = Math.min(i8, i9);
        int i10 = insets.f810c;
        int i11 = insets2.f810c;
        int min3 = Math.min(i10, i11);
        int i12 = insets.f811d;
        int i13 = i2;
        int i14 = insets2.f811d;
        I0 i02 = new I0(D.c.of(min, min2, min3, Math.min(i12, i14)), D.c.of(Math.max(insets.f808a, insets2.f808a), Math.max(i8, i9), Math.max(i10, i11), Math.max(i12, i14)));
        O0.b(view, s02, windowInsets, false);
        duration.addUpdateListener(new K0(s02, windowInsetsCompat, h1Var2, i13, view));
        duration.addListener(new L0(s02, view));
        O.add(view, new M0(view, s02, i02, duration));
        this.f1951b = windowInsetsCompat;
        return O0.e(view, windowInsets);
    }
}
