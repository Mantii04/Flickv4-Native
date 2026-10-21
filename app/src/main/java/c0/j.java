package c0;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import androidx.drawerlayout.widget.DrawerLayout;

/* loaded from: classes.dex */
public final class j implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ k f8538b;

    public j(k kVar) {
        this.f8538b = kVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        View c7;
        int width;
        k kVar = this.f8538b;
        int edgeSize = kVar.f8540b.getEdgeSize();
        int i2 = kVar.f8539a;
        boolean z6 = i2 == 3;
        DrawerLayout drawerLayout = kVar.f8542d;
        if (z6) {
            c7 = drawerLayout.c(3);
            width = (c7 != null ? -c7.getWidth() : 0) + edgeSize;
        } else {
            c7 = drawerLayout.c(5);
            width = drawerLayout.getWidth() - edgeSize;
        }
        if (c7 != null) {
            if (((!z6 || c7.getLeft() >= width) && (z6 || c7.getLeft() <= width)) || drawerLayout.getDrawerLockMode(c7) != 0) {
                return;
            }
            f fVar = (f) c7.getLayoutParams();
            kVar.f8540b.smoothSlideViewTo(c7, width, c7.getTop());
            fVar.f8531c = true;
            drawerLayout.invalidate();
            View c8 = drawerLayout.c(i2 == 3 ? 5 : 3);
            if (c8 != null) {
                drawerLayout.closeDrawer(c8);
            }
            if (drawerLayout.f5940A) {
                return;
            }
            long uptimeMillis = SystemClock.uptimeMillis();
            MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
            int childCount = drawerLayout.getChildCount();
            for (int i7 = 0; i7 < childCount; i7++) {
                drawerLayout.getChildAt(i7).dispatchTouchEvent(obtain);
            }
            obtain.recycle();
            drawerLayout.f5940A = true;
        }
    }
}
