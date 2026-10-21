package I3;

import android.animation.ValueAnimator;

/* loaded from: classes2.dex */
public final class b implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ t f1321b;

    public b(t tVar) {
        this.f1321b = tVar;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f1321b.f1362i.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }
}
