package r4;

import android.animation.ValueAnimator;

/* loaded from: classes2.dex */
public final class h implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f19841b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ i f19842e;

    public h(i iVar, int i2) {
        this.f19842e = iVar;
        this.f19841b = i2;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        i iVar = this.f19842e;
        iVar.f19843f[this.f19841b].setAlpha(((Integer) valueAnimator.getAnimatedValue()).intValue());
        iVar.f19840e.reDraw();
    }
}
