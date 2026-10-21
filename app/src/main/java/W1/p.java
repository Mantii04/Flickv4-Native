package W1;

import g2.C0947a;
import g2.C0949c;
import g2.C0950d;
import java.util.List;

/* loaded from: classes.dex */
public final class p extends k {

    /* renamed from: i, reason: collision with root package name */
    public final C0950d f4140i;

    public p(List<C0947a> list) {
        super(list);
        this.f4140i = new C0950d();
    }

    @Override // W1.f
    public C0950d getValue(C0947a c0947a, float f3) {
        Object obj;
        float f7;
        Object obj2 = c0947a.f16441b;
        if (obj2 == null || (obj = c0947a.f16442c) == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        C0950d c0950d = (C0950d) obj2;
        C0950d c0950d2 = (C0950d) obj;
        C0949c c0949c = this.f4125e;
        if (c0949c != null) {
            f7 = f3;
            C0950d c0950d3 = (C0950d) c0949c.getValueInternal(c0947a.f16444e, c0947a.f16445f.floatValue(), c0950d, c0950d2, f7, b(), getProgress());
            if (c0950d3 != null) {
                return c0950d3;
            }
        } else {
            f7 = f3;
        }
        float lerp = f2.g.lerp(c0950d.getScaleX(), c0950d2.getScaleX(), f7);
        float lerp2 = f2.g.lerp(c0950d.getScaleY(), c0950d2.getScaleY(), f7);
        C0950d c0950d4 = this.f4140i;
        c0950d4.set(lerp, lerp2);
        return c0950d4;
    }
}
