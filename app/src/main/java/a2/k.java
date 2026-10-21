package a2;

import android.graphics.PointF;
import f2.AbstractC0923d;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class k {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f4688a;

    /* renamed from: b, reason: collision with root package name */
    public PointF f4689b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f4690c;

    public k(PointF pointF, boolean z6, List<Y1.a> list) {
        this.f4689b = pointF;
        this.f4690c = z6;
        this.f4688a = new ArrayList(list);
    }

    public List<Y1.a> getCurves() {
        return this.f4688a;
    }

    public PointF getInitialPoint() {
        return this.f4689b;
    }

    public void interpolateBetween(k kVar, k kVar2, float f3) {
        if (this.f4689b == null) {
            this.f4689b = new PointF();
        }
        this.f4690c = kVar.isClosed() || kVar2.isClosed();
        if (kVar.getCurves().size() != kVar2.getCurves().size()) {
            AbstractC0923d.warning("Curves must have the same number of control points. Shape 1: " + kVar.getCurves().size() + "\tShape 2: " + kVar2.getCurves().size());
        }
        int min = Math.min(kVar.getCurves().size(), kVar2.getCurves().size());
        ArrayList arrayList = this.f4688a;
        if (arrayList.size() < min) {
            for (int size = arrayList.size(); size < min; size++) {
                arrayList.add(new Y1.a());
            }
        } else if (arrayList.size() > min) {
            for (int size2 = arrayList.size() - 1; size2 >= min; size2--) {
                arrayList.remove(arrayList.size() - 1);
            }
        }
        PointF initialPoint = kVar.getInitialPoint();
        PointF initialPoint2 = kVar2.getInitialPoint();
        float lerp = f2.g.lerp(initialPoint.x, initialPoint2.x, f3);
        float lerp2 = f2.g.lerp(initialPoint.y, initialPoint2.y, f3);
        if (this.f4689b == null) {
            this.f4689b = new PointF();
        }
        this.f4689b.set(lerp, lerp2);
        for (int size3 = arrayList.size() - 1; size3 >= 0; size3--) {
            Y1.a aVar = kVar.getCurves().get(size3);
            Y1.a aVar2 = kVar2.getCurves().get(size3);
            PointF controlPoint1 = aVar.getControlPoint1();
            PointF controlPoint2 = aVar.getControlPoint2();
            PointF vertex = aVar.getVertex();
            PointF controlPoint12 = aVar2.getControlPoint1();
            PointF controlPoint22 = aVar2.getControlPoint2();
            PointF vertex2 = aVar2.getVertex();
            ((Y1.a) arrayList.get(size3)).setControlPoint1(f2.g.lerp(controlPoint1.x, controlPoint12.x, f3), f2.g.lerp(controlPoint1.y, controlPoint12.y, f3));
            ((Y1.a) arrayList.get(size3)).setControlPoint2(f2.g.lerp(controlPoint2.x, controlPoint22.x, f3), f2.g.lerp(controlPoint2.y, controlPoint22.y, f3));
            ((Y1.a) arrayList.get(size3)).setVertex(f2.g.lerp(vertex.x, vertex2.x, f3), f2.g.lerp(vertex.y, vertex2.y, f3));
        }
    }

    public boolean isClosed() {
        return this.f4690c;
    }

    public String toString() {
        return "ShapeData{numCurves=" + this.f4688a.size() + "closed=" + this.f4690c + '}';
    }

    public k() {
        this.f4688a = new ArrayList();
    }
}
