package q4;

import android.graphics.Canvas;
import android.graphics.PointF;

/* renamed from: q4.b, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1524b extends AbstractC1525c {

    /* renamed from: b, reason: collision with root package name */
    public final PointF f19649b = new PointF();

    /* renamed from: c, reason: collision with root package name */
    public float f19650c;

    public void draw(Canvas canvas) {
        PointF pointF = this.f19649b;
        canvas.drawCircle(pointF.x, pointF.y, this.f19650c, this.f19651a);
    }

    public void setCenter(float f3, float f7) {
        this.f19649b.set(f3, f7);
    }

    public void setRadius(float f3) {
        this.f19650c = f3;
    }
}
