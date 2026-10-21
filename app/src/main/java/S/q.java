package S;

import M.InterfaceC0178o;
import androidx.core.widget.NestedScrollView;

/* loaded from: classes.dex */
public final class q implements InterfaceC0178o {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ NestedScrollView f3242a;

    public q(NestedScrollView nestedScrollView) {
        this.f3242a = nestedScrollView;
    }

    public float getScaledScrollFactor() {
        return -this.f3242a.getVerticalScrollFactorCompat();
    }

    public boolean startDifferentialMotionFling(float f3) {
        if (f3 == 0.0f) {
            return false;
        }
        stopDifferentialMotionFling();
        this.f3242a.fling((int) f3);
        return true;
    }

    public void stopDifferentialMotionFling() {
        this.f3242a.f5582j.abortAnimation();
    }
}
