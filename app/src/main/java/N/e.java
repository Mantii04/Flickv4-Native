package N;

import android.view.accessibility.AccessibilityManager;

/* loaded from: classes.dex */
public abstract class e {
    public static boolean addTouchExplorationStateChangeListener(AccessibilityManager accessibilityManager, c cVar) {
        return accessibilityManager.addTouchExplorationStateChangeListener(new d(cVar));
    }

    public static boolean removeTouchExplorationStateChangeListener(AccessibilityManager accessibilityManager, c cVar) {
        return accessibilityManager.removeTouchExplorationStateChangeListener(new d(cVar));
    }
}
