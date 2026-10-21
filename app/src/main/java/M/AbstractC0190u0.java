package M;

import android.view.ViewGroup;

/* renamed from: M.u0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0190u0 {
    public static int a(ViewGroup viewGroup) {
        return viewGroup.getNestedScrollAxes();
    }

    public static boolean b(ViewGroup viewGroup) {
        return viewGroup.isTransitionGroup();
    }

    public static void c(ViewGroup viewGroup, boolean z6) {
        viewGroup.setTransitionGroup(z6);
    }
}
