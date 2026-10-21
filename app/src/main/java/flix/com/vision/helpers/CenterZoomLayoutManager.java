package flix.com.vision.helpers;

import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import m1.C1300p0;
import m1.x0;

/* loaded from: classes2.dex */
public class CenterZoomLayoutManager extends LinearLayoutManager {
    @Override // androidx.recyclerview.widget.LinearLayoutManager, m1.AbstractC1286i0
    public int scrollHorizontallyBy(int i2, C1300p0 c1300p0, x0 x0Var) {
        if (getOrientation() != 0) {
            return 0;
        }
        int scrollHorizontallyBy = super.scrollHorizontallyBy(i2, c1300p0, x0Var);
        float width = getWidth() / 2.0f;
        float f3 = 0.9f * width;
        for (int i7 = 0; i7 < getChildCount(); i7++) {
            View childAt = getChildAt(i7);
            float min = (((Math.min(f3, Math.abs(width - ((getDecoratedLeft(childAt) + getDecoratedRight(childAt)) / 2.0f))) - 0.0f) * (-0.14999998f)) / (f3 - 0.0f)) + 1.0f;
            childAt.setScaleX(min);
            childAt.setScaleY(min);
        }
        return scrollHorizontallyBy;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, m1.AbstractC1286i0
    public int scrollVerticallyBy(int i2, C1300p0 c1300p0, x0 x0Var) {
        if (getOrientation() != 1) {
            return 0;
        }
        int scrollVerticallyBy = super.scrollVerticallyBy(i2, c1300p0, x0Var);
        float height = getHeight() / 2.0f;
        float f3 = 0.9f * height;
        for (int i7 = 0; i7 < getChildCount(); i7++) {
            View childAt = getChildAt(i7);
            float min = (((Math.min(f3, Math.abs(height - ((getDecoratedTop(childAt) + getDecoratedBottom(childAt)) / 2.0f))) - 0.0f) * (-0.14999998f)) / (f3 - 0.0f)) + 1.0f;
            childAt.setScaleX(min);
            childAt.setScaleY(min);
        }
        return scrollVerticallyBy;
    }
}
