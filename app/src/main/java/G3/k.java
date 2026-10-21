package G3;

import android.graphics.drawable.Drawable;
import android.view.View;
import x3.T;

/* loaded from: classes2.dex */
public abstract class k {
    public static AbstractC0105d a(int i2) {
        return i2 != 0 ? i2 != 1 ? new m() : new C0106e() : new m();
    }

    public static void setElevation(View view, float f3) {
        Drawable background = view.getBackground();
        if (background instanceof j) {
            ((j) background).setElevation(f3);
        }
    }

    public static void setParentAbsoluteElevation(View view) {
        Drawable background = view.getBackground();
        if (background instanceof j) {
            setParentAbsoluteElevation(view, (j) background);
        }
    }

    public static void setParentAbsoluteElevation(View view, j jVar) {
        if (jVar.isElevationOverlayEnabled()) {
            jVar.setParentAbsoluteElevation(T.getParentAbsoluteElevation(view));
        }
    }
}
