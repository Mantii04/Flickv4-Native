package l;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;

/* loaded from: classes.dex */
public final class Z0 implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AbstractViewOnTouchListenerC1129a1 f17825b;

    public Z0(AbstractViewOnTouchListenerC1129a1 abstractViewOnTouchListenerC1129a1) {
        this.f17825b = abstractViewOnTouchListenerC1129a1;
    }

    @Override // java.lang.Runnable
    public void run() {
        AbstractViewOnTouchListenerC1129a1 abstractViewOnTouchListenerC1129a1 = this.f17825b;
        abstractViewOnTouchListenerC1129a1.a();
        View view = abstractViewOnTouchListenerC1129a1.f17835j;
        if (view.isEnabled() && !view.isLongClickable() && abstractViewOnTouchListenerC1129a1.onForwardingStarted()) {
            view.getParent().requestDisallowInterceptTouchEvent(true);
            long uptimeMillis = SystemClock.uptimeMillis();
            MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
            view.onTouchEvent(obtain);
            obtain.recycle();
            abstractViewOnTouchListenerC1129a1.f17838p = true;
        }
    }
}
