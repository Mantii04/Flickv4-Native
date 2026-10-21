package s3;

import android.R;
import android.app.Dialog;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;

/* renamed from: s3.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class ViewOnTouchListenerC1640a implements View.OnTouchListener {

    /* renamed from: b, reason: collision with root package name */
    public final Dialog f20028b;

    /* renamed from: e, reason: collision with root package name */
    public final int f20029e;

    /* renamed from: f, reason: collision with root package name */
    public final int f20030f;

    /* renamed from: j, reason: collision with root package name */
    public final int f20031j;

    public ViewOnTouchListenerC1640a(Dialog dialog, Rect rect) {
        this.f20028b = dialog;
        this.f20029e = rect.left;
        this.f20030f = rect.top;
        this.f20031j = ViewConfiguration.get(dialog.getContext()).getScaledWindowTouchSlop();
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        View findViewById = view.findViewById(R.id.content);
        int left = findViewById.getLeft() + this.f20029e;
        int width = findViewById.getWidth() + left;
        if (new RectF(left, findViewById.getTop() + this.f20030f, width, findViewById.getHeight() + r4).contains(motionEvent.getX(), motionEvent.getY())) {
            return false;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        if (motionEvent.getAction() == 1) {
            obtain.setAction(4);
        }
        if (Build.VERSION.SDK_INT < 28) {
            obtain.setAction(0);
            int i2 = this.f20031j;
            obtain.setLocation((-i2) - 1, (-i2) - 1);
        }
        view.performClick();
        return this.f20028b.onTouchEvent(obtain);
    }
}
