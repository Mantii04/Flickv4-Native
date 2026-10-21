package androidx.leanback.widget;

import android.util.Property;

/* loaded from: classes.dex */
public final class u1 extends Property {
    @Override // android.util.Property
    public Integer get(w1 w1Var) {
        return Integer.valueOf(w1Var.getStreamPosition());
    }

    @Override // android.util.Property
    public void set(w1 w1Var, Integer num) {
        w1Var.setStreamPosition(num.intValue());
    }
}
