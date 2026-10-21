package L2;

import android.util.Property;

/* loaded from: classes.dex */
public abstract class c extends Property {
    public c(String str) {
        super(Integer.class, str);
    }

    public abstract void setValue(Object obj, int i2);

    @Override // android.util.Property
    public final void set(Object obj, Integer num) {
        setValue(obj, num.intValue());
    }
}
