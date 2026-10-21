package W1;

import T1.C0330i;
import android.graphics.Path;
import android.graphics.PointF;
import g2.C0947a;

/* loaded from: classes.dex */
public final class m extends C0947a {

    /* renamed from: o, reason: collision with root package name */
    public Path f4133o;

    /* renamed from: p, reason: collision with root package name */
    public final C0947a f4134p;

    public m(C0330i c0330i, C0947a c0947a) {
        super(c0330i, c0947a.f16441b, c0947a.f16442c, c0947a.f16443d, c0947a.f16444e, c0947a.f16445f);
        this.f4134p = c0947a;
        createPath();
    }

    public void createPath() {
        Object obj = this.f16442c;
        Object obj2 = this.f16441b;
        boolean z6 = (obj == null || obj2 == null || !((PointF) obj2).equals(((PointF) obj).x, ((PointF) obj).y)) ? false : true;
        Object obj3 = this.f16442c;
        if (obj3 == null || z6) {
            return;
        }
        C0947a c0947a = this.f4134p;
        this.f4133o = f2.h.createPath((PointF) obj2, (PointF) obj3, c0947a.f16452m, c0947a.f16453n);
    }
}
