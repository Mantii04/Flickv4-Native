package M;

import android.view.View;
import android.view.ViewParent;

/* renamed from: M.y0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0198y0 {
    public static boolean a(ViewParent viewParent, View view, float f3, float f7, boolean z6) {
        return viewParent.onNestedFling(view, f3, f7, z6);
    }

    public static boolean b(ViewParent viewParent, View view, float f3, float f7) {
        return viewParent.onNestedPreFling(view, f3, f7);
    }

    public static void c(ViewParent viewParent, View view, int i2, int i7, int[] iArr) {
        viewParent.onNestedPreScroll(view, i2, i7, iArr);
    }

    public static void d(ViewParent viewParent, View view, int i2, int i7, int i8, int i9) {
        viewParent.onNestedScroll(view, i2, i7, i8, i9);
    }

    public static void e(ViewParent viewParent, View view, View view2, int i2) {
        viewParent.onNestedScrollAccepted(view, view2, i2);
    }

    public static boolean f(ViewParent viewParent, View view, View view2, int i2) {
        return viewParent.onStartNestedScroll(view, view2, i2);
    }

    public static void g(ViewParent viewParent, View view) {
        viewParent.onStopNestedScroll(view);
    }
}
