package r4;

import android.animation.ValueAnimator;

/* loaded from: classes2.dex */
public final class n implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ p f19855b;

    public n(p pVar) {
        this.f19855b = pVar;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        p pVar = this.f19855b;
        pVar.f19861j = floatValue;
        pVar.f19840e.reDraw();
    }
}
