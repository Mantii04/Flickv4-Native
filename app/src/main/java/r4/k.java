package r4;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.PointF;
import com.tuyenmonkey.mkloader.exception.InvalidNumberOfPulseException;
import q4.C1526d;

/* loaded from: classes2.dex */
public final class k extends g {

    /* renamed from: f, reason: collision with root package name */
    public final C1526d[] f19847f;

    /* renamed from: g, reason: collision with root package name */
    public final int f19848g;

    /* renamed from: h, reason: collision with root package name */
    public float f19849h;

    /* renamed from: i, reason: collision with root package name */
    public float f19850i;

    /* renamed from: j, reason: collision with root package name */
    public final float[] f19851j;

    public k(int i2) throws InvalidNumberOfPulseException {
        if (i2 < 3 || i2 > 5) {
            throw new InvalidNumberOfPulseException();
        }
        this.f19848g = i2;
        this.f19847f = new C1526d[i2];
        this.f19851j = new float[i2];
    }

    @Override // r4.g
    public void draw(Canvas canvas) {
        for (int i2 = 0; i2 < this.f19848g; i2++) {
            canvas.save();
            canvas.translate((this.f19849h + this.f19850i) * i2, 0.0f);
            float f3 = this.f19851j[i2];
            C1526d[] c1526dArr = this.f19847f;
            canvas.scale(1.0f, f3, c1526dArr[i2].getPoint1().x, this.f19839d.y);
            c1526dArr[i2].draw(canvas);
            canvas.restore();
        }
    }

    @Override // r4.g
    public void initializeObjects() {
        int i2 = this.f19837b;
        int i7 = this.f19848g;
        float f3 = i2 / (i7 * 2);
        this.f19849h = f3;
        float f7 = f3 / 4.0f;
        this.f19850i = f7;
        float f8 = (f3 / 2.0f) + ((i2 - ((f7 * (i7 - 1)) + (i7 * f3))) / 2.0f);
        for (int i8 = 0; i8 < i7; i8++) {
            C1526d c1526d = new C1526d();
            C1526d[] c1526dArr = this.f19847f;
            c1526dArr[i8] = c1526d;
            c1526dArr[i8].setColor(this.f19836a);
            c1526dArr[i8].setWidth(this.f19849h);
            c1526dArr[i8].setPoint1(new PointF(f8, this.f19839d.y - (this.f19838c / 4.0f)));
            c1526dArr[i8].setPoint2(new PointF(f8, (this.f19838c / 4.0f) + this.f19839d.y));
        }
    }

    @Override // r4.g
    public void setUpAnimation() {
        for (int i2 = 0; i2 < this.f19848g; i2++) {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 1.5f, 1.0f);
            ofFloat.setDuration(1000L);
            ofFloat.setStartDelay(i2 * 120);
            ofFloat.setRepeatCount(-1);
            ofFloat.addUpdateListener(new j(this, i2));
            ofFloat.start();
        }
    }
}
