package androidx.mediarouter.app;

import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.view.animation.Interpolator;

/* loaded from: classes.dex */
public final class q0 {

    /* renamed from: a, reason: collision with root package name */
    public final BitmapDrawable f7888a;

    /* renamed from: c, reason: collision with root package name */
    public final Rect f7890c;

    /* renamed from: d, reason: collision with root package name */
    public Interpolator f7891d;

    /* renamed from: e, reason: collision with root package name */
    public long f7892e;

    /* renamed from: f, reason: collision with root package name */
    public final Rect f7893f;

    /* renamed from: g, reason: collision with root package name */
    public int f7894g;

    /* renamed from: j, reason: collision with root package name */
    public long f7897j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f7898k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f7899l;

    /* renamed from: m, reason: collision with root package name */
    public p0 f7900m;

    /* renamed from: b, reason: collision with root package name */
    public float f7889b = 1.0f;

    /* renamed from: h, reason: collision with root package name */
    public float f7895h = 1.0f;

    /* renamed from: i, reason: collision with root package name */
    public float f7896i = 1.0f;

    public q0(BitmapDrawable bitmapDrawable, Rect rect) {
        this.f7888a = bitmapDrawable;
        this.f7893f = rect;
        Rect rect2 = new Rect(rect);
        this.f7890c = rect2;
        if (bitmapDrawable != null) {
            bitmapDrawable.setAlpha((int) (this.f7889b * 255.0f));
            bitmapDrawable.setBounds(rect2);
        }
    }

    public BitmapDrawable getBitmapDrawable() {
        return this.f7888a;
    }

    public boolean isAnimationStarted() {
        return this.f7898k;
    }

    public q0 setAlphaAnimation(float f3, float f7) {
        this.f7895h = f3;
        this.f7896i = f7;
        return this;
    }

    public q0 setAnimationEndListener(p0 p0Var) {
        this.f7900m = p0Var;
        return this;
    }

    public q0 setDuration(long j7) {
        this.f7892e = j7;
        return this;
    }

    public q0 setInterpolator(Interpolator interpolator) {
        this.f7891d = interpolator;
        return this;
    }

    public q0 setTranslateYAnimation(int i2) {
        this.f7894g = i2;
        return this;
    }

    public void startAnimation(long j7) {
        this.f7897j = j7;
        this.f7898k = true;
    }

    public void stopAnimation() {
        this.f7898k = true;
        this.f7899l = true;
        p0 p0Var = this.f7900m;
        if (p0Var != null) {
            ((C0607k) p0Var).onAnimationEnd();
        }
    }

    public boolean update(long j7) {
        if (this.f7899l) {
            return false;
        }
        float max = this.f7898k ? Math.max(0.0f, Math.min(1.0f, (j7 - this.f7897j) / this.f7892e)) : 0.0f;
        Interpolator interpolator = this.f7891d;
        float interpolation = interpolator == null ? max : interpolator.getInterpolation(max);
        int i2 = (int) (this.f7894g * interpolation);
        Rect rect = this.f7893f;
        int i7 = rect.top + i2;
        Rect rect2 = this.f7890c;
        rect2.top = i7;
        rect2.bottom = rect.bottom + i2;
        float f3 = this.f7895h;
        float a7 = b.c.a(this.f7896i, f3, interpolation, f3);
        this.f7889b = a7;
        BitmapDrawable bitmapDrawable = this.f7888a;
        if (bitmapDrawable != null) {
            bitmapDrawable.setAlpha((int) (a7 * 255.0f));
            bitmapDrawable.setBounds(rect2);
        }
        if (this.f7898k && max >= 1.0f) {
            this.f7899l = true;
            p0 p0Var = this.f7900m;
            if (p0Var != null) {
                ((C0607k) p0Var).onAnimationEnd();
            }
        }
        return !this.f7899l;
    }
}
