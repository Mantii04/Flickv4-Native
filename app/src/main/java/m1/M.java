package m1;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.View;

/* loaded from: classes.dex */
public final class M extends I {

    /* renamed from: q, reason: collision with root package name */
    public final /* synthetic */ N f18302q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public M(N n7, Context context) {
        super(context);
        this.f18302q = n7;
    }

    @Override // m1.I
    public float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
        return 100.0f / displayMetrics.densityDpi;
    }

    @Override // m1.I
    public int calculateTimeForScrolling(int i2) {
        return Math.min(100, super.calculateTimeForScrolling(i2));
    }

    @Override // m1.I, m1.w0
    public void onTargetFound(View view, x0 x0Var, u0 u0Var) {
        N n7 = this.f18302q;
        int[] calculateDistanceToFinalSnap = n7.calculateDistanceToFinalSnap(n7.f18273a.getLayoutManager(), view);
        int i2 = calculateDistanceToFinalSnap[0];
        int i7 = calculateDistanceToFinalSnap[1];
        int calculateTimeForDeceleration = calculateTimeForDeceleration(Math.max(Math.abs(i2), Math.abs(i7)));
        if (calculateTimeForDeceleration > 0) {
            u0Var.update(i2, i7, calculateTimeForDeceleration, this.f18280j);
        }
    }
}
