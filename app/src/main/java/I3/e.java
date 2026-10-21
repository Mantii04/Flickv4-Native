package I3;

import android.animation.ValueAnimator;
import h0.C0959b;

/* loaded from: classes2.dex */
public final class e implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ t f1324b;

    public e(t tVar, int i2) {
        this.f1324b = tVar;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        C0959b c0959b = t.f1349v;
        this.f1324b.f1362i.setTranslationY(intValue);
    }
}
