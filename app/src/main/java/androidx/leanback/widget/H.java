package androidx.leanback.widget;

import android.graphics.PointF;

/* loaded from: classes.dex */
public final class H extends I {

    /* renamed from: s, reason: collision with root package name */
    public final /* synthetic */ GridLayoutManager f6548s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public H(GridLayoutManager gridLayoutManager) {
        super(gridLayoutManager);
        this.f6548s = gridLayoutManager;
    }

    @Override // m1.w0
    public PointF computeScrollVectorForPosition(int i2) {
        if (getChildCount() == 0) {
            return null;
        }
        GridLayoutManager gridLayoutManager = this.f6548s;
        int position = gridLayoutManager.getPosition(gridLayoutManager.getChildAt(0));
        int i7 = ((gridLayoutManager.f6500C & 262144) == 0 ? i2 >= position : i2 <= position) ? 1 : -1;
        return gridLayoutManager.f6534s == 0 ? new PointF(i7, 0.0f) : new PointF(0.0f, i7);
    }
}
