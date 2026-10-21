package androidx.leanback.widget;

import android.util.Property;

/* renamed from: androidx.leanback.widget.w0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0536w0 extends Property {
    @Override // android.util.Property
    public Float get(C0540y0 c0540y0) {
        return Float.valueOf(c0540y0.getDiameter());
    }

    @Override // android.util.Property
    public void set(C0540y0 c0540y0, Float f3) {
        c0540y0.setDiameter(f3.floatValue());
    }
}
