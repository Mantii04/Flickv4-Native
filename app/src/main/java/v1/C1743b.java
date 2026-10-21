package v1;

import android.animation.ValueAnimator;

/* renamed from: v1.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1743b implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C1745d f20579b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ C1746e f20580e;

    public C1743b(C1746e c1746e, C1745d c1745d) {
        this.f20580e = c1746e;
        this.f20579b = c1745d;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        C1746e c1746e = this.f20580e;
        C1745d c1745d = this.f20579b;
        C1746e.c(floatValue, c1745d);
        c1746e.a(floatValue, c1745d, false);
        c1746e.invalidateSelf();
    }
}
