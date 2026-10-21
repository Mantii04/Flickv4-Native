package O2;

import android.animation.ValueAnimator;

/* loaded from: classes.dex */
public final class e extends N2.c {
    @Override // N2.q
    public ValueAnimator onCreateAnimation() {
        Float valueOf = Float.valueOf(1.0f);
        float[] fArr = {0.0f, 0.35f, 0.7f, 1.0f};
        return new L2.g(this).scale(fArr, valueOf, Float.valueOf(0.0f), valueOf, valueOf).duration(1300L).easeInOut(fArr).build();
    }
}
