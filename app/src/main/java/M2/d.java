package M2;

import android.annotation.TargetApi;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;

/* loaded from: classes.dex */
public abstract class d {
    @TargetApi(21)
    public static Interpolator create(float f3, float f7, float f8, float f9) {
        return new PathInterpolator(f3, f7, f8, f9);
    }
}
