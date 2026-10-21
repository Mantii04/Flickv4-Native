package N;

import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class o extends AccessibilityNodeProvider {

    /* renamed from: a, reason: collision with root package name */
    public final q f2143a;

    public o(q qVar) {
        this.f2143a = qVar;
    }

    @Override // android.view.accessibility.AccessibilityNodeProvider
    public AccessibilityNodeInfo createAccessibilityNodeInfo(int i2) {
        n createAccessibilityNodeInfo = this.f2143a.createAccessibilityNodeInfo(i2);
        if (createAccessibilityNodeInfo == null) {
            return null;
        }
        return createAccessibilityNodeInfo.unwrap();
    }

    @Override // android.view.accessibility.AccessibilityNodeProvider
    public List<AccessibilityNodeInfo> findAccessibilityNodeInfosByText(String str, int i2) {
        List<n> findAccessibilityNodeInfosByText = this.f2143a.findAccessibilityNodeInfosByText(str, i2);
        if (findAccessibilityNodeInfosByText == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int size = findAccessibilityNodeInfosByText.size();
        for (int i7 = 0; i7 < size; i7++) {
            arrayList.add(findAccessibilityNodeInfosByText.get(i7).unwrap());
        }
        return arrayList;
    }

    @Override // android.view.accessibility.AccessibilityNodeProvider
    public AccessibilityNodeInfo findFocus(int i2) {
        n findFocus = this.f2143a.findFocus(i2);
        if (findFocus == null) {
            return null;
        }
        return findFocus.unwrap();
    }

    @Override // android.view.accessibility.AccessibilityNodeProvider
    public boolean performAction(int i2, int i7, Bundle bundle) {
        return this.f2143a.performAction(i2, i7, bundle);
    }
}
