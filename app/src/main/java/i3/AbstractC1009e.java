package i3;

import android.graphics.Rect;
import android.view.View;
import android.widget.FrameLayout;

/* renamed from: i3.e, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC1009e {
    public static void attachBadgeDrawable(C1005a c1005a, View view, FrameLayout frameLayout) {
        setBadgeDrawableBounds(c1005a, view, frameLayout);
        if (c1005a.getCustomBadgeParent() != null) {
            c1005a.getCustomBadgeParent().setForeground(c1005a);
        } else {
            view.getOverlay().add(c1005a);
        }
    }

    public static void detachBadgeDrawable(C1005a c1005a, View view) {
        if (c1005a == null) {
            return;
        }
        if (c1005a.getCustomBadgeParent() != null) {
            c1005a.getCustomBadgeParent().setForeground(null);
        } else {
            view.getOverlay().remove(c1005a);
        }
    }

    public static void setBadgeDrawableBounds(C1005a c1005a, View view, FrameLayout frameLayout) {
        Rect rect = new Rect();
        view.getDrawingRect(rect);
        c1005a.setBounds(rect);
        c1005a.updateBadgeCoordinates(view, frameLayout);
    }

    public static void updateBadgeBounds(Rect rect, float f3, float f7, float f8, float f9) {
        rect.set((int) (f3 - f8), (int) (f7 - f9), (int) (f3 + f8), (int) (f7 + f9));
    }
}
