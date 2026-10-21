package S;

import android.view.View;
import android.widget.PopupWindow;

/* loaded from: classes.dex */
public abstract class v {
    public static void setOverlapAnchor(PopupWindow popupWindow, boolean z6) {
        u.c(popupWindow, z6);
    }

    public static void setWindowLayoutType(PopupWindow popupWindow, int i2) {
        u.d(popupWindow, i2);
    }

    public static void showAsDropDown(PopupWindow popupWindow, View view, int i2, int i7, int i8) {
        popupWindow.showAsDropDown(view, i2, i7, i8);
    }
}
