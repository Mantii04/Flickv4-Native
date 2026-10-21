package x1;

import android.graphics.PointF;
import android.util.Property;
import android.view.View;

/* renamed from: x1.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1804f extends Property {
    @Override // android.util.Property
    public PointF get(View view) {
        return null;
    }

    @Override // android.util.Property
    public void set(View view, PointF pointF) {
        int round = Math.round(pointF.x);
        int round2 = Math.round(pointF.y);
        M.a(view, round, round2, view.getWidth() + round, view.getHeight() + round2);
    }
}
