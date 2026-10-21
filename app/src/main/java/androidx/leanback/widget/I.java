package androidx.leanback.widget;

import android.util.DisplayMetrics;
import android.view.View;

/* loaded from: classes.dex */
public abstract class I extends m1.I {

    /* renamed from: q, reason: collision with root package name */
    public boolean f6564q;

    /* renamed from: r, reason: collision with root package name */
    public final /* synthetic */ GridLayoutManager f6565r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public I(GridLayoutManager gridLayoutManager) {
        super(gridLayoutManager.f6533r.getContext());
        this.f6565r = gridLayoutManager;
    }

    @Override // m1.I
    public float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
        return super.calculateSpeedPerPixel(displayMetrics) * this.f6565r.f6531p;
    }

    @Override // m1.I
    public int calculateTimeForScrolling(int i2) {
        int calculateTimeForScrolling = super.calculateTimeForScrolling(i2);
        if (this.f6565r.f6522Y.mainAxis().getSize() > 0) {
            float size = (30.0f / r1.f6522Y.mainAxis().getSize()) * i2;
            if (calculateTimeForScrolling < size) {
                return (int) size;
            }
        }
        return calculateTimeForScrolling;
    }

    @Override // m1.I, m1.w0
    public void onStop() {
        super.onStop();
        if (!this.f6564q) {
            onStopInternal();
        }
        GridLayoutManager gridLayoutManager = this.f6565r;
        if (gridLayoutManager.f6504G == this) {
            gridLayoutManager.f6504G = null;
        }
        if (gridLayoutManager.f6505H == this) {
            gridLayoutManager.f6505H = null;
        }
    }

    public void onStopInternal() {
        View findViewByPosition = findViewByPosition(getTargetPosition());
        GridLayoutManager gridLayoutManager = this.f6565r;
        if (findViewByPosition == null) {
            if (getTargetPosition() >= 0) {
                gridLayoutManager.N(getTargetPosition(), false);
                return;
            }
            return;
        }
        if (gridLayoutManager.f6503F != getTargetPosition()) {
            gridLayoutManager.f6503F = getTargetPosition();
        }
        if (gridLayoutManager.hasFocus()) {
            gridLayoutManager.f6500C |= 32;
            findViewByPosition.requestFocus();
            gridLayoutManager.f6500C &= -33;
        }
        gridLayoutManager.n();
        gridLayoutManager.o();
    }

    @Override // m1.I, m1.w0
    public void onTargetFound(View view, m1.x0 x0Var, m1.u0 u0Var) {
        int i2;
        int i7;
        int[] iArr = GridLayoutManager.f6497i0;
        GridLayoutManager gridLayoutManager = this.f6565r;
        if (gridLayoutManager.v(view, null, iArr)) {
            if (gridLayoutManager.f6534s == 0) {
                i2 = iArr[0];
                i7 = iArr[1];
            } else {
                i2 = iArr[1];
                i7 = iArr[0];
            }
            u0Var.update(i2, i7, calculateTimeForDeceleration((int) Math.sqrt((i7 * i7) + (i2 * i2))), this.f18280j);
        }
    }
}
