package N;

import android.view.View;
import android.view.accessibility.AccessibilityRecord;

/* loaded from: classes.dex */
public abstract class r {
    public static void setMaxScrollX(AccessibilityRecord accessibilityRecord, int i2) {
        accessibilityRecord.setMaxScrollX(i2);
    }

    public static void setMaxScrollY(AccessibilityRecord accessibilityRecord, int i2) {
        accessibilityRecord.setMaxScrollY(i2);
    }

    public static void setSource(AccessibilityRecord accessibilityRecord, View view, int i2) {
        accessibilityRecord.setSource(view, i2);
    }
}
