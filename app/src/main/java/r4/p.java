package r4;

import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;
import q4.C1524b;

/* loaded from: classes2.dex */
public final class p extends g {

    /* renamed from: f, reason: collision with root package name */
    public C1524b f19857f;

    /* renamed from: g, reason: collision with root package name */
    public C1524b f19858g;

    /* renamed from: h, reason: collision with root package name */
    public C1524b[] f19859h;

    /* renamed from: i, reason: collision with root package name */
    public final int f19860i = 3;

    /* renamed from: j, reason: collision with root package name */
    public float f19861j;

    /* renamed from: k, reason: collision with root package name */
    public float f19862k;

    /* renamed from: l, reason: collision with root package name */
    public float f19863l;

    @Override // r4.g
    public void draw(Canvas canvas) {
        canvas.save();
        float f3 = this.f19862k;
        PointF pointF = this.f19839d;
        canvas.scale(f3, f3, pointF.x, pointF.y);
        float f7 = this.f19861j;
        PointF pointF2 = this.f19839d;
        canvas.rotate(f7, pointF2.x, pointF2.y);
        this.f19857f.draw(canvas);
        this.f19858g.draw(canvas);
        for (int i2 = 0; i2 < this.f19860i; i2++) {
            canvas.save();
            PointF pointF3 = this.f19839d;
            canvas.rotate(i2 * 120, pointF3.x, pointF3.y);
            this.f19859h[i2].draw(canvas);
            canvas.restore();
        }
        canvas.restore();
    }

    @Override // r4.g
    public void initializeObjects() {
        float min = Math.min(this.f19837b, this.f19838c) / 2.0f;
        this.f19863l = min / 1.5f;
        C1524b c1524b = new C1524b();
        this.f19857f = c1524b;
        PointF pointF = this.f19839d;
        c1524b.setCenter(pointF.x, pointF.y);
        this.f19857f.setColor(this.f19836a);
        this.f19857f.setRadius(min / 4.0f);
        C1524b c1524b2 = new C1524b();
        this.f19858g = c1524b2;
        PointF pointF2 = this.f19839d;
        c1524b2.setCenter(pointF2.x, pointF2.y);
        this.f19858g.setColor(this.f19836a);
        this.f19858g.setRadius(this.f19863l);
        this.f19858g.setStyle(Paint.Style.STROKE);
        this.f19858g.setWidth(min / 20.0f);
        int i2 = this.f19860i;
        this.f19859h = new C1524b[i2];
        for (int i7 = 0; i7 < i2; i7++) {
            this.f19859h[i7] = new C1524b();
            C1524b c1524b3 = this.f19859h[i7];
            PointF pointF3 = this.f19839d;
            c1524b3.setCenter(pointF3.x, pointF3.y - this.f19863l);
            this.f19859h[i7].setColor(this.f19836a);
            this.f19859h[i7].setRadius(min / 6.0f);
        }
    }

    @Override // r4.g
    public void setUpAnimation() {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 360.0f);
        ofFloat.setDuration(1500L);
        ofFloat.setRepeatCount(-1);
        ofFloat.addUpdateListener(new n(this));
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(1.0f, 0.8f, 1.0f);
        ofFloat2.setDuration(1000L);
        ofFloat2.setRepeatCount(-1);
        ofFloat2.addUpdateListener(new o(this));
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(ofFloat).with(ofFloat2);
        animatorSet.start();
    }
}
