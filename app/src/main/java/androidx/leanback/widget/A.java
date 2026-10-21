package androidx.leanback.widget;

import android.animation.TimeAnimator;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import i0.C1002a;

/* loaded from: classes.dex */
public final class A implements TimeAnimator.TimeListener {

    /* renamed from: a, reason: collision with root package name */
    public final View f6450a;

    /* renamed from: b, reason: collision with root package name */
    public final int f6451b;

    /* renamed from: c, reason: collision with root package name */
    public final j1 f6452c;

    /* renamed from: d, reason: collision with root package name */
    public final float f6453d;

    /* renamed from: e, reason: collision with root package name */
    public float f6454e = 0.0f;

    /* renamed from: f, reason: collision with root package name */
    public float f6455f;

    /* renamed from: g, reason: collision with root package name */
    public float f6456g;

    /* renamed from: h, reason: collision with root package name */
    public final TimeAnimator f6457h;

    /* renamed from: i, reason: collision with root package name */
    public final AccelerateDecelerateInterpolator f6458i;

    /* renamed from: j, reason: collision with root package name */
    public final C1002a f6459j;

    public A(View view, float f3, boolean z6) {
        TimeAnimator timeAnimator = new TimeAnimator();
        this.f6457h = timeAnimator;
        this.f6458i = new AccelerateDecelerateInterpolator();
        this.f6450a = view;
        this.f6451b = 150;
        this.f6453d = f3 - 1.0f;
        if (view instanceof j1) {
            this.f6452c = (j1) view;
        } else {
            this.f6452c = null;
        }
        timeAnimator.setTimeListener(this);
        if (z6) {
            this.f6459j = C1002a.createDefault(view.getContext());
        } else {
            this.f6459j = null;
        }
    }

    public final void a(boolean z6, boolean z7) {
        TimeAnimator timeAnimator = this.f6457h;
        timeAnimator.end();
        float f3 = z6 ? 1.0f : 0.0f;
        if (z7) {
            b(f3);
            return;
        }
        float f7 = this.f6454e;
        if (f7 != f3) {
            this.f6455f = f7;
            this.f6456g = f3 - f7;
            timeAnimator.start();
        }
    }

    public final void b(float f3) {
        this.f6454e = f3;
        float f7 = (this.f6453d * f3) + 1.0f;
        View view = this.f6450a;
        view.setScaleX(f7);
        view.setScaleY(f7);
        j1 j1Var = this.f6452c;
        if (j1Var != null) {
            j1Var.setShadowFocusLevel(f3);
        } else {
            m1.setNoneWrapperShadowFocusLevel(view, f3);
        }
        C1002a c1002a = this.f6459j;
        if (c1002a != null) {
            c1002a.setActiveLevel(f3);
            int color = c1002a.getPaint().getColor();
            if (j1Var != null) {
                j1Var.setOverlayColor(color);
            } else {
                m1.setNoneWrapperOverlayColor(view, color);
            }
        }
    }

    @Override // android.animation.TimeAnimator.TimeListener
    public void onTimeUpdate(TimeAnimator timeAnimator, long j7, long j8) {
        float f3;
        int i2 = this.f6451b;
        if (j7 >= i2) {
            this.f6457h.end();
            f3 = 1.0f;
        } else {
            f3 = (float) (j7 / i2);
        }
        AccelerateDecelerateInterpolator accelerateDecelerateInterpolator = this.f6458i;
        if (accelerateDecelerateInterpolator != null) {
            f3 = accelerateDecelerateInterpolator.getInterpolation(f3);
        }
        b((f3 * this.f6456g) + this.f6455f);
    }
}
