package x1;

import android.graphics.PointF;
import android.util.Property;

/* renamed from: x1.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1800b extends Property {
    @Override // android.util.Property
    public PointF get(C1807i c1807i) {
        return null;
    }

    @Override // android.util.Property
    public void set(C1807i c1807i, PointF pointF) {
        c1807i.getClass();
        c1807i.f20809a = Math.round(pointF.x);
        int round = Math.round(pointF.y);
        c1807i.f20810b = round;
        int i2 = c1807i.f20814f + 1;
        c1807i.f20814f = i2;
        if (i2 == c1807i.f20815g) {
            M.a(c1807i.f20813e, c1807i.f20809a, round, c1807i.f20811c, c1807i.f20812d);
            c1807i.f20814f = 0;
            c1807i.f20815g = 0;
        }
    }
}
