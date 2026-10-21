package q4;

import android.graphics.Canvas;
import android.graphics.PointF;

/* renamed from: q4.d, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1526d extends AbstractC1525c {

    /* renamed from: b, reason: collision with root package name */
    public PointF f19652b;

    /* renamed from: c, reason: collision with root package name */
    public PointF f19653c;

    public void draw(Canvas canvas) {
        PointF pointF = this.f19652b;
        float f3 = pointF.x;
        float f7 = pointF.y;
        PointF pointF2 = this.f19653c;
        canvas.drawLine(f3, f7, pointF2.x, pointF2.y, this.f19651a);
    }

    public PointF getPoint1() {
        return this.f19652b;
    }

    public void setPoint1(PointF pointF) {
        this.f19652b = pointF;
    }

    public void setPoint2(PointF pointF) {
        this.f19653c = pointF;
    }
}
