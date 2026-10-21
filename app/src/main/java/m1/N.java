package m1;

import android.annotation.SuppressLint;
import android.graphics.PointF;
import android.view.View;
import androidx.media3.common.util.Log;

/* loaded from: classes.dex */
public final class N extends G0 {

    /* renamed from: c, reason: collision with root package name */
    public L f18305c;

    /* renamed from: d, reason: collision with root package name */
    public L f18306d;

    public static int b(View view, L l7) {
        return ((l7.getDecoratedMeasurement(view) / 2) + l7.getDecoratedStart(view)) - ((l7.getTotalSpace() / 2) + l7.getStartAfterPadding());
    }

    public static View c(AbstractC1286i0 abstractC1286i0, L l7) {
        int childCount = abstractC1286i0.getChildCount();
        View view = null;
        if (childCount == 0) {
            return null;
        }
        int totalSpace = (l7.getTotalSpace() / 2) + l7.getStartAfterPadding();
        int i2 = Log.LOG_LEVEL_OFF;
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = abstractC1286i0.getChildAt(i7);
            int abs = Math.abs(((l7.getDecoratedMeasurement(childAt) / 2) + l7.getDecoratedStart(childAt)) - totalSpace);
            if (abs < i2) {
                view = childAt;
                i2 = abs;
            }
        }
        return view;
    }

    @Override // m1.G0
    public int[] calculateDistanceToFinalSnap(AbstractC1286i0 abstractC1286i0, View view) {
        int[] iArr = new int[2];
        if (abstractC1286i0.canScrollHorizontally()) {
            iArr[0] = b(view, d(abstractC1286i0));
        } else {
            iArr[0] = 0;
        }
        if (abstractC1286i0.canScrollVertically()) {
            iArr[1] = b(view, e(abstractC1286i0));
            return iArr;
        }
        iArr[1] = 0;
        return iArr;
    }

    @Override // m1.G0
    public w0 createScroller(AbstractC1286i0 abstractC1286i0) {
        if (abstractC1286i0 instanceof v0) {
            return new M(this, this.f18273a.getContext());
        }
        return null;
    }

    public final L d(AbstractC1286i0 abstractC1286i0) {
        L l7 = this.f18306d;
        if (l7 == null || l7.f18295a != abstractC1286i0) {
            this.f18306d = L.createHorizontalHelper(abstractC1286i0);
        }
        return this.f18306d;
    }

    public final L e(AbstractC1286i0 abstractC1286i0) {
        L l7 = this.f18305c;
        if (l7 == null || l7.f18295a != abstractC1286i0) {
            this.f18305c = L.createVerticalHelper(abstractC1286i0);
        }
        return this.f18305c;
    }

    @Override // m1.G0
    @SuppressLint({"UnknownNullness"})
    public View findSnapView(AbstractC1286i0 abstractC1286i0) {
        if (abstractC1286i0.canScrollVertically()) {
            return c(abstractC1286i0, e(abstractC1286i0));
        }
        if (abstractC1286i0.canScrollHorizontally()) {
            return c(abstractC1286i0, d(abstractC1286i0));
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // m1.G0
    @SuppressLint({"UnknownNullness"})
    public int findTargetSnapPosition(AbstractC1286i0 abstractC1286i0, int i2, int i7) {
        PointF computeScrollVectorForPosition;
        int itemCount = abstractC1286i0.getItemCount();
        if (itemCount != 0) {
            View view = null;
            L e3 = abstractC1286i0.canScrollVertically() ? e(abstractC1286i0) : abstractC1286i0.canScrollHorizontally() ? d(abstractC1286i0) : null;
            if (e3 != null) {
                int childCount = abstractC1286i0.getChildCount();
                boolean z6 = false;
                int i8 = Integer.MAX_VALUE;
                int i9 = Integer.MIN_VALUE;
                View view2 = null;
                for (int i10 = 0; i10 < childCount; i10++) {
                    View childAt = abstractC1286i0.getChildAt(i10);
                    if (childAt != null) {
                        int b7 = b(childAt, e3);
                        if (b7 <= 0 && b7 > i9) {
                            view2 = childAt;
                            i9 = b7;
                        }
                        if (b7 >= 0 && b7 < i8) {
                            view = childAt;
                            i8 = b7;
                        }
                    }
                }
                boolean z7 = !abstractC1286i0.canScrollHorizontally() ? i7 <= 0 : i2 <= 0;
                if (z7 && view != null) {
                    return abstractC1286i0.getPosition(view);
                }
                if (!z7 && view2 != null) {
                    return abstractC1286i0.getPosition(view2);
                }
                if (z7) {
                    view = view2;
                }
                if (view != null) {
                    int position = abstractC1286i0.getPosition(view);
                    int itemCount2 = abstractC1286i0.getItemCount();
                    if ((abstractC1286i0 instanceof v0) && (computeScrollVectorForPosition = ((v0) abstractC1286i0).computeScrollVectorForPosition(itemCount2 - 1)) != null && (computeScrollVectorForPosition.x < 0.0f || computeScrollVectorForPosition.y < 0.0f)) {
                        z6 = true;
                    }
                    int i11 = position + (z6 == z7 ? -1 : 1);
                    if (i11 >= 0 && i11 < itemCount) {
                        return i11;
                    }
                }
            }
        }
        return -1;
    }
}
