package O2;

import android.animation.ValueAnimator;

/* loaded from: classes.dex */
public final class i extends N2.b {
    @Override // N2.q
    public ValueAnimator onCreateAnimation() {
        float[] fArr = {0.0f, 0.39f, 0.4f, 1.0f};
        return new L2.g(this).alpha(fArr, 0, 0, 255, 0).duration(1200L).easeInOut(fArr).build();
    }
}
