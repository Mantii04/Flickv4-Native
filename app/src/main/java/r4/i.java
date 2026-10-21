package r4;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.RectF;
import okhttp3.internal.ws.WebSocketProtocol;
import q4.C1523a;

/* loaded from: classes2.dex */
public final class i extends g {

    /* renamed from: f, reason: collision with root package name */
    public C1523a[] f19843f;

    /* renamed from: g, reason: collision with root package name */
    public final int f19844g = 3;

    @Override // r4.g
    public void draw(Canvas canvas) {
        for (int i2 = 0; i2 < this.f19844g; i2++) {
            this.f19843f[i2].draw(canvas);
        }
    }

    @Override // r4.g
    public void initializeObjects() {
        float min = Math.min(this.f19837b, this.f19838c) / 2.0f;
        int i2 = this.f19844g;
        this.f19843f = new C1523a[i2];
        for (int i7 = 0; i7 < i2; i7++) {
            float f3 = ((i7 * min) / 4.0f) + (min / 4.0f);
            this.f19843f[i7] = new C1523a();
            this.f19843f[i7].setColor(this.f19836a);
            this.f19843f[i7].setAlpha(WebSocketProtocol.PAYLOAD_SHORT);
            C1523a c1523a = this.f19843f[i7];
            PointF pointF = this.f19839d;
            float f7 = pointF.x;
            float f8 = pointF.y;
            float f9 = min / 3.0f;
            c1523a.setOval(new RectF(f7 - f3, (f8 - f3) + f9, f7 + f3, f8 + f3 + f9));
            this.f19843f[i7].setStartAngle(225.0f);
            this.f19843f[i7].setSweepAngle(90.0f);
            this.f19843f[i7].setStyle(Paint.Style.STROKE);
            this.f19843f[i7].setWidth(min / 10.0f);
        }
    }

    @Override // r4.g
    public void setUpAnimation() {
        for (int i2 = 0; i2 < this.f19844g; i2++) {
            ValueAnimator ofInt = ValueAnimator.ofInt(WebSocketProtocol.PAYLOAD_SHORT, 255, WebSocketProtocol.PAYLOAD_SHORT);
            ofInt.setRepeatCount(-1);
            ofInt.setDuration(1000L);
            ofInt.setStartDelay(i2 * 120);
            ofInt.addUpdateListener(new h(this, i2));
            ofInt.start();
        }
    }
}
