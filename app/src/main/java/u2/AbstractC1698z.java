package u2;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import java.util.concurrent.locks.Lock;
import o2.InterfaceC1430d;

/* renamed from: u2.z, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1698z {

    /* renamed from: a, reason: collision with root package name */
    public static final C1697y f20316a = new C1697y();

    public static C1678e a(InterfaceC1430d interfaceC1430d, Drawable drawable, int i2, int i7) {
        Bitmap bitmap;
        Drawable current = drawable.getCurrent();
        boolean z6 = false;
        if (current instanceof BitmapDrawable) {
            bitmap = ((BitmapDrawable) current).getBitmap();
        } else if (current instanceof Animatable) {
            bitmap = null;
        } else {
            if (i2 != Integer.MIN_VALUE || current.getIntrinsicWidth() > 0) {
                if (i7 != Integer.MIN_VALUE || current.getIntrinsicHeight() > 0) {
                    if (current.getIntrinsicWidth() > 0) {
                        i2 = current.getIntrinsicWidth();
                    }
                    if (current.getIntrinsicHeight() > 0) {
                        i7 = current.getIntrinsicHeight();
                    }
                    Lock bitmapDrawableLock = P.getBitmapDrawableLock();
                    bitmapDrawableLock.lock();
                    Bitmap bitmap2 = interfaceC1430d.get(i2, i7, Bitmap.Config.ARGB_8888);
                    try {
                        Canvas canvas = new Canvas(bitmap2);
                        current.setBounds(0, 0, i2, i7);
                        current.draw(canvas);
                        canvas.setBitmap(null);
                        bitmapDrawableLock.unlock();
                        bitmap = bitmap2;
                        z6 = true;
                    } catch (Throwable th) {
                        bitmapDrawableLock.unlock();
                        throw th;
                    }
                } else if (Log.isLoggable("DrawableToBitmap", 5)) {
                    Log.w("DrawableToBitmap", "Unable to draw " + current + " to Bitmap with Target.SIZE_ORIGINAL because the Drawable has no intrinsic height");
                }
            } else if (Log.isLoggable("DrawableToBitmap", 5)) {
                Log.w("DrawableToBitmap", "Unable to draw " + current + " to Bitmap with Target.SIZE_ORIGINAL because the Drawable has no intrinsic width");
            }
            bitmap = null;
            z6 = true;
        }
        if (!z6) {
            interfaceC1430d = f20316a;
        }
        return C1678e.obtain(bitmap, interfaceC1430d);
    }
}
