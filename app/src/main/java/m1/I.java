package m1;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;

/* loaded from: classes.dex */
public class I extends w0 {

    /* renamed from: k, reason: collision with root package name */
    public PointF f18281k;

    /* renamed from: l, reason: collision with root package name */
    public final DisplayMetrics f18282l;

    /* renamed from: n, reason: collision with root package name */
    public float f18284n;

    /* renamed from: i, reason: collision with root package name */
    public final LinearInterpolator f18279i = new LinearInterpolator();

    /* renamed from: j, reason: collision with root package name */
    public final DecelerateInterpolator f18280j = new DecelerateInterpolator();

    /* renamed from: m, reason: collision with root package name */
    public boolean f18283m = false;

    /* renamed from: o, reason: collision with root package name */
    public int f18285o = 0;

    /* renamed from: p, reason: collision with root package name */
    public int f18286p = 0;

    @SuppressLint({"UnknownNullness"})
    public I(Context context) {
        this.f18282l = context.getResources().getDisplayMetrics();
    }

    public int calculateDtToFit(int i2, int i7, int i8, int i9, int i10) {
        if (i10 == -1) {
            return i8 - i2;
        }
        if (i10 != 0) {
            if (i10 == 1) {
                return i9 - i7;
            }
            throw new IllegalArgumentException("snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_");
        }
        int i11 = i8 - i2;
        if (i11 > 0) {
            return i11;
        }
        int i12 = i9 - i7;
        if (i12 < 0) {
            return i12;
        }
        return 0;
    }

    @SuppressLint({"UnknownNullness"})
    public int calculateDxToMakeVisible(View view, int i2) {
        AbstractC1286i0 layoutManager = getLayoutManager();
        if (layoutManager == null || !layoutManager.canScrollHorizontally()) {
            return 0;
        }
        C1288j0 c1288j0 = (C1288j0) view.getLayoutParams();
        return calculateDtToFit(layoutManager.getDecoratedLeft(view) - ((ViewGroup.MarginLayoutParams) c1288j0).leftMargin, layoutManager.getDecoratedRight(view) + ((ViewGroup.MarginLayoutParams) c1288j0).rightMargin, layoutManager.getPaddingLeft(), layoutManager.getWidth() - layoutManager.getPaddingRight(), i2);
    }

    @SuppressLint({"UnknownNullness"})
    public int calculateDyToMakeVisible(View view, int i2) {
        AbstractC1286i0 layoutManager = getLayoutManager();
        if (layoutManager == null || !layoutManager.canScrollVertically()) {
            return 0;
        }
        C1288j0 c1288j0 = (C1288j0) view.getLayoutParams();
        return calculateDtToFit(layoutManager.getDecoratedTop(view) - ((ViewGroup.MarginLayoutParams) c1288j0).topMargin, layoutManager.getDecoratedBottom(view) + ((ViewGroup.MarginLayoutParams) c1288j0).bottomMargin, layoutManager.getPaddingTop(), layoutManager.getHeight() - layoutManager.getPaddingBottom(), i2);
    }

    @SuppressLint({"UnknownNullness"})
    public float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
        return 25.0f / displayMetrics.densityDpi;
    }

    public int calculateTimeForDeceleration(int i2) {
        return (int) Math.ceil(calculateTimeForScrolling(i2) / 0.3356d);
    }

    public int calculateTimeForScrolling(int i2) {
        float abs = Math.abs(i2);
        if (!this.f18283m) {
            this.f18284n = calculateSpeedPerPixel(this.f18282l);
            this.f18283m = true;
        }
        return (int) Math.ceil(abs * this.f18284n);
    }

    public int getHorizontalSnapPreference() {
        PointF pointF = this.f18281k;
        if (pointF == null) {
            return 0;
        }
        float f3 = pointF.x;
        if (f3 == 0.0f) {
            return 0;
        }
        return f3 > 0.0f ? 1 : -1;
    }

    public int getVerticalSnapPreference() {
        PointF pointF = this.f18281k;
        if (pointF == null) {
            return 0;
        }
        float f3 = pointF.y;
        if (f3 == 0.0f) {
            return 0;
        }
        return f3 > 0.0f ? 1 : -1;
    }

    @Override // m1.w0
    @SuppressLint({"UnknownNullness"})
    public void onSeekTargetStep(int i2, int i7, x0 x0Var, u0 u0Var) {
        if (getChildCount() == 0) {
            stop();
            return;
        }
        int i8 = this.f18285o;
        int i9 = i8 - i2;
        if (i8 * i9 <= 0) {
            i9 = 0;
        }
        this.f18285o = i9;
        int i10 = this.f18286p;
        int i11 = i10 - i7;
        int i12 = i10 * i11 > 0 ? i11 : 0;
        this.f18286p = i12;
        if (i9 == 0 && i12 == 0) {
            updateActionForInterimTarget(u0Var);
        }
    }

    @Override // m1.w0
    public void onStop() {
        this.f18286p = 0;
        this.f18285o = 0;
        this.f18281k = null;
    }

    @Override // m1.w0
    @SuppressLint({"UnknownNullness"})
    public void onTargetFound(View view, x0 x0Var, u0 u0Var) {
        int calculateDxToMakeVisible = calculateDxToMakeVisible(view, getHorizontalSnapPreference());
        int calculateDyToMakeVisible = calculateDyToMakeVisible(view, getVerticalSnapPreference());
        int calculateTimeForDeceleration = calculateTimeForDeceleration((int) Math.sqrt((calculateDyToMakeVisible * calculateDyToMakeVisible) + (calculateDxToMakeVisible * calculateDxToMakeVisible)));
        if (calculateTimeForDeceleration > 0) {
            u0Var.update(-calculateDxToMakeVisible, -calculateDyToMakeVisible, calculateTimeForDeceleration, this.f18280j);
        }
    }

    @SuppressLint({"UnknownNullness"})
    public void updateActionForInterimTarget(u0 u0Var) {
        PointF computeScrollVectorForPosition = computeScrollVectorForPosition(getTargetPosition());
        if (computeScrollVectorForPosition == null || (computeScrollVectorForPosition.x == 0.0f && computeScrollVectorForPosition.y == 0.0f)) {
            u0Var.jumpTo(getTargetPosition());
            stop();
            return;
        }
        normalize(computeScrollVectorForPosition);
        this.f18281k = computeScrollVectorForPosition;
        this.f18285o = (int) (computeScrollVectorForPosition.x * 10000.0f);
        this.f18286p = (int) (computeScrollVectorForPosition.y * 10000.0f);
        u0Var.update((int) (this.f18285o * 1.2f), (int) (this.f18286p * 1.2f), (int) (calculateTimeForScrolling(10000) * 1.2f), this.f18279i);
    }

    @Override // m1.w0
    public void onStart() {
    }
}
