package u2;

import android.content.Context;
import android.graphics.Bitmap;
import n2.InterfaceC1391M;
import o2.InterfaceC1430d;

/* renamed from: u2.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1679f implements l2.t {
    public abstract Bitmap transform(InterfaceC1430d interfaceC1430d, Bitmap bitmap, int i2, int i7);

    @Override // l2.t
    public final InterfaceC1391M transform(Context context, InterfaceC1391M interfaceC1391M, int i2, int i7) {
        if (!G2.t.isValidDimensions(i2, i7)) {
            throw new IllegalArgumentException("Cannot apply transformation on width: " + i2 + " or height: " + i7 + " less than or equal to zero and not Target.SIZE_ORIGINAL");
        }
        InterfaceC1430d bitmapPool = com.bumptech.glide.c.get(context).getBitmapPool();
        Bitmap bitmap = (Bitmap) interfaceC1391M.get();
        if (i2 == Integer.MIN_VALUE) {
            i2 = bitmap.getWidth();
        }
        if (i7 == Integer.MIN_VALUE) {
            i7 = bitmap.getHeight();
        }
        Bitmap transform = transform(bitmapPool, bitmap, i2, i7);
        return bitmap.equals(transform) ? interfaceC1391M : C1678e.obtain(transform, bitmapPool);
    }
}
