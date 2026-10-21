package r4;

import android.animation.ValueAnimator;

/* renamed from: r4.e, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1600e implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f19832b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ f f19833e;

    public C1600e(f fVar, int i2) {
        this.f19833e = fVar;
        this.f19832b = i2;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        f fVar = this.f19833e;
        fVar.f19834f[this.f19832b].setAlpha(((Integer) valueAnimator.getAnimatedValue()).intValue());
        fVar.f19840e.reDraw();
    }
}
