package M;

import L1.AbstractC0149g;
import android.graphics.Insets;
import android.view.View;
import android.view.WindowInsetsAnimation;

/* loaded from: classes.dex */
public final class Q0 extends R0 {

    /* renamed from: e, reason: collision with root package name */
    public final WindowInsetsAnimation f1963e;

    public Q0(WindowInsetsAnimation windowInsetsAnimation) {
        super(0, null, 0L);
        this.f1963e = windowInsetsAnimation;
    }

    public static WindowInsetsAnimation.Bounds createPlatformBounds(I0 i02) {
        AbstractC0149g.q();
        return AbstractC0149g.k(i02.getLowerBound().toPlatformInsets(), i02.getUpperBound().toPlatformInsets());
    }

    public static D.c getHigherBounds(WindowInsetsAnimation.Bounds bounds) {
        Insets upperBound;
        upperBound = bounds.getUpperBound();
        return D.c.toCompatInsets(upperBound);
    }

    public static D.c getLowerBounds(WindowInsetsAnimation.Bounds bounds) {
        Insets lowerBound;
        lowerBound = bounds.getLowerBound();
        return D.c.toCompatInsets(lowerBound);
    }

    public static void setCallback(View view, J0 j02) {
        view.setWindowInsetsAnimationCallback(j02 != null ? new P0(j02) : null);
    }

    @Override // M.R0
    public long getDurationMillis() {
        long durationMillis;
        durationMillis = this.f1963e.getDurationMillis();
        return durationMillis;
    }

    @Override // M.R0
    public float getInterpolatedFraction() {
        float interpolatedFraction;
        interpolatedFraction = this.f1963e.getInterpolatedFraction();
        return interpolatedFraction;
    }

    @Override // M.R0
    public int getTypeMask() {
        int typeMask;
        typeMask = this.f1963e.getTypeMask();
        return typeMask;
    }

    @Override // M.R0
    public void setFraction(float f3) {
        this.f1963e.setFraction(f3);
    }
}
