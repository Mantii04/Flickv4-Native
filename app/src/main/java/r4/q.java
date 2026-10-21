package r4;

import android.animation.ValueAnimator;

/* loaded from: classes2.dex */
public final class q implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f19864b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ r f19865e;

    public q(r rVar, int i2) {
        this.f19865e = rVar;
        this.f19864b = i2;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        r rVar = this.f19865e;
        rVar.f19868h[this.f19864b] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        rVar.f19840e.reDraw();
    }
}
