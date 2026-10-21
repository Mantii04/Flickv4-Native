package L1;

import android.app.ApplicationExitInfo;
import android.graphics.Insets;
import android.view.WindowInsetsAnimation;
import android.view.animation.Interpolator;

/* renamed from: L1.g, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract /* synthetic */ class AbstractC0149g {
    public static /* bridge */ /* synthetic */ ApplicationExitInfo g(Object obj) {
        return (ApplicationExitInfo) obj;
    }

    public static /* synthetic */ WindowInsetsAnimation.Bounds k(Insets insets, Insets insets2) {
        return new WindowInsetsAnimation.Bounds(insets, insets2);
    }

    public static /* synthetic */ WindowInsetsAnimation l(int i2, Interpolator interpolator, long j7) {
        return new WindowInsetsAnimation(i2, interpolator, j7);
    }

    public static /* bridge */ /* synthetic */ WindowInsetsAnimation m(Object obj) {
        return (WindowInsetsAnimation) obj;
    }

    public static /* synthetic */ void q() {
    }
}
