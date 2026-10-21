package e;

import android.view.MenuItem;
import android.view.Window;
import k.C1084p;
import k.InterfaceC1082n;

/* loaded from: classes.dex */
public final class n0 implements InterfaceC1082n {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ p0 f13805b;

    public n0(p0 p0Var) {
        this.f13805b = p0Var;
    }

    @Override // k.InterfaceC1082n
    public boolean onMenuItemSelected(C1084p c1084p, MenuItem menuItem) {
        return false;
    }

    @Override // k.InterfaceC1082n
    public void onMenuModeChange(C1084p c1084p) {
        p0 p0Var = this.f13805b;
        boolean isOverflowMenuShowing = p0Var.f13808a.isOverflowMenuShowing();
        Window.Callback callback = p0Var.f13809b;
        if (isOverflowMenuShowing) {
            callback.onPanelClosed(108, c1084p);
        } else if (callback.onPreparePanel(0, null, c1084p)) {
            callback.onMenuOpened(108, c1084p);
        }
    }
}
