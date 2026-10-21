package M;

import android.animation.ValueAnimator;
import android.view.View;
import android.view.animation.PathInterpolator;
import java.util.Collections;

/* loaded from: classes.dex */
public final class K0 implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ S0 f1939b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ h1 f1940e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ h1 f1941f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ int f1942j;

    /* renamed from: m, reason: collision with root package name */
    public final /* synthetic */ View f1943m;

    public K0(S0 s02, h1 h1Var, h1 h1Var2, int i2, View view) {
        this.f1939b = s02;
        this.f1940e = h1Var;
        this.f1941f = h1Var2;
        this.f1942j = i2;
        this.f1943m = view;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        float f3;
        int i2;
        float animatedFraction = valueAnimator.getAnimatedFraction();
        S0 s02 = this.f1939b;
        s02.setFraction(animatedFraction);
        float interpolatedFraction = s02.getInterpolatedFraction();
        PathInterpolator pathInterpolator = O0.f1955e;
        h1 h1Var = this.f1940e;
        U0 u02 = new U0(h1Var);
        int i7 = 1;
        while (i7 <= 256) {
            if ((this.f1942j & i7) == 0) {
                u02.setInsets(i7, h1Var.getInsets(i7));
                f3 = interpolatedFraction;
                i2 = 1;
            } else {
                D.c insets = h1Var.getInsets(i7);
                D.c insets2 = this.f1941f.getInsets(i7);
                float f7 = 1.0f - interpolatedFraction;
                f3 = interpolatedFraction;
                i2 = 1;
                u02.setInsets(i7, h1.a(insets, (int) (((insets.f808a - insets2.f808a) * f7) + 0.5d), (int) (((insets.f809b - insets2.f809b) * f7) + 0.5d), (int) (((insets.f810c - insets2.f810c) * f7) + 0.5d), (int) (((insets.f811d - insets2.f811d) * f7) + 0.5d)));
            }
            i7 <<= i2;
            interpolatedFraction = f3;
        }
        O0.c(this.f1943m, u02.build(), Collections.singletonList(s02));
    }
}
