package L2;

import android.util.Property;

/* loaded from: classes.dex */
public abstract class b extends Property {
    public b(String str) {
        super(Float.class, str);
    }

    public abstract void setValue(Object obj, float f3);

    @Override // android.util.Property
    public final void set(Object obj, Float f3) {
        setValue(obj, f3.floatValue());
    }
}
