package r4;

import android.animation.ValueAnimator;

/* loaded from: classes2.dex */
public final class u implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f19874b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ v f19875e;

    public u(v vVar, int i2) {
        this.f19875e = vVar;
        this.f19874b = i2;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        v vVar = this.f19875e;
        vVar.f19876f[this.f19874b].setCenter(vVar.f19839d.x, ((Float) valueAnimator.getAnimatedValue()).floatValue());
        vVar.f19840e.reDraw();
    }
}
