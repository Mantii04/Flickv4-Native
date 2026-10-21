package r4;

import android.animation.ValueAnimator;

/* renamed from: r4.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1596a implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f19823b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ C1597b f19824e;

    public C1596a(C1597b c1597b, int i2) {
        this.f19824e = c1597b;
        this.f19823b = i2;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        C1597b c1597b = this.f19824e;
        c1597b.f19825f[this.f19823b].setAlpha(((Integer) valueAnimator.getAnimatedValue()).intValue());
        c1597b.f19840e.reDraw();
    }
}
