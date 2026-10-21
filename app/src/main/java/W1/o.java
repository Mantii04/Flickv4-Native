package W1;

import android.graphics.PointF;
import g2.C0947a;
import g2.C0949c;
import java.util.List;

/* loaded from: classes.dex */
public final class o extends k {

    /* renamed from: i, reason: collision with root package name */
    public final PointF f4139i;

    public o(List<C0947a> list) {
        super(list);
        this.f4139i = new PointF();
    }

    @Override // W1.f
    public PointF getValue(C0947a c0947a, float f3) {
        Object obj;
        float f7;
        Object obj2 = c0947a.f16441b;
        if (obj2 == null || (obj = c0947a.f16442c) == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        PointF pointF = (PointF) obj2;
        PointF pointF2 = (PointF) obj;
        C0949c c0949c = this.f4125e;
        if (c0949c != null) {
            f7 = f3;
            PointF pointF3 = (PointF) c0949c.getValueInternal(c0947a.f16444e, c0947a.f16445f.floatValue(), pointF, pointF2, f7, b(), getProgress());
            if (pointF3 != null) {
                return pointF3;
            }
        } else {
            f7 = f3;
        }
        PointF pointF4 = this.f4139i;
        float f8 = pointF.x;
        float a7 = b.c.a(pointF2.x, f8, f7, f8);
        float f9 = pointF.y;
        pointF4.set(a7, b.c.a(pointF2.y, f9, f7, f9));
        return pointF4;
    }
}
