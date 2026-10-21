package e;

import android.view.Window;
import k.C1084p;
import k.InterfaceC1059D;

/* loaded from: classes.dex */
public final class Z implements InterfaceC1059D {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ a0 f13685b;

    public Z(a0 a0Var) {
        this.f13685b = a0Var;
    }

    @Override // k.InterfaceC1059D
    public void onCloseMenu(C1084p c1084p, boolean z6) {
        Y y6;
        C1084p rootMenu = c1084p.getRootMenu();
        int i2 = 0;
        boolean z7 = rootMenu != c1084p;
        if (z7) {
            c1084p = rootMenu;
        }
        a0 a0Var = this.f13685b;
        Y[] yArr = a0Var.f13712V;
        int length = yArr != null ? yArr.length : 0;
        while (true) {
            if (i2 < length) {
                y6 = yArr[i2];
                if (y6 != null && y6.f13676h == c1084p) {
                    break;
                } else {
                    i2++;
                }
            } else {
                y6 = null;
                break;
            }
        }
        if (y6 != null) {
            if (!z7) {
                a0Var.h(y6, z6);
            } else {
                a0Var.f(y6.f13669a, y6, rootMenu);
                a0Var.h(y6, true);
            }
        }
    }

    @Override // k.InterfaceC1059D
    public boolean onOpenSubMenu(C1084p c1084p) {
        Window.Callback callback;
        if (c1084p != c1084p.getRootMenu()) {
            return true;
        }
        a0 a0Var = this.f13685b;
        if (!a0Var.f13706P || (callback = a0Var.f13736u.getCallback()) == null || a0Var.f13717a0) {
            return true;
        }
        callback.onMenuOpened(108, c1084p);
        return true;
    }
}
