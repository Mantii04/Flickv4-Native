package w2;

import android.graphics.drawable.Drawable;
import l2.q;
import l2.r;
import n2.InterfaceC1391M;

/* loaded from: classes.dex */
public final class i implements r {
    @Override // l2.r
    public InterfaceC1391M decode(Drawable drawable, int i2, int i7, q qVar) {
        if (drawable != null) {
            return new g(drawable);
        }
        return null;
    }

    @Override // l2.r
    public boolean handles(Drawable drawable, q qVar) {
        return true;
    }
}
