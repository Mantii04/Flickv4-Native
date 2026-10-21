package r4;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.PointF;
import okhttp3.internal.ws.WebSocketProtocol;
import q4.C1526d;

/* loaded from: classes2.dex */
public final class f extends g {

    /* renamed from: f, reason: collision with root package name */
    public C1526d[] f19834f;

    /* renamed from: g, reason: collision with root package name */
    public final int f19835g = 8;

    @Override // r4.g
    public void draw(Canvas canvas) {
        for (int i2 = 0; i2 < this.f19835g; i2++) {
            canvas.save();
            PointF pointF = this.f19839d;
            canvas.rotate(i2 * 45, pointF.x, pointF.y);
            this.f19834f[i2].draw(canvas);
            canvas.restore();
        }
    }

    @Override // r4.g
    public void initializeObjects() {
        float min = Math.min(this.f19837b, this.f19838c);
        float f3 = min / 10.0f;
        int i2 = this.f19835g;
        this.f19834f = new C1526d[i2];
        for (int i7 = 0; i7 < i2; i7++) {
            this.f19834f[i7] = new C1526d();
            this.f19834f[i7].setColor(this.f19836a);
            this.f19834f[i7].setAlpha(WebSocketProtocol.PAYLOAD_SHORT);
            this.f19834f[i7].setWidth(f3);
            C1526d c1526d = this.f19834f[i7];
            PointF pointF = this.f19839d;
            c1526d.setPoint1(new PointF(pointF.x, (pointF.y - (min / 2.0f)) + f3));
            this.f19834f[i7].setPoint2(new PointF(this.f19839d.x, (2.0f * f3) + this.f19834f[i7].getPoint1().y));
        }
    }

    @Override // r4.g
    public void setUpAnimation() {
        for (int i2 = 0; i2 < this.f19835g; i2++) {
            ValueAnimator ofInt = ValueAnimator.ofInt(WebSocketProtocol.PAYLOAD_SHORT, 255, WebSocketProtocol.PAYLOAD_SHORT);
            ofInt.setRepeatCount(-1);
            ofInt.setDuration(1000L);
            ofInt.setStartDelay(i2 * 120);
            ofInt.addUpdateListener(new C1600e(this, i2));
            ofInt.start();
        }
    }
}
