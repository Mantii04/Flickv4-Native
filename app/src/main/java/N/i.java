package N;

import android.view.accessibility.AccessibilityNodeInfo;

/* loaded from: classes.dex */
public abstract class i {
    public static Object createRangeInfo(int i2, float f3, float f7, float f8) {
        return new AccessibilityNodeInfo.RangeInfo(i2, f3, f7, f8);
    }

    public static CharSequence getStateDescription(AccessibilityNodeInfo accessibilityNodeInfo) {
        return accessibilityNodeInfo.getStateDescription();
    }

    public static void setStateDescription(AccessibilityNodeInfo accessibilityNodeInfo, CharSequence charSequence) {
        accessibilityNodeInfo.setStateDescription(charSequence);
    }
}
