package h3;

import android.animation.ValueAnimator;
import com.google.android.material.appbar.CollapsingToolbarLayout;

/* renamed from: h3.i, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0985i implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ CollapsingToolbarLayout f16534b;

    public C0985i(CollapsingToolbarLayout collapsingToolbarLayout) {
        this.f16534b = collapsingToolbarLayout;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f16534b.setScrimAlpha(((Integer) valueAnimator.getAnimatedValue()).intValue());
    }
}
