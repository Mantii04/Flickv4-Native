package m1;

import android.view.View;
import androidx.media3.common.util.Log;
import java.util.List;

/* renamed from: m1.F, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1267F {

    /* renamed from: a, reason: collision with root package name */
    public boolean f18259a;

    /* renamed from: b, reason: collision with root package name */
    public int f18260b;

    /* renamed from: c, reason: collision with root package name */
    public int f18261c;

    /* renamed from: d, reason: collision with root package name */
    public int f18262d;

    /* renamed from: e, reason: collision with root package name */
    public int f18263e;

    /* renamed from: f, reason: collision with root package name */
    public int f18264f;

    /* renamed from: g, reason: collision with root package name */
    public int f18265g;

    /* renamed from: h, reason: collision with root package name */
    public int f18266h;

    /* renamed from: i, reason: collision with root package name */
    public int f18267i;

    /* renamed from: j, reason: collision with root package name */
    public int f18268j;

    /* renamed from: k, reason: collision with root package name */
    public List f18269k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f18270l;

    public final View a(C1300p0 c1300p0) {
        List list = this.f18269k;
        if (list == null) {
            View viewForPosition = c1300p0.getViewForPosition(this.f18262d);
            this.f18262d += this.f18263e;
            return viewForPosition;
        }
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            View view = ((B0) this.f18269k.get(i2)).f18217a;
            C1288j0 c1288j0 = (C1288j0) view.getLayoutParams();
            if (!c1288j0.isItemRemoved() && this.f18262d == c1288j0.getViewLayoutPosition()) {
                assignPositionFromScrapList(view);
                return view;
            }
        }
        return null;
    }

    public void assignPositionFromScrapList() {
        assignPositionFromScrapList(null);
    }

    public View nextViewInLimitedList(View view) {
        int viewLayoutPosition;
        int size = this.f18269k.size();
        View view2 = null;
        int i2 = Log.LOG_LEVEL_OFF;
        for (int i7 = 0; i7 < size; i7++) {
            View view3 = ((B0) this.f18269k.get(i7)).f18217a;
            C1288j0 c1288j0 = (C1288j0) view3.getLayoutParams();
            if (view3 != view && !c1288j0.isItemRemoved() && (viewLayoutPosition = (c1288j0.getViewLayoutPosition() - this.f18262d) * this.f18263e) >= 0 && viewLayoutPosition < i2) {
                if (viewLayoutPosition == 0) {
                    return view3;
                }
                view2 = view3;
                i2 = viewLayoutPosition;
            }
        }
        return view2;
    }

    public void assignPositionFromScrapList(View view) {
        View nextViewInLimitedList = nextViewInLimitedList(view);
        if (nextViewInLimitedList == null) {
            this.f18262d = -1;
        } else {
            this.f18262d = ((C1288j0) nextViewInLimitedList.getLayoutParams()).getViewLayoutPosition();
        }
    }
}
