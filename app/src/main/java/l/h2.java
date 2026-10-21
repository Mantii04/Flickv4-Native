package l;

import android.view.MenuItem;
import androidx.appcompat.widget.Toolbar;
import k.C1084p;
import k.InterfaceC1082n;

/* loaded from: classes.dex */
public final class h2 implements InterfaceC1082n {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Toolbar f17900b;

    public h2(Toolbar toolbar) {
        this.f17900b = toolbar;
    }

    @Override // k.InterfaceC1082n
    public boolean onMenuItemSelected(C1084p c1084p, MenuItem menuItem) {
        InterfaceC1082n interfaceC1082n = this.f17900b.f5159a0;
        return interfaceC1082n != null && interfaceC1082n.onMenuItemSelected(c1084p, menuItem);
    }

    @Override // k.InterfaceC1082n
    public void onMenuModeChange(C1084p c1084p) {
        Toolbar toolbar = this.f17900b;
        if (!toolbar.f5160b.isOverflowMenuShowing()) {
            toolbar.f5151P.onPrepareMenu(c1084p);
        }
        InterfaceC1082n interfaceC1082n = toolbar.f5159a0;
        if (interfaceC1082n != null) {
            interfaceC1082n.onMenuModeChange(c1084p);
        }
    }
}
