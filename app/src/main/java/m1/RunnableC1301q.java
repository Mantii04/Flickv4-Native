package m1;

import android.animation.ValueAnimator;

/* renamed from: m1.q, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC1301q implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C1308u f18463b;

    public RunnableC1301q(C1308u c1308u) {
        this.f18463b = c1308u;
    }

    @Override // java.lang.Runnable
    public void run() {
        C1308u c1308u = this.f18463b;
        int i2 = c1308u.f18472A;
        ValueAnimator valueAnimator = c1308u.f18500z;
        if (i2 == 1) {
            valueAnimator.cancel();
        } else if (i2 != 2) {
            return;
        }
        c1308u.f18472A = 3;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 0.0f);
        valueAnimator.setDuration(500);
        valueAnimator.start();
    }
}
