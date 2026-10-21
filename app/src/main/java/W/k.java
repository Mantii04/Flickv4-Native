package W;

import android.view.View;

/* loaded from: classes.dex */
public abstract class k {
    public abstract int clampViewPositionHorizontal(View view, int i2, int i7);

    public abstract int clampViewPositionVertical(View view, int i2, int i7);

    public int getViewHorizontalDragRange(View view) {
        return 0;
    }

    public int getViewVerticalDragRange(View view) {
        return 0;
    }

    public boolean onEdgeLock(int i2) {
        return false;
    }

    public abstract void onViewDragStateChanged(int i2);

    public abstract void onViewPositionChanged(View view, int i2, int i7, int i8, int i9);

    public abstract void onViewReleased(View view, float f3, float f7);

    public abstract boolean tryCaptureView(View view, int i2);

    public int getOrderedChildIndex(int i2) {
        return i2;
    }

    public void onEdgeDragStarted(int i2, int i7) {
    }

    public void onEdgeTouched(int i2, int i7) {
    }

    public void onViewCaptured(View view, int i2) {
    }
}
