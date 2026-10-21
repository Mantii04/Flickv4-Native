package l;

import android.util.Property;
import androidx.appcompat.widget.SwitchCompat;

/* loaded from: classes.dex */
public final class X1 extends Property {
    @Override // android.util.Property
    public Float get(SwitchCompat switchCompat) {
        return Float.valueOf(switchCompat.f5101I);
    }

    @Override // android.util.Property
    public void set(SwitchCompat switchCompat, Float f3) {
        switchCompat.setThumbPosition(f3.floatValue());
    }
}
