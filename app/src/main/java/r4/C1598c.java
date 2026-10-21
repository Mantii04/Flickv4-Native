package r4;

import android.animation.ValueAnimator;

/* renamed from: r4.c, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1598c implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f19827b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ C1599d f19828e;

    public C1598c(C1599d c1599d, int i2) {
        this.f19828e = c1599d;
        this.f19827b = i2;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        C1599d c1599d = this.f19828e;
        c1599d.f19831h[this.f19827b] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        c1599d.f19840e.reDraw();
    }
}
