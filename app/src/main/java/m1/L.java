package m1;

import android.graphics.Rect;
import android.view.View;

/* loaded from: classes.dex */
public abstract class L {

    /* renamed from: a, reason: collision with root package name */
    public final AbstractC1286i0 f18295a;

    /* renamed from: b, reason: collision with root package name */
    public int f18296b = Integer.MIN_VALUE;

    /* renamed from: c, reason: collision with root package name */
    public final Rect f18297c = new Rect();

    public L(AbstractC1286i0 abstractC1286i0) {
        this.f18295a = abstractC1286i0;
    }

    public static L createHorizontalHelper(AbstractC1286i0 abstractC1286i0) {
        return new J(abstractC1286i0);
    }

    public static L createOrientationHelper(AbstractC1286i0 abstractC1286i0, int i2) {
        if (i2 == 0) {
            return createHorizontalHelper(abstractC1286i0);
        }
        if (i2 == 1) {
            return createVerticalHelper(abstractC1286i0);
        }
        throw new IllegalArgumentException("invalid orientation");
    }

    public static L createVerticalHelper(AbstractC1286i0 abstractC1286i0) {
        return new K(abstractC1286i0);
    }

    public abstract int getDecoratedEnd(View view);

    public abstract int getDecoratedMeasurement(View view);

    public abstract int getDecoratedMeasurementInOther(View view);

    public abstract int getDecoratedStart(View view);

    public abstract int getEnd();

    public abstract int getEndAfterPadding();

    public abstract int getEndPadding();

    public abstract int getMode();

    public abstract int getModeInOther();

    public abstract int getStartAfterPadding();

    public abstract int getTotalSpace();

    public int getTotalSpaceChange() {
        if (Integer.MIN_VALUE == this.f18296b) {
            return 0;
        }
        return getTotalSpace() - this.f18296b;
    }

    public abstract int getTransformedEndWithDecoration(View view);

    public abstract int getTransformedStartWithDecoration(View view);

    public abstract void offsetChildren(int i2);

    public void onLayoutComplete() {
        this.f18296b = getTotalSpace();
    }
}
