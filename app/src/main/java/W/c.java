package W;

import M.AbstractC0181p0;
import N.n;
import N.q;
import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityManager;

/* loaded from: classes.dex */
public final class c extends q {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ d f4032b;

    public c(d dVar) {
        this.f4032b = dVar;
    }

    @Override // N.q
    public n createAccessibilityNodeInfo(int i2) {
        return n.obtain(this.f4032b.c(i2));
    }

    @Override // N.q
    public n findFocus(int i2) {
        d dVar = this.f4032b;
        int i7 = i2 == 2 ? dVar.f4043k : dVar.f4044l;
        if (i7 == Integer.MIN_VALUE) {
            return null;
        }
        return createAccessibilityNodeInfo(i7);
    }

    @Override // N.q
    public boolean performAction(int i2, int i7, Bundle bundle) {
        int i8;
        d dVar = this.f4032b;
        View view = dVar.f4041i;
        if (i2 == -1) {
            return AbstractC0181p0.performAccessibilityAction(view, i7, bundle);
        }
        if (i7 == 1) {
            return dVar.requestKeyboardFocusForVirtualView(i2);
        }
        if (i7 == 2) {
            return dVar.clearKeyboardFocusForVirtualView(i2);
        }
        if (i7 != 64) {
            if (i7 != 128) {
                return dVar.onPerformActionForVirtualView(i2, i7, bundle);
            }
            if (dVar.f4043k != i2) {
                return false;
            }
            dVar.f4043k = Integer.MIN_VALUE;
            view.invalidate();
            dVar.sendEventForVirtualView(i2, 65536);
            return true;
        }
        AccessibilityManager accessibilityManager = dVar.f4040h;
        if (!accessibilityManager.isEnabled() || !accessibilityManager.isTouchExplorationEnabled() || (i8 = dVar.f4043k) == i2) {
            return false;
        }
        if (i8 != Integer.MIN_VALUE) {
            dVar.f4043k = Integer.MIN_VALUE;
            view.invalidate();
            dVar.sendEventForVirtualView(i8, 65536);
        }
        dVar.f4043k = i2;
        view.invalidate();
        dVar.sendEventForVirtualView(i2, 32768);
        return true;
    }
}
