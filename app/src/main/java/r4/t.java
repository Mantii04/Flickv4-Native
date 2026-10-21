package r4;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.RectF;
import q4.C1523a;

/* loaded from: classes2.dex */
public final class t extends g {

    /* renamed from: f, reason: collision with root package name */
    public C1523a[] f19871f;

    /* renamed from: g, reason: collision with root package name */
    public final int f19872g = 3;

    /* renamed from: h, reason: collision with root package name */
    public float[] f19873h;

    @Override // r4.g
    public void draw(Canvas canvas) {
        for (int i2 = 0; i2 < this.f19872g; i2++) {
            canvas.save();
            float f3 = this.f19873h[i2];
            PointF pointF = this.f19839d;
            canvas.rotate(f3, pointF.x, pointF.y);
            this.f19871f[i2].draw(canvas);
            canvas.restore();
        }
    }

    @Override // r4.g
    public void initializeObjects() {
        float min = Math.min(this.f19837b, this.f19838c) / 2.0f;
        int i2 = this.f19872g;
        this.f19871f = new C1523a[i2];
        this.f19873h = new float[i2];
        for (int i7 = 0; i7 < i2; i7++) {
            float f3 = ((i7 * min) / 4.0f) + (min / 4.0f);
            this.f19871f[i7] = new C1523a();
            this.f19871f[i7].setColor(this.f19836a);
            C1523a c1523a = this.f19871f[i7];
            PointF pointF = this.f19839d;
            float f7 = pointF.x;
            float f8 = pointF.y;
            c1523a.setOval(new RectF(f7 - f3, f8 - f3, f7 + f3, f8 + f3));
            this.f19871f[i7].setStartAngle(i7 * 45);
            this.f19871f[i7].setSweepAngle(r4 + 90);
            this.f19871f[i7].setStyle(Paint.Style.STROKE);
            this.f19871f[i7].setWidth(min / 10.0f);
        }
    }

    @Override // r4.g
    public void setUpAnimation() {
        for (int i2 = this.f19872g - 1; i2 >= 0; i2--) {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(this.f19871f[i2].getStartAngle(), this.f19871f[i2].getStartAngle() + ((i2 % 2 == 0 ? -1 : 1) * 360));
            ofFloat.setRepeatCount(-1);
            ofFloat.setDuration((i2 + 1) * 500);
            ofFloat.addUpdateListener(new s(this, i2));
            ofFloat.start();
        }
    }
}
