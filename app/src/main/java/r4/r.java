package r4;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.PointF;
import q4.C1524b;

/* loaded from: classes2.dex */
public final class r extends g {

    /* renamed from: f, reason: collision with root package name */
    public C1524b[] f19866f;

    /* renamed from: g, reason: collision with root package name */
    public final int f19867g = 10;

    /* renamed from: h, reason: collision with root package name */
    public final float[] f19868h = new float[10];

    @Override // r4.g
    public void draw(Canvas canvas) {
        for (int i2 = 0; i2 < this.f19867g; i2++) {
            canvas.save();
            float f3 = this.f19868h[i2];
            PointF pointF = this.f19839d;
            canvas.rotate(f3, pointF.x, pointF.y);
            this.f19866f[i2].draw(canvas);
            canvas.restore();
        }
    }

    @Override // r4.g
    public void initializeObjects() {
        int i2;
        float min = Math.min(this.f19837b, this.f19838c);
        float f3 = min / 10.0f;
        int i7 = this.f19867g;
        this.f19866f = new C1524b[i7];
        int i8 = 0;
        while (true) {
            i2 = i7 / 2;
            if (i8 >= i2) {
                break;
            }
            this.f19866f[i8] = new C1524b();
            this.f19866f[i8].setCenter(this.f19839d.x, f3);
            this.f19866f[i8].setColor(this.f19836a);
            this.f19866f[i8].setRadius(f3 - ((i8 * f3) / 6.0f));
            i8++;
        }
        while (i2 < i7) {
            this.f19866f[i2] = new C1524b();
            this.f19866f[i2].setCenter(this.f19839d.x, min - f3);
            this.f19866f[i2].setColor(this.f19836a);
            this.f19866f[i2].setRadius(f3 - (((i2 - 5) * f3) / 6.0f));
            i2++;
        }
    }

    @Override // r4.g
    public void setUpAnimation() {
        int i2 = 0;
        while (i2 < this.f19867g) {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 360.0f);
            ofFloat.setRepeatCount(-1);
            ofFloat.setDuration(1700L);
            ofFloat.setStartDelay((i2 >= 5 ? i2 - 5 : i2) * 100);
            ofFloat.addUpdateListener(new q(this, i2));
            ofFloat.start();
            i2++;
        }
    }
}
