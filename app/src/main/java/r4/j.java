package r4;

import android.animation.ValueAnimator;

/* loaded from: classes2.dex */
public final class j implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f19845b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ k f19846e;

    public j(k kVar, int i2) {
        this.f19846e = kVar;
        this.f19845b = i2;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        k kVar = this.f19846e;
        kVar.f19851j[this.f19845b] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        kVar.f19840e.reDraw();
    }
}
