package x1;

import android.util.Property;
import android.view.View;

/* loaded from: classes.dex */
public final class K extends Property {
    @Override // android.util.Property
    public Float get(View view) {
        return Float.valueOf(M.f20786a.getTransitionAlpha(view));
    }

    @Override // android.util.Property
    public void set(View view, Float f3) {
        M.f20786a.setTransitionAlpha(view, f3.floatValue());
    }
}
