package M;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.view.PointerIcon;

/* loaded from: classes.dex */
public abstract class P {
    public static PointerIcon a(Bitmap bitmap, float f3, float f7) {
        return PointerIcon.create(bitmap, f3, f7);
    }

    public static PointerIcon b(Context context, int i2) {
        return PointerIcon.getSystemIcon(context, i2);
    }

    public static PointerIcon c(Resources resources, int i2) {
        return PointerIcon.load(resources, i2);
    }
}
