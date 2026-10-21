package S;

import android.view.animation.AnimationUtils;

/* renamed from: S.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0307a {

    /* renamed from: a, reason: collision with root package name */
    public int f3212a;

    /* renamed from: b, reason: collision with root package name */
    public int f3213b;

    /* renamed from: c, reason: collision with root package name */
    public float f3214c;

    /* renamed from: d, reason: collision with root package name */
    public float f3215d;

    /* renamed from: e, reason: collision with root package name */
    public long f3216e;

    /* renamed from: f, reason: collision with root package name */
    public long f3217f;

    /* renamed from: g, reason: collision with root package name */
    public int f3218g;

    /* renamed from: h, reason: collision with root package name */
    public int f3219h;

    /* renamed from: i, reason: collision with root package name */
    public long f3220i;

    /* renamed from: j, reason: collision with root package name */
    public float f3221j;

    /* renamed from: k, reason: collision with root package name */
    public int f3222k;

    public final float a(long j7) {
        if (j7 < this.f3216e) {
            return 0.0f;
        }
        long j8 = this.f3220i;
        if (j8 < 0 || j7 < j8) {
            return AbstractViewOnTouchListenerC0309c.b((j7 - r0) / this.f3212a, 0.0f, 1.0f) * 0.5f;
        }
        float f3 = this.f3221j;
        return (AbstractViewOnTouchListenerC0309c.b((j7 - j8) / this.f3222k, 0.0f, 1.0f) * f3) + (1.0f - f3);
    }

    public void computeScrollDelta() {
        if (this.f3217f == 0) {
            throw new RuntimeException("Cannot compute scroll delta before calling start()");
        }
        long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        float a7 = a(currentAnimationTimeMillis);
        long j7 = currentAnimationTimeMillis - this.f3217f;
        this.f3217f = currentAnimationTimeMillis;
        float f3 = j7 * ((a7 * 4.0f) + ((-4.0f) * a7 * a7));
        this.f3218g = (int) (this.f3214c * f3);
        this.f3219h = (int) (f3 * this.f3215d);
    }

    public int getDeltaX() {
        return this.f3218g;
    }

    public int getDeltaY() {
        return this.f3219h;
    }

    public int getHorizontalDirection() {
        float f3 = this.f3214c;
        return (int) (f3 / Math.abs(f3));
    }

    public int getVerticalDirection() {
        float f3 = this.f3215d;
        return (int) (f3 / Math.abs(f3));
    }

    public boolean isFinished() {
        return this.f3220i > 0 && AnimationUtils.currentAnimationTimeMillis() > this.f3220i + ((long) this.f3222k);
    }

    public void requestStop() {
        long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        int i2 = (int) (currentAnimationTimeMillis - this.f3216e);
        int i7 = this.f3213b;
        if (i2 > i7) {
            i2 = i7;
        } else if (i2 < 0) {
            i2 = 0;
        }
        this.f3222k = i2;
        this.f3221j = a(currentAnimationTimeMillis);
        this.f3220i = currentAnimationTimeMillis;
    }

    public void setRampDownDuration(int i2) {
        this.f3213b = i2;
    }

    public void setRampUpDuration(int i2) {
        this.f3212a = i2;
    }

    public void setTargetVelocity(float f3, float f7) {
        this.f3214c = f3;
        this.f3215d = f7;
    }

    public void start() {
        long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        this.f3216e = currentAnimationTimeMillis;
        this.f3220i = -1L;
        this.f3217f = currentAnimationTimeMillis;
        this.f3221j = 0.5f;
        this.f3218g = 0;
        this.f3219h = 0;
    }
}
