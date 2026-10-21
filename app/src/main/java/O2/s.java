package O2;

import android.animation.ValueAnimator;

/* loaded from: classes.dex */
public final class s extends N2.b {
    public s() {
        setScale(0.0f);
    }

    @Override // N2.q
    public ValueAnimator onCreateAnimation() {
        Float valueOf = Float.valueOf(0.0f);
        float[] fArr = {0.0f, 0.4f, 0.8f, 1.0f};
        return new L2.g(this).scale(fArr, valueOf, Float.valueOf(1.0f), valueOf, valueOf).duration(1400L).easeInOut(fArr).build();
    }
}
