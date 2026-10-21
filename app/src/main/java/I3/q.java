package I3;

import android.view.MotionEvent;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.behavior.SwipeDismissBehavior;

/* loaded from: classes2.dex */
public final class q {

    /* renamed from: a, reason: collision with root package name */
    public l f1335a;

    public q(SwipeDismissBehavior<?> swipeDismissBehavior) {
        swipeDismissBehavior.setStartAlphaSwipeDistance(0.1f);
        swipeDismissBehavior.setEndAlphaSwipeDistance(0.6f);
        swipeDismissBehavior.setSwipeDirection(0);
    }

    public boolean canSwipeDismissView(View view) {
        return view instanceof s;
    }

    public void onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            if (coordinatorLayout.isPointInChildBounds(view, (int) motionEvent.getX(), (int) motionEvent.getY())) {
                A.b().pauseTimeout(this.f1335a);
            }
        } else if (actionMasked == 1 || actionMasked == 3) {
            A.b().restoreTimeoutIfPaused(this.f1335a);
        }
    }

    public void setBaseTransientBottomBar(t tVar) {
        this.f1335a = tVar.f1374u;
    }
}
