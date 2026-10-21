package e;

import android.content.Context;
import android.view.KeyEvent;
import android.view.MotionEvent;
import androidx.appcompat.widget.ContentFrameLayout;
import f.AbstractC0876a;

/* loaded from: classes.dex */
public final class X extends ContentFrameLayout {

    /* renamed from: r, reason: collision with root package name */
    public final /* synthetic */ a0 f13668r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public X(a0 a0Var, Context context) {
        super(context);
        this.f13668r = a0Var;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return this.f13668r.j(keyEvent) || super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            int x6 = (int) motionEvent.getX();
            int y6 = (int) motionEvent.getY();
            if (x6 < -5 || y6 < -5 || x6 > getWidth() + 5 || y6 > getHeight() + 5) {
                a0 a0Var = this.f13668r;
                a0Var.h(a0Var.getPanelState(0, true), true);
                return true;
            }
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public void setBackgroundResource(int i2) {
        setBackgroundDrawable(AbstractC0876a.getDrawable(getContext(), i2));
    }
}
