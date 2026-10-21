package l;

import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;

/* renamed from: l.j1, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ViewOnTouchListenerC1156j1 implements View.OnTouchListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C1162l1 f17907b;

    public ViewOnTouchListenerC1156j1(C1162l1 c1162l1) {
        this.f17907b = c1162l1;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        S s6;
        int action = motionEvent.getAction();
        int x6 = (int) motionEvent.getX();
        int y6 = (int) motionEvent.getY();
        C1162l1 c1162l1 = this.f17907b;
        RunnableC1159k1 runnableC1159k1 = c1162l1.f17921A;
        Handler handler = c1162l1.f17925E;
        if (action == 0 && (s6 = c1162l1.f17929I) != null && s6.isShowing() && x6 >= 0 && x6 < c1162l1.f17929I.getWidth() && y6 >= 0 && y6 < c1162l1.f17929I.getHeight()) {
            handler.postDelayed(runnableC1159k1, 250L);
            return false;
        }
        if (action != 1) {
            return false;
        }
        handler.removeCallbacks(runnableC1159k1);
        return false;
    }
}
