package x1;

import android.graphics.PointF;
import android.util.Property;

/* renamed from: x1.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1801c extends Property {
    @Override // android.util.Property
    public PointF get(C1807i c1807i) {
        return null;
    }

    @Override // android.util.Property
    public void set(C1807i c1807i, PointF pointF) {
        c1807i.getClass();
        c1807i.f20811c = Math.round(pointF.x);
        int round = Math.round(pointF.y);
        c1807i.f20812d = round;
        int i2 = c1807i.f20815g + 1;
        c1807i.f20815g = i2;
        if (c1807i.f20814f == i2) {
            M.a(c1807i.f20813e, c1807i.f20809a, c1807i.f20810b, c1807i.f20811c, round);
            c1807i.f20814f = 0;
            c1807i.f20815g = 0;
        }
    }
}
