package N;

import android.annotation.SuppressLint;
import android.view.accessibility.AccessibilityEvent;

/* loaded from: classes.dex */
public abstract class b {
    @SuppressLint({"WrongConstant"})
    public static int getContentChangeTypes(AccessibilityEvent accessibilityEvent) {
        return accessibilityEvent.getContentChangeTypes();
    }

    public static void setContentChangeTypes(AccessibilityEvent accessibilityEvent, int i2) {
        accessibilityEvent.setContentChangeTypes(i2);
    }
}
