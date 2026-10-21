package k4;

import android.annotation.SuppressLint;
import android.view.MotionEvent;
import android.view.View;

/* renamed from: k4.q, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class ViewOnTouchListenerC1115q implements View.OnTouchListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ RunnableC1116r f17314b;

    public ViewOnTouchListenerC1115q(RunnableC1116r runnableC1116r) {
        this.f17314b = runnableC1116r;
    }

    @Override // android.view.View.OnTouchListener
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouch(View view, MotionEvent event) {
        kotlin.jvm.internal.j.checkNotNullParameter(view, "view");
        kotlin.jvm.internal.j.checkNotNullParameter(event, "event");
        if (event.getAction() != 4) {
            return false;
        }
        InterfaceC1105g spinnerOutsideTouchListener = this.f17314b.f17315b.getSpinnerOutsideTouchListener();
        if (spinnerOutsideTouchListener == null) {
            return true;
        }
        ((C1113o) spinnerOutsideTouchListener).onSpinnerOutsideTouch(view, event);
        return true;
    }
}
