package T4;

import android.graphics.Point;
import android.graphics.PointF;
import android.view.View;
import flix.com.vision.helpers.CursorLayout;

/* loaded from: classes2.dex */
public final class h implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ CursorLayout f3712b;

    public h(CursorLayout cursorLayout) {
        this.f3712b = cursorLayout;
    }

    @Override // java.lang.Runnable
    public void run() {
        CursorLayout cursorLayout = this.f3712b;
        if (cursorLayout.getHandler() != null) {
            cursorLayout.getHandler().removeCallbacks(cursorLayout.f16010f);
        }
        long currentTimeMillis = System.currentTimeMillis();
        long j7 = currentTimeMillis - cursorLayout.f16015q;
        cursorLayout.f16015q = currentTimeMillis;
        float f3 = j7 * 0.05f;
        PointF pointF = cursorLayout.f16012m;
        pointF.set(cursorLayout.bound((cursorLayout.bound(cursorLayout.f16009e.x, 1.0f) * f3) + pointF.x, CursorLayout.f16006y), cursorLayout.bound((cursorLayout.bound(cursorLayout.f16009e.y, 1.0f) * f3) + cursorLayout.f16012m.y, CursorLayout.f16006y));
        if (Math.abs(cursorLayout.f16012m.x) < 0.1f) {
            cursorLayout.f16012m.x = 0.0f;
        }
        if (Math.abs(cursorLayout.f16012m.y) < 0.1f) {
            cursorLayout.f16012m.y = 0.0f;
        }
        Point point = cursorLayout.f16009e;
        if (point.x == 0 && point.y == 0) {
            PointF pointF2 = cursorLayout.f16012m;
            if (pointF2.x == 0.0f && pointF2.y == 0.0f) {
                if (cursorLayout.getHandler() != null) {
                    cursorLayout.getHandler().postDelayed(cursorLayout.f16010f, 5000L);
                    return;
                }
                return;
            }
        }
        cursorLayout.f16017s.set(cursorLayout.f16011j);
        PointF pointF3 = cursorLayout.f16011j;
        PointF pointF4 = cursorLayout.f16012m;
        pointF3.offset(pointF4.x, pointF4.y);
        PointF pointF5 = cursorLayout.f16011j;
        float f7 = pointF5.x;
        if (f7 < 0.0f) {
            pointF5.x = 0.0f;
        } else if (f7 > cursorLayout.getWidth() - 1) {
            cursorLayout.f16011j.x = cursorLayout.getWidth() - 1;
        }
        PointF pointF6 = cursorLayout.f16011j;
        float f8 = pointF6.y;
        if (f8 < 0.0f) {
            pointF6.y = 0.0f;
        } else if (f8 > cursorLayout.getHeight() - 1) {
            cursorLayout.f16011j.y = cursorLayout.getHeight() - 1;
        }
        if (!cursorLayout.f16017s.equals(cursorLayout.f16011j) && cursorLayout.f16014p) {
            PointF pointF7 = cursorLayout.f16011j;
            cursorLayout.dispatchMotionEvent(pointF7.x, pointF7.y, 2);
        }
        View childAt = cursorLayout.getChildAt(0);
        if (childAt != null) {
            float f9 = cursorLayout.f16011j.y;
            int height = cursorLayout.getHeight();
            int i2 = CursorLayout.f16007z;
            if (f9 > height - i2) {
                float f10 = cursorLayout.f16012m.y;
                if (f10 > 0.0f && childAt.canScrollVertically((int) f10)) {
                    childAt.scrollTo(childAt.getScrollX(), childAt.getScrollY() + ((int) cursorLayout.f16012m.y));
                }
            } else if (cursorLayout.f16011j.y < i2) {
                float f11 = cursorLayout.f16012m.y;
                if (f11 < 0.0f && childAt.canScrollVertically((int) f11)) {
                    childAt.scrollTo(childAt.getScrollX(), childAt.getScrollY() + ((int) cursorLayout.f16012m.y));
                }
            }
            float f12 = cursorLayout.f16011j.x;
            int width = cursorLayout.getWidth();
            int i7 = CursorLayout.f16007z;
            if (f12 > width - i7) {
                float f13 = cursorLayout.f16012m.x;
                if (f13 > 0.0f && childAt.canScrollHorizontally((int) f13)) {
                    childAt.scrollTo(childAt.getScrollX() + ((int) cursorLayout.f16012m.x), childAt.getScrollY());
                }
            } else if (cursorLayout.f16011j.x < i7) {
                float f14 = cursorLayout.f16012m.x;
                if (f14 < 0.0f && childAt.canScrollHorizontally((int) f14)) {
                    childAt.scrollTo(childAt.getScrollX() + ((int) cursorLayout.f16012m.x), childAt.getScrollY());
                }
            }
        }
        cursorLayout.invalidate();
        if (cursorLayout.getHandler() != null) {
            cursorLayout.getHandler().post(this);
        }
    }
}
