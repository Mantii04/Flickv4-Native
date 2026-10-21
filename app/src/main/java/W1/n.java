package W1;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import g2.C0947a;
import g2.C0949c;
import java.util.List;

/* loaded from: classes.dex */
public final class n extends k {

    /* renamed from: i, reason: collision with root package name */
    public final PointF f4135i;

    /* renamed from: j, reason: collision with root package name */
    public final float[] f4136j;

    /* renamed from: k, reason: collision with root package name */
    public m f4137k;

    /* renamed from: l, reason: collision with root package name */
    public final PathMeasure f4138l;

    public n(List<? extends C0947a> list) {
        super(list);
        this.f4135i = new PointF();
        this.f4136j = new float[2];
        this.f4138l = new PathMeasure();
    }

    @Override // W1.f
    public PointF getValue(C0947a c0947a, float f3) {
        float f7;
        m mVar = (m) c0947a;
        Path path = mVar.f4133o;
        if (path == null) {
            return (PointF) c0947a.f16441b;
        }
        C0949c c0949c = this.f4125e;
        if (c0949c != null) {
            f7 = f3;
            PointF pointF = (PointF) c0949c.getValueInternal(mVar.f16444e, mVar.f16445f.floatValue(), mVar.f16441b, mVar.f16442c, b(), f7, getProgress());
            if (pointF != null) {
                return pointF;
            }
        } else {
            f7 = f3;
        }
        m mVar2 = this.f4137k;
        PathMeasure pathMeasure = this.f4138l;
        if (mVar2 != mVar) {
            pathMeasure.setPath(path, false);
            this.f4137k = mVar;
        }
        float length = pathMeasure.getLength() * f7;
        float[] fArr = this.f4136j;
        pathMeasure.getPosTan(length, fArr, null);
        PointF pointF2 = this.f4135i;
        pointF2.set(fArr[0], fArr[1]);
        return pointF2;
    }
}
