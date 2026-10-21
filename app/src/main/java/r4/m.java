package r4;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.PointF;
import q4.C1526d;

/* loaded from: classes2.dex */
public final class m extends g {

    /* renamed from: f, reason: collision with root package name */
    public C1526d f19853f;

    /* renamed from: g, reason: collision with root package name */
    public float f19854g;

    @Override // r4.g
    public void draw(Canvas canvas) {
        canvas.save();
        float f3 = this.f19854g;
        PointF pointF = this.f19839d;
        canvas.rotate(f3, pointF.x, pointF.y);
        this.f19853f.draw(canvas);
        canvas.restore();
    }

    @Override // r4.g
    public void initializeObjects() {
        float min = Math.min(this.f19837b, this.f19838c);
        C1526d c1526d = new C1526d();
        this.f19853f = c1526d;
        c1526d.setPoint1(this.f19839d);
        this.f19853f.setPoint2(new PointF(0.0f, min / 2.0f));
        this.f19853f.setColor(this.f19836a);
        this.f19853f.setWidth(5.0f);
    }

    @Override // r4.g
    public void setUpAnimation() {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 359.0f);
        ofFloat.setDuration(1000L);
        ofFloat.setRepeatCount(-1);
        ofFloat.addUpdateListener(new l(this));
        ofFloat.start();
    }
}
