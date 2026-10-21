package x1;

import android.graphics.PointF;
import android.util.Property;
import android.view.View;

/* renamed from: x1.e, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1803e extends Property {
    @Override // android.util.Property
    public PointF get(View view) {
        return null;
    }

    @Override // android.util.Property
    public void set(View view, PointF pointF) {
        M.a(view, Math.round(pointF.x), Math.round(pointF.y), view.getRight(), view.getBottom());
    }
}
