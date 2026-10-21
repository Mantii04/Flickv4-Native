package m1;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public final class K extends L {
    @Override // m1.L
    public int getDecoratedEnd(View view) {
        return this.f18295a.getDecoratedBottom(view) + ((ViewGroup.MarginLayoutParams) ((C1288j0) view.getLayoutParams())).bottomMargin;
    }

    @Override // m1.L
    public int getDecoratedMeasurement(View view) {
        C1288j0 c1288j0 = (C1288j0) view.getLayoutParams();
        return this.f18295a.getDecoratedMeasuredHeight(view) + ((ViewGroup.MarginLayoutParams) c1288j0).topMargin + ((ViewGroup.MarginLayoutParams) c1288j0).bottomMargin;
    }

    @Override // m1.L
    public int getDecoratedMeasurementInOther(View view) {
        C1288j0 c1288j0 = (C1288j0) view.getLayoutParams();
        return this.f18295a.getDecoratedMeasuredWidth(view) + ((ViewGroup.MarginLayoutParams) c1288j0).leftMargin + ((ViewGroup.MarginLayoutParams) c1288j0).rightMargin;
    }

    @Override // m1.L
    public int getDecoratedStart(View view) {
        return this.f18295a.getDecoratedTop(view) - ((ViewGroup.MarginLayoutParams) ((C1288j0) view.getLayoutParams())).topMargin;
    }

    @Override // m1.L
    public int getEnd() {
        return this.f18295a.getHeight();
    }

    @Override // m1.L
    public int getEndAfterPadding() {
        AbstractC1286i0 abstractC1286i0 = this.f18295a;
        return abstractC1286i0.getHeight() - abstractC1286i0.getPaddingBottom();
    }

    @Override // m1.L
    public int getEndPadding() {
        return this.f18295a.getPaddingBottom();
    }

    @Override // m1.L
    public int getMode() {
        return this.f18295a.getHeightMode();
    }

    @Override // m1.L
    public int getModeInOther() {
        return this.f18295a.getWidthMode();
    }

    @Override // m1.L
    public int getStartAfterPadding() {
        return this.f18295a.getPaddingTop();
    }

    @Override // m1.L
    public int getTotalSpace() {
        AbstractC1286i0 abstractC1286i0 = this.f18295a;
        return (abstractC1286i0.getHeight() - abstractC1286i0.getPaddingTop()) - abstractC1286i0.getPaddingBottom();
    }

    @Override // m1.L
    public int getTransformedEndWithDecoration(View view) {
        AbstractC1286i0 abstractC1286i0 = this.f18295a;
        Rect rect = this.f18297c;
        abstractC1286i0.getTransformedBoundingBox(view, true, rect);
        return rect.bottom;
    }

    @Override // m1.L
    public int getTransformedStartWithDecoration(View view) {
        AbstractC1286i0 abstractC1286i0 = this.f18295a;
        Rect rect = this.f18297c;
        abstractC1286i0.getTransformedBoundingBox(view, true, rect);
        return rect.top;
    }

    @Override // m1.L
    public void offsetChildren(int i2) {
        this.f18295a.offsetChildrenVertical(i2);
    }
}
