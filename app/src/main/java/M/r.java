package M;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Handler;
import android.view.GestureDetector;
import android.view.MotionEvent;

/* loaded from: classes.dex */
public final class r {

    /* renamed from: a, reason: collision with root package name */
    public final GestureDetector f2071a;

    public r(Context context, GestureDetector.OnGestureListener onGestureListener) {
        this(context, onGestureListener, null);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        return this.f2071a.onTouchEvent(motionEvent);
    }

    @SuppressLint({"KotlinPropertyAccess"})
    public void setIsLongpressEnabled(boolean z6) {
        this.f2071a.setIsLongpressEnabled(z6);
    }

    public r(Context context, GestureDetector.OnGestureListener onGestureListener, Handler handler) {
        this.f2071a = new GestureDetector(context, onGestureListener, handler);
    }
}
