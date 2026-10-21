package S;

import android.widget.ListView;

/* loaded from: classes.dex */
public final class m extends AbstractViewOnTouchListenerC0309c {

    /* renamed from: A, reason: collision with root package name */
    public final ListView f3241A;

    public m(ListView listView) {
        super(listView);
        this.f3241A = listView;
    }

    @Override // S.AbstractViewOnTouchListenerC0309c
    public boolean canTargetScrollHorizontally(int i2) {
        return false;
    }

    @Override // S.AbstractViewOnTouchListenerC0309c
    public boolean canTargetScrollVertically(int i2) {
        ListView listView = this.f3241A;
        int count = listView.getCount();
        if (count == 0) {
            return false;
        }
        int childCount = listView.getChildCount();
        int firstVisiblePosition = listView.getFirstVisiblePosition();
        int i7 = firstVisiblePosition + childCount;
        if (i2 > 0) {
            if (i7 >= count && listView.getChildAt(childCount - 1).getBottom() <= listView.getHeight()) {
                return false;
            }
        } else {
            if (i2 >= 0) {
                return false;
            }
            if (firstVisiblePosition <= 0 && listView.getChildAt(0).getTop() >= 0) {
                return false;
            }
        }
        return true;
    }

    @Override // S.AbstractViewOnTouchListenerC0309c
    public void scrollTargetBy(int i2, int i7) {
        this.f3241A.scrollListBy(i7);
    }
}
