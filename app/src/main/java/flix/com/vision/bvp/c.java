package flix.com.vision.bvp;

import android.view.MotionEvent;
import android.view.View;

/* loaded from: classes2.dex */
public abstract class c implements View.OnTouchListener {

    /* renamed from: b, reason: collision with root package name */
    public int f15973b;

    /* renamed from: e, reason: collision with root package name */
    public float f15974e;

    /* renamed from: f, reason: collision with root package name */
    public float f15975f;

    /* renamed from: j, reason: collision with root package name */
    public float f15976j;

    /* renamed from: m, reason: collision with root package name */
    public float f15977m;

    public abstract void onAfterMove();

    public abstract void onBeforeMove(OnSwipeTouchListener$Direction onSwipeTouchListener$Direction);

    public abstract void onClick();

    public abstract void onMove(OnSwipeTouchListener$Direction onSwipeTouchListener$Direction, float f3);

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        float x6;
        float y6;
        float f3;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f15974e = motionEvent.getX();
            this.f15975f = motionEvent.getY();
            this.f15973b = 0;
            return true;
        }
        if (actionMasked == 1) {
            motionEvent.getX();
            motionEvent.getY();
            if (this.f15973b == 0) {
                onClick();
                return true;
            }
            onAfterMove();
            this.f15973b = 0;
            return true;
        }
        if (actionMasked == 2) {
            if (this.f15973b == 0) {
                x6 = motionEvent.getX() - this.f15974e;
                y6 = motionEvent.getY();
                f3 = this.f15975f;
            } else {
                x6 = motionEvent.getX() - this.f15976j;
                y6 = motionEvent.getY();
                f3 = this.f15977m;
            }
            float f7 = y6 - f3;
            int i2 = this.f15973b;
            OnSwipeTouchListener$Direction onSwipeTouchListener$Direction = OnSwipeTouchListener$Direction.f15958f;
            OnSwipeTouchListener$Direction onSwipeTouchListener$Direction2 = OnSwipeTouchListener$Direction.f15959j;
            OnSwipeTouchListener$Direction onSwipeTouchListener$Direction3 = OnSwipeTouchListener$Direction.f15956b;
            OnSwipeTouchListener$Direction onSwipeTouchListener$Direction4 = OnSwipeTouchListener$Direction.f15957e;
            if (i2 == 0 && Math.abs(x6) > 100.0f) {
                this.f15973b = 1;
                this.f15976j = motionEvent.getX();
                this.f15977m = motionEvent.getY();
                if (x6 > 0.0f) {
                    onBeforeMove(onSwipeTouchListener$Direction4);
                } else {
                    onBeforeMove(onSwipeTouchListener$Direction3);
                }
            } else if (this.f15973b == 0 && Math.abs(f7) > 100.0f) {
                this.f15973b = 2;
                this.f15976j = motionEvent.getX();
                this.f15977m = motionEvent.getY();
                if (f7 > 0.0f) {
                    onBeforeMove(onSwipeTouchListener$Direction2);
                } else {
                    onBeforeMove(onSwipeTouchListener$Direction);
                }
            }
            int i7 = this.f15973b;
            if (i7 == 1) {
                if (x6 > 0.0f) {
                    onMove(onSwipeTouchListener$Direction4, x6);
                    return true;
                }
                onMove(onSwipeTouchListener$Direction3, -x6);
                return true;
            }
            if (i7 == 2) {
                if (f7 > 0.0f) {
                    onMove(onSwipeTouchListener$Direction2, f7);
                    return true;
                }
                onMove(onSwipeTouchListener$Direction, -f7);
            }
        }
        return true;
    }
}
