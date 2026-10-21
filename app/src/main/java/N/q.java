package N;

import android.os.Build;
import android.os.Bundle;
import java.util.List;

/* loaded from: classes.dex */
public class q {

    /* renamed from: a, reason: collision with root package name */
    public final Object f2144a;

    public q() {
        if (Build.VERSION.SDK_INT >= 26) {
            this.f2144a = new p(this);
        } else {
            this.f2144a = new o(this);
        }
    }

    public n createAccessibilityNodeInfo(int i2) {
        return null;
    }

    public List<n> findAccessibilityNodeInfosByText(String str, int i2) {
        return null;
    }

    public n findFocus(int i2) {
        return null;
    }

    public Object getProvider() {
        return this.f2144a;
    }

    public boolean performAction(int i2, int i7, Bundle bundle) {
        return false;
    }

    public q(Object obj) {
        this.f2144a = obj;
    }

    public void addExtraDataToAccessibilityNodeInfo(int i2, n nVar, String str, Bundle bundle) {
    }
}
