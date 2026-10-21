package r4;

import android.animation.ValueAnimator;

/* loaded from: classes2.dex */
public final class l implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ m f19852b;

    public l(m mVar) {
        this.f19852b = mVar;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        m mVar = this.f19852b;
        mVar.f19854g = floatValue;
        mVar.f19840e.reDraw();
    }
}
