package r4;

import android.animation.ValueAnimator;

/* loaded from: classes2.dex */
public final class o implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ p f19856b;

    public o(p pVar) {
        this.f19856b = pVar;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        p pVar = this.f19856b;
        pVar.f19862k = floatValue;
        pVar.f19840e.reDraw();
    }
}
