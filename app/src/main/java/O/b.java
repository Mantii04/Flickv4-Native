package O;

import android.graphics.Path;
import android.view.animation.Interpolator;

/* loaded from: classes.dex */
public abstract class b {
    public static Interpolator create(Path path) {
        return a.c(path);
    }

    public static Interpolator create(float f3, float f7, float f8, float f9) {
        return a.b(f3, f7, f8, f9);
    }
}
