package N;

import android.view.accessibility.AccessibilityNodeInfo;

/* loaded from: classes.dex */
public abstract class j {
    public static m buildCollectionItemInfoCompat(boolean z6, int i2, int i7, int i8, int i9, boolean z7, String str, String str2) {
        return new m(new AccessibilityNodeInfo.CollectionItemInfo.Builder().setHeading(z6).setColumnIndex(i2).setRowIndex(i7).setColumnSpan(i8).setRowSpan(i9).setSelected(z7).setRowTitle(str).setColumnTitle(str2).build());
    }

    public static n getChild(AccessibilityNodeInfo accessibilityNodeInfo, int i2, int i7) {
        AccessibilityNodeInfo child = accessibilityNodeInfo.getChild(i2, i7);
        if (child != null) {
            return new n((Object) child);
        }
        return null;
    }

    public static String getCollectionItemColumnTitle(Object obj) {
        return ((AccessibilityNodeInfo.CollectionItemInfo) obj).getColumnTitle();
    }

    public static String getCollectionItemRowTitle(Object obj) {
        return ((AccessibilityNodeInfo.CollectionItemInfo) obj).getRowTitle();
    }

    public static AccessibilityNodeInfo.ExtraRenderingInfo getExtraRenderingInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        return accessibilityNodeInfo.getExtraRenderingInfo();
    }

    public static n getParent(AccessibilityNodeInfo accessibilityNodeInfo, int i2) {
        AccessibilityNodeInfo parent = accessibilityNodeInfo.getParent(i2);
        if (parent != null) {
            return new n((Object) parent);
        }
        return null;
    }

    public static String getUniqueId(AccessibilityNodeInfo accessibilityNodeInfo) {
        return accessibilityNodeInfo.getUniqueId();
    }

    public static boolean isTextSelectable(AccessibilityNodeInfo accessibilityNodeInfo) {
        return accessibilityNodeInfo.isTextSelectable();
    }

    public static void setTextSelectable(AccessibilityNodeInfo accessibilityNodeInfo, boolean z6) {
        accessibilityNodeInfo.setTextSelectable(z6);
    }

    public static void setUniqueId(AccessibilityNodeInfo accessibilityNodeInfo, String str) {
        accessibilityNodeInfo.setUniqueId(str);
    }
}
