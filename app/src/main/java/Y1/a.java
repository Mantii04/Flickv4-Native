package Y1;

import android.graphics.PointF;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final PointF f4336a;

    /* renamed from: b, reason: collision with root package name */
    public final PointF f4337b;

    /* renamed from: c, reason: collision with root package name */
    public final PointF f4338c;

    public a() {
        this.f4336a = new PointF();
        this.f4337b = new PointF();
        this.f4338c = new PointF();
    }

    public PointF getControlPoint1() {
        return this.f4336a;
    }

    public PointF getControlPoint2() {
        return this.f4337b;
    }

    public PointF getVertex() {
        return this.f4338c;
    }

    public void setControlPoint1(float f3, float f7) {
        this.f4336a.set(f3, f7);
    }

    public void setControlPoint2(float f3, float f7) {
        this.f4337b.set(f3, f7);
    }

    public void setVertex(float f3, float f7) {
        this.f4338c.set(f3, f7);
    }

    public a(PointF pointF, PointF pointF2, PointF pointF3) {
        this.f4336a = pointF;
        this.f4337b = pointF2;
        this.f4338c = pointF3;
    }
}
