package l;

import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewConfiguration;

/* loaded from: classes.dex */
public final class U1 extends TouchDelegate {

    /* renamed from: a, reason: collision with root package name */
    public final View f17775a;

    /* renamed from: b, reason: collision with root package name */
    public final Rect f17776b;

    /* renamed from: c, reason: collision with root package name */
    public final Rect f17777c;

    /* renamed from: d, reason: collision with root package name */
    public final Rect f17778d;

    /* renamed from: e, reason: collision with root package name */
    public final int f17779e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f17780f;

    public U1(Rect rect, Rect rect2, View view) {
        super(rect, view);
        this.f17779e = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        this.f17776b = new Rect();
        this.f17778d = new Rect();
        this.f17777c = new Rect();
        setBounds(rect, rect2);
        this.f17775a = view;
    }

    @Override // android.view.TouchDelegate
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z6;
        boolean z7;
        int x6 = (int) motionEvent.getX();
        int y6 = (int) motionEvent.getY();
        int action = motionEvent.getAction();
        boolean z8 = true;
        if (action != 0) {
            if (action == 1 || action == 2) {
                z7 = this.f17780f;
                if (z7 && !this.f17778d.contains(x6, y6)) {
                    z8 = z7;
                    z6 = false;
                }
            } else {
                if (action == 3) {
                    z7 = this.f17780f;
                    this.f17780f = false;
                }
                z6 = true;
                z8 = false;
            }
            z8 = z7;
            z6 = true;
        } else {
            if (this.f17776b.contains(x6, y6)) {
                this.f17780f = true;
                z6 = true;
            }
            z6 = true;
            z8 = false;
        }
        if (!z8) {
            return false;
        }
        Rect rect = this.f17777c;
        View view = this.f17775a;
        if (!z6 || rect.contains(x6, y6)) {
            motionEvent.setLocation(x6 - rect.left, y6 - rect.top);
        } else {
            motionEvent.setLocation(view.getWidth() / 2, view.getHeight() / 2);
        }
        return view.dispatchTouchEvent(motionEvent);
    }

    public void setBounds(Rect rect, Rect rect2) {
        this.f17776b.set(rect);
        Rect rect3 = this.f17778d;
        rect3.set(rect);
        int i2 = this.f17779e;
        rect3.inset(-i2, -i2);
        this.f17777c.set(rect2);
    }
}
