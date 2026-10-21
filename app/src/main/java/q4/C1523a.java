package q4;

import android.graphics.Canvas;
import android.graphics.RectF;

/* renamed from: q4.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1523a extends AbstractC1525c {

    /* renamed from: b, reason: collision with root package name */
    public RectF f19646b;

    /* renamed from: c, reason: collision with root package name */
    public float f19647c;

    /* renamed from: d, reason: collision with root package name */
    public float f19648d;

    public void draw(Canvas canvas) {
        canvas.drawArc(this.f19646b, this.f19647c, this.f19648d, false, this.f19651a);
    }

    public float getStartAngle() {
        return this.f19647c;
    }

    public void setOval(RectF rectF) {
        this.f19646b = rectF;
    }

    public void setStartAngle(float f3) {
        this.f19647c = f3;
    }

    public void setSweepAngle(float f3) {
        this.f19648d = f3;
    }
}
