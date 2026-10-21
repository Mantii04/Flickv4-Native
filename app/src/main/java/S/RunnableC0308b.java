package S;

import M.AbstractC0181p0;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;

/* renamed from: S.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC0308b implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AbstractViewOnTouchListenerC0309c f3223b;

    public RunnableC0308b(AbstractViewOnTouchListenerC0309c abstractViewOnTouchListenerC0309c) {
        this.f3223b = abstractViewOnTouchListenerC0309c;
    }

    @Override // java.lang.Runnable
    public void run() {
        AbstractViewOnTouchListenerC0309c abstractViewOnTouchListenerC0309c = this.f3223b;
        if (abstractViewOnTouchListenerC0309c.f3239x) {
            boolean z6 = abstractViewOnTouchListenerC0309c.f3237v;
            C0307a c0307a = abstractViewOnTouchListenerC0309c.f3225b;
            if (z6) {
                abstractViewOnTouchListenerC0309c.f3237v = false;
                c0307a.start();
            }
            if (c0307a.isFinished() || !abstractViewOnTouchListenerC0309c.d()) {
                abstractViewOnTouchListenerC0309c.f3239x = false;
                return;
            }
            boolean z7 = abstractViewOnTouchListenerC0309c.f3238w;
            View view = abstractViewOnTouchListenerC0309c.f3227f;
            if (z7) {
                abstractViewOnTouchListenerC0309c.f3238w = false;
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                view.onTouchEvent(obtain);
                obtain.recycle();
            }
            c0307a.computeScrollDelta();
            abstractViewOnTouchListenerC0309c.scrollTargetBy(c0307a.getDeltaX(), c0307a.getDeltaY());
            AbstractC0181p0.postOnAnimation(view, this);
        }
    }
}
