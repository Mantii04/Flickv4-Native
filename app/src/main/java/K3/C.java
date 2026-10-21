package K3;

import android.animation.ValueAnimator;
import com.google.android.material.textfield.TextInputLayout;

/* loaded from: classes2.dex */
public final class C implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ TextInputLayout f1656b;

    public C(TextInputLayout textInputLayout) {
        this.f1656b = textInputLayout;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f1656b.f12870E0.setExpansionFraction(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }
}
