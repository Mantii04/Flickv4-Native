package r4;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.PointF;
import okhttp3.internal.ws.WebSocketProtocol;
import q4.C1524b;

/* renamed from: r4.b, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1597b extends g {

    /* renamed from: f, reason: collision with root package name */
    public C1524b[] f19825f;

    /* renamed from: g, reason: collision with root package name */
    public final int f19826g = 8;

    @Override // r4.g
    public void draw(Canvas canvas) {
        for (int i2 = 0; i2 < this.f19826g; i2++) {
            canvas.save();
            PointF pointF = this.f19839d;
            canvas.rotate(i2 * 45, pointF.x, pointF.y);
            this.f19825f[i2].draw(canvas);
            canvas.restore();
        }
    }

    @Override // r4.g
    public void initializeObjects() {
        float min = Math.min(this.f19837b, this.f19838c) / 10.0f;
        int i2 = this.f19826g;
        this.f19825f = new C1524b[i2];
        for (int i7 = 0; i7 < i2; i7++) {
            this.f19825f[i7] = new C1524b();
            this.f19825f[i7].setCenter(this.f19839d.x, min);
            this.f19825f[i7].setColor(this.f19836a);
            this.f19825f[i7].setAlpha(WebSocketProtocol.PAYLOAD_SHORT);
            this.f19825f[i7].setRadius(min);
        }
    }

    @Override // r4.g
    public void setUpAnimation() {
        for (int i2 = 0; i2 < this.f19826g; i2++) {
            ValueAnimator ofInt = ValueAnimator.ofInt(WebSocketProtocol.PAYLOAD_SHORT, 255, WebSocketProtocol.PAYLOAD_SHORT);
            ofInt.setRepeatCount(-1);
            ofInt.setDuration(1000L);
            ofInt.setStartDelay(i2 * 120);
            ofInt.addUpdateListener(new C1596a(this, i2));
            ofInt.start();
        }
    }
}
