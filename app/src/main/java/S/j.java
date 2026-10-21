package S;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.EdgeEffect;

/* loaded from: classes.dex */
public abstract class j {
    public static EdgeEffect create(Context context, AttributeSet attributeSet) {
        return Build.VERSION.SDK_INT >= 31 ? i.create(context, attributeSet) : new EdgeEffect(context);
    }

    public static float getDistance(EdgeEffect edgeEffect) {
        if (Build.VERSION.SDK_INT >= 31) {
            return i.getDistance(edgeEffect);
        }
        return 0.0f;
    }

    public static void onPull(EdgeEffect edgeEffect, float f3, float f7) {
        h.a(edgeEffect, f3, f7);
    }

    public static float onPullDistance(EdgeEffect edgeEffect, float f3, float f7) {
        if (Build.VERSION.SDK_INT >= 31) {
            return i.onPullDistance(edgeEffect, f3, f7);
        }
        onPull(edgeEffect, f3, f7);
        return f3;
    }
}
