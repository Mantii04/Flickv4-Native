package I3;

import android.animation.ValueAnimator;

/* loaded from: classes2.dex */
public final class c implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ t f1322b;

    public c(t tVar) {
        this.f1322b = tVar;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        t tVar = this.f1322b;
        tVar.f1362i.setScaleX(floatValue);
        tVar.f1362i.setScaleY(floatValue);
    }
}
