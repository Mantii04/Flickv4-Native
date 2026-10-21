package x1;

import android.view.ViewGroup;

/* loaded from: classes.dex */
public abstract class J {
    public static int a(ViewGroup viewGroup, int i2) {
        return viewGroup.getChildDrawingOrder(i2);
    }

    public static void b(ViewGroup viewGroup, boolean z6) {
        viewGroup.suppressLayout(z6);
    }
}
