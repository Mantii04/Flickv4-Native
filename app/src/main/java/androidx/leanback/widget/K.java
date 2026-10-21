package androidx.leanback.widget;

import android.graphics.PointF;
import android.view.View;

/* loaded from: classes.dex */
public final class K extends I {

    /* renamed from: s, reason: collision with root package name */
    public final boolean f6586s;

    /* renamed from: t, reason: collision with root package name */
    public int f6587t;

    /* renamed from: u, reason: collision with root package name */
    public final /* synthetic */ GridLayoutManager f6588u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public K(GridLayoutManager gridLayoutManager, int i2, boolean z6) {
        super(gridLayoutManager);
        this.f6588u = gridLayoutManager;
        this.f6587t = i2;
        this.f6586s = z6;
        setTargetPosition(-2);
    }

    @Override // m1.w0
    public PointF computeScrollVectorForPosition(int i2) {
        int i7 = this.f6587t;
        if (i7 == 0) {
            return null;
        }
        GridLayoutManager gridLayoutManager = this.f6588u;
        int i8 = ((gridLayoutManager.f6500C & 262144) == 0 ? i7 >= 0 : i7 <= 0) ? 1 : -1;
        return gridLayoutManager.f6534s == 0 ? new PointF(i8, 0.0f) : new PointF(0.0f, i8);
    }

    @Override // androidx.leanback.widget.I
    public void onStopInternal() {
        super.onStopInternal();
        this.f6587t = 0;
        View findViewByPosition = findViewByPosition(getTargetPosition());
        if (findViewByPosition != null) {
            GridLayoutManager gridLayoutManager = this.f6588u;
            gridLayoutManager.getClass();
            gridLayoutManager.O(findViewByPosition, findViewByPosition.findFocus(), true, 0, 0);
        }
    }
}
