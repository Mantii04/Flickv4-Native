package M;

import android.util.Log;
import android.view.View;
import android.view.ViewParent;

/* renamed from: M.z0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0200z0 {
    public static boolean onNestedFling(ViewParent viewParent, View view, float f3, float f7, boolean z6) {
        try {
            return AbstractC0198y0.a(viewParent, view, f3, f7, z6);
        } catch (AbstractMethodError e3) {
            Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedFling", e3);
            return false;
        }
    }

    public static boolean onNestedPreFling(ViewParent viewParent, View view, float f3, float f7) {
        try {
            return AbstractC0198y0.b(viewParent, view, f3, f7);
        } catch (AbstractMethodError e3) {
            Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedPreFling", e3);
            return false;
        }
    }

    public static void onNestedPreScroll(ViewParent viewParent, View view, int i2, int i7, int[] iArr, int i8) {
        if (viewParent instanceof I) {
            ((I) viewParent).onNestedPreScroll(view, i2, i7, iArr, i8);
            return;
        }
        if (i8 == 0) {
            try {
                AbstractC0198y0.c(viewParent, view, i2, i7, iArr);
            } catch (AbstractMethodError e3) {
                Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedPreScroll", e3);
            }
        }
    }

    public static void onNestedScroll(ViewParent viewParent, View view, int i2, int i7, int i8, int i9, int i10, int[] iArr) {
        if (viewParent instanceof J) {
            ((J) viewParent).onNestedScroll(view, i2, i7, i8, i9, i10, iArr);
            return;
        }
        iArr[0] = iArr[0] + i8;
        iArr[1] = iArr[1] + i9;
        if (viewParent instanceof I) {
            ((I) viewParent).onNestedScroll(view, i2, i7, i8, i9, i10);
            return;
        }
        if (i10 == 0) {
            try {
                AbstractC0198y0.d(viewParent, view, i2, i7, i8, i9);
            } catch (AbstractMethodError e3) {
                Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedScroll", e3);
            }
        }
    }

    public static void onNestedScrollAccepted(ViewParent viewParent, View view, View view2, int i2, int i7) {
        if (viewParent instanceof I) {
            ((I) viewParent).onNestedScrollAccepted(view, view2, i2, i7);
            return;
        }
        if (i7 == 0) {
            try {
                AbstractC0198y0.e(viewParent, view, view2, i2);
            } catch (AbstractMethodError e3) {
                Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedScrollAccepted", e3);
            }
        }
    }

    public static boolean onStartNestedScroll(ViewParent viewParent, View view, View view2, int i2, int i7) {
        if (viewParent instanceof I) {
            return ((I) viewParent).onStartNestedScroll(view, view2, i2, i7);
        }
        if (i7 != 0) {
            return false;
        }
        try {
            return AbstractC0198y0.f(viewParent, view, view2, i2);
        } catch (AbstractMethodError e3) {
            Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onStartNestedScroll", e3);
            return false;
        }
    }

    public static void onStopNestedScroll(ViewParent viewParent, View view, int i2) {
        if (viewParent instanceof I) {
            ((I) viewParent).onStopNestedScroll(view, i2);
            return;
        }
        if (i2 == 0) {
            try {
                AbstractC0198y0.g(viewParent, view);
            } catch (AbstractMethodError e3) {
                Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onStopNestedScroll", e3);
            }
        }
    }
}
