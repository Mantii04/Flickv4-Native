package l;

import android.view.MenuItem;
import k.C1084p;
import k.InterfaceC1082n;

/* renamed from: l.s1, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1182s1 implements InterfaceC1082n {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C1191v1 f18002b;

    public C1182s1(C1191v1 c1191v1) {
        this.f18002b = c1191v1;
    }

    @Override // k.InterfaceC1082n
    public boolean onMenuItemSelected(C1084p c1084p, MenuItem menuItem) {
        InterfaceC1188u1 interfaceC1188u1 = this.f18002b.f18027e;
        if (interfaceC1188u1 != null) {
            return interfaceC1188u1.onMenuItemClick(menuItem);
        }
        return false;
    }

    @Override // k.InterfaceC1082n
    public void onMenuModeChange(C1084p c1084p) {
    }
}
