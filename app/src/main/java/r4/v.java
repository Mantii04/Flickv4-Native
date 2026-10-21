package r4;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.PointF;
import q4.C1524b;

/* loaded from: classes2.dex */
public final class v extends g {

    /* renamed from: f, reason: collision with root package name */
    public C1524b[] f19876f;

    /* renamed from: h, reason: collision with root package name */
    public float f19878h;

    /* renamed from: g, reason: collision with root package name */
    public final int f19877g = 5;

    /* renamed from: i, reason: collision with root package name */
    public final int[] f19879i = {-2, -1, 0, 1, 2};

    @Override // r4.g
    public void draw(Canvas canvas) {
        for (int i2 = 0; i2 < this.f19877g; i2++) {
            canvas.save();
            canvas.translate(this.f19878h * 2.0f * this.f19879i[i2], 0.0f);
            this.f19876f[i2].draw(canvas);
            canvas.restore();
        }
    }

    @Override // r4.g
    public void initializeObjects() {
        int i2 = this.f19877g;
        this.f19876f = new C1524b[i2];
        float f3 = this.f19837b;
        this.f19878h = (f3 / 10.0f) - (f3 / 100.0f);
        for (int i7 = 0; i7 < i2; i7++) {
            this.f19876f[i7] = new C1524b();
            this.f19876f[i7].setColor(this.f19836a);
            this.f19876f[i7].setRadius(this.f19878h);
            C1524b c1524b = this.f19876f[i7];
            PointF pointF = this.f19839d;
            c1524b.setCenter(pointF.x, pointF.y);
        }
    }

    @Override // r4.g
    public void setUpAnimation() {
        for (int i2 = 0; i2 < this.f19877g; i2++) {
            float f3 = this.f19839d.y;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(f3, this.f19838c / 4.0f, (r5 * 3) / 4.0f, f3);
            ofFloat.setDuration(1000L);
            ofFloat.setStartDelay(i2 * 120);
            ofFloat.setRepeatCount(-1);
            ofFloat.addUpdateListener(new u(this, i2));
            ofFloat.start();
        }
    }
}
