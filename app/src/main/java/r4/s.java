package r4;

import android.animation.ValueAnimator;

/* loaded from: classes2.dex */
public final class s implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f19869b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ t f19870e;

    public s(t tVar, int i2) {
        this.f19870e = tVar;
        this.f19869b = i2;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        t tVar = this.f19870e;
        tVar.f19873h[this.f19869b] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        tVar.f19840e.reDraw();
    }
}
