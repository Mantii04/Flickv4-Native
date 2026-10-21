package m1;

import android.animation.ValueAnimator;

/* renamed from: m1.t, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1306t implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C1308u f18468b;

    public C1306t(C1308u c1308u) {
        this.f18468b = c1308u;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        int floatValue = (int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * 255.0f);
        C1308u c1308u = this.f18468b;
        c1308u.f18477c.setAlpha(floatValue);
        c1308u.f18478d.setAlpha(floatValue);
        c1308u.f18493s.invalidate();
    }
}
