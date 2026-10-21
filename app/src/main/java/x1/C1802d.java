package x1;

import android.graphics.PointF;
import android.util.Property;
import android.view.View;

/* renamed from: x1.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1802d extends Property {
    @Override // android.util.Property
    public PointF get(View view) {
        return null;
    }

    @Override // android.util.Property
    public void set(View view, PointF pointF) {
        M.a(view, view.getLeft(), view.getTop(), Math.round(pointF.x), Math.round(pointF.y));
    }
}
