package m1;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public final class J extends L {
    @Override // m1.L
    public int getDecoratedEnd(View view) {
        return this.f18295a.getDecoratedRight(view) + ((ViewGroup.MarginLayoutParams) ((C1288j0) view.getLayoutParams())).rightMargin;
    }

    @Override // m1.L
    public int getDecoratedMeasurement(View view) {
        C1288j0 c1288j0 = (C1288j0) view.getLayoutParams();
        return this.f18295a.getDecoratedMeasuredWidth(view) + ((ViewGroup.MarginLayoutParams) c1288j0).leftMargin + ((ViewGroup.MarginLayoutParams) c1288j0).rightMargin;
    }

    @Override // m1.L
    public int getDecoratedMeasurementInOther(View view) {
        C1288j0 c1288j0 = (C1288j0) view.getLayoutParams();
        return this.f18295a.getDecoratedMeasuredHeight(view) + ((ViewGroup.MarginLayoutParams) c1288j0).topMargin + ((ViewGroup.MarginLayoutParams) c1288j0).bottomMargin;
    }

    @Override // m1.L
    public int getDecoratedStart(View view) {
        return this.f18295a.getDecoratedLeft(view) - ((ViewGroup.MarginLayoutParams) ((C1288j0) view.getLayoutParams())).leftMargin;
    }

    @Override // m1.L
    public int getEnd() {
        return this.f18295a.getWidth();
    }

    @Override // m1.L
    public int getEndAfterPadding() {
        AbstractC1286i0 abstractC1286i0 = this.f18295a;
        return abstractC1286i0.getWidth() - abstractC1286i0.getPaddingRight();
    }

    @Override // m1.L
    public int getEndPadding() {
        return this.f18295a.getPaddingRight();
    }

    @Override // m1.L
    public int getMode() {
        return this.f18295a.getWidthMode();
    }

    @Override // m1.L
    public int getModeInOther() {
        return this.f18295a.getHeightMode();
    }

    @Override // m1.L
    public int getStartAfterPadding() {
        return this.f18295a.getPaddingLeft();
    }

    @Override // m1.L
    public int getTotalSpace() {
        AbstractC1286i0 abstractC1286i0 = this.f18295a;
        return (abstractC1286i0.getWidth() - abstractC1286i0.getPaddingLeft()) - abstractC1286i0.getPaddingRight();
    }

    @Override // m1.L
    public int getTransformedEndWithDecoration(View view) {
        AbstractC1286i0 abstractC1286i0 = this.f18295a;
        Rect rect = this.f18297c;
        abstractC1286i0.getTransformedBoundingBox(view, true, rect);
        return rect.right;
    }

    @Override // m1.L
    public int getTransformedStartWithDecoration(View view) {
        AbstractC1286i0 abstractC1286i0 = this.f18295a;
        Rect rect = this.f18297c;
        abstractC1286i0.getTransformedBoundingBox(view, true, rect);
        return rect.left;
    }

    @Override // m1.L
    public void offsetChildren(int i2) {
        this.f18295a.offsetChildrenHorizontal(i2);
    }
}
