package O2;

import android.animation.ValueAnimator;

/* loaded from: classes.dex */
public final class o extends N2.b {
    public o() {
        setScale(0.0f);
    }

    @Override // N2.q
    public ValueAnimator onCreateAnimation() {
        float[] fArr = {0.0f, 1.0f};
        return new L2.g(this).scale(fArr, Float.valueOf(0.0f), Float.valueOf(1.0f)).alpha(fArr, 255, 0).duration(1000L).easeInOut(fArr).build();
    }
}
