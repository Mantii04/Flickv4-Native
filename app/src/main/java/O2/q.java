package O2;

import android.animation.ValueAnimator;

/* loaded from: classes.dex */
public final class q extends N2.b {
    @Override // N2.q
    public ValueAnimator onCreateAnimation() {
        float[] fArr = {0.0f, 0.5f, 1.0f};
        return new L2.g(this).rotateX(fArr, 0, -180, -180).rotateY(fArr, 0, 0, -180).duration(1200L).easeInOut(fArr).build();
    }
}
