package u2;

import android.graphics.Bitmap;
import n2.InterfaceC1391M;

/* loaded from: classes.dex */
public final class S implements l2.r {
    @Override // l2.r
    public InterfaceC1391M decode(Bitmap bitmap, int i2, int i7, l2.q qVar) {
        return new Q(bitmap);
    }

    @Override // l2.r
    public boolean handles(Bitmap bitmap, l2.q qVar) {
        return true;
    }
}
