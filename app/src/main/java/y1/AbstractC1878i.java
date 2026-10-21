package y1;

import android.content.Context;
import android.content.res.Resources;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;

/* renamed from: y1.i, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1878i {
    public static Interpolator loadInterpolator(Context context, int i2) throws Resources.NotFoundException {
        return AnimationUtils.loadInterpolator(context, i2);
    }
}
