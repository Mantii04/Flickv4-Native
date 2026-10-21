package r4;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.PointF;
import q4.C1524b;

/* renamed from: r4.d, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1599d extends g {

    /* renamed from: f, reason: collision with root package name */
    public C1524b[] f19829f;

    /* renamed from: g, reason: collision with root package name */
    public final int f19830g = 5;

    /* renamed from: h, reason: collision with root package name */
    public final float[] f19831h = new float[5];

    @Override // r4.g
    public void draw(Canvas canvas) {
        for (int i2 = 0; i2 < this.f19830g; i2++) {
            canvas.save();
            float f3 = this.f19831h[i2];
            PointF pointF = this.f19839d;
            canvas.rotate(f3, pointF.x, pointF.y);
            this.f19829f[i2].draw(canvas);
            canvas.restore();
        }
    }

    @Override // r4.g
    public void initializeObjects() {
        float min = Math.min(this.f19837b, this.f19838c) / 10.0f;
        int i2 = this.f19830g;
        this.f19829f = new C1524b[i2];
        for (int i7 = 0; i7 < i2; i7++) {
            this.f19829f[i7] = new C1524b();
            this.f19829f[i7].setCenter(this.f19839d.x, min);
            this.f19829f[i7].setColor(this.f19836a);
            this.f19829f[i7].setRadius(min - ((i7 * min) / 6.0f));
        }
    }

    @Override // r4.g
    public void setUpAnimation() {
        for (int i2 = 0; i2 < this.f19830g; i2++) {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 360.0f);
            ofFloat.setRepeatCount(-1);
            ofFloat.setDuration(1700L);
            ofFloat.setStartDelay(i2 * 100);
            ofFloat.addUpdateListener(new C1598c(this, i2));
            ofFloat.start();
        }
    }
}
