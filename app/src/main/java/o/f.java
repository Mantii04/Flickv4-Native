package o;

import android.graphics.drawable.Drawable;

/* loaded from: classes.dex */
public abstract class f extends Drawable {

    /* renamed from: a, reason: collision with root package name */
    public static final double f19033a = Math.cos(Math.toRadians(45.0d));

    public static float a(float f3, float f7, boolean z6) {
        if (!z6) {
            return f3;
        }
        return (float) (((1.0d - f19033a) * f7) + f3);
    }

    public static float b(float f3, float f7, boolean z6) {
        if (!z6) {
            return f3 * 1.5f;
        }
        return (float) (((1.0d - f19033a) * f7) + (f3 * 1.5f));
    }
}
