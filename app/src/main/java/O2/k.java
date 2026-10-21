package O2;

import android.animation.ValueAnimator;
import android.view.animation.LinearInterpolator;

/* loaded from: classes.dex */
public final class k extends N2.c {
    @Override // N2.q
    public ValueAnimator onCreateAnimation() {
        float[] fArr = {0.0f, 0.1f, 0.25f, 0.75f, 0.9f, 1.0f};
        return new L2.g(this).alpha(fArr, 0, 0, 255, 255, 0, 0).rotateX(fArr, -180, -180, 0, 0, 0, 0).rotateY(fArr, 0, 0, 0, 0, 180, 180).duration(2400L).interpolator(new LinearInterpolator()).build();
    }
}
