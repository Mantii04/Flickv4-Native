package O2;

import android.animation.ValueAnimator;

/* loaded from: classes.dex */
public final class p extends N2.d {
    public p() {
        setScale(0.0f);
    }

    @Override // N2.q
    public ValueAnimator onCreateAnimation() {
        Float valueOf = Float.valueOf(1.0f);
        float[] fArr = {0.0f, 0.7f, 1.0f};
        return new L2.g(this).scale(fArr, Float.valueOf(0.0f), valueOf, valueOf).alpha(fArr, 255, 178, 0).duration(1000L).interpolator(M2.b.pathInterpolator(0.21f, 0.53f, 0.56f, 0.8f, fArr)).build();
    }
}
