package I3;

import android.animation.ValueAnimator;
import h0.C0959b;

/* loaded from: classes2.dex */
public final class g implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ t f1326b;

    public g(t tVar) {
        this.f1326b = tVar;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        C0959b c0959b = t.f1349v;
        this.f1326b.f1362i.setTranslationY(intValue);
    }
}
