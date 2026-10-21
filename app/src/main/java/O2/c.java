package O2;

import android.animation.ValueAnimator;

/* loaded from: classes.dex */
public final class c extends N2.b {
    @Override // N2.q
    public ValueAnimator onCreateAnimation() {
        Float valueOf = Float.valueOf(0.0f);
        float[] fArr = {0.0f, 0.5f, 1.0f};
        return new L2.g(this).scale(fArr, valueOf, Float.valueOf(1.0f), valueOf).duration(1200L).easeInOut(fArr).build();
    }
}
