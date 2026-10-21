package O2;

import android.animation.ValueAnimator;
import android.os.Build;

/* loaded from: classes.dex */
public final class u extends N2.c {

    /* renamed from: N, reason: collision with root package name */
    public final int f2401N;

    public u(v vVar, int i2) {
        this.f2401N = i2;
    }

    @Override // N2.q
    public ValueAnimator onCreateAnimation() {
        float[] fArr = {0.0f, 0.25f, 0.5f, 0.51f, 0.75f, 1.0f};
        L2.g rotate = new L2.g(this).rotate(fArr, 0, -90, -179, -180, -270, -360);
        Float valueOf = Float.valueOf(0.0f);
        Float valueOf2 = Float.valueOf(0.75f);
        L2.g translateYPercentage = rotate.translateXPercentage(fArr, valueOf, valueOf2, valueOf2, valueOf2, valueOf, valueOf).translateYPercentage(fArr, valueOf, valueOf, valueOf2, valueOf2, valueOf2, valueOf);
        Float valueOf3 = Float.valueOf(1.0f);
        Float valueOf4 = Float.valueOf(0.5f);
        L2.g easeInOut = translateYPercentage.scale(fArr, valueOf3, valueOf4, valueOf3, valueOf3, valueOf4, valueOf3).duration(1800L).easeInOut(fArr);
        if (Build.VERSION.SDK_INT >= 24) {
            easeInOut.startFrame(this.f2401N);
        }
        return easeInOut.build();
    }
}
