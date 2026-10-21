package O2;

import android.animation.ValueAnimator;

/* loaded from: classes.dex */
public final class w extends N2.c {
    @Override // N2.q
    public ValueAnimator onCreateAnimation() {
        Float valueOf = Float.valueOf(0.4f);
        float[] fArr = {0.0f, 0.2f, 0.4f, 1.0f};
        return new L2.g(this).scaleY(fArr, valueOf, Float.valueOf(1.0f), valueOf, valueOf).duration(1200L).easeInOut(fArr).build();
    }
}
