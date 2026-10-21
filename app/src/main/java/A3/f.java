package A3;

import android.view.MenuItem;
import k.C1084p;
import k.InterfaceC1082n;

/* loaded from: classes2.dex */
public final class f implements InterfaceC1082n {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ k f30b;

    public f(k kVar) {
        this.f30b = kVar;
    }

    @Override // k.InterfaceC1082n
    public boolean onMenuItemSelected(C1084p c1084p, MenuItem menuItem) {
        h hVar = this.f30b.f44s;
        return hVar != null && hVar.onNavigationItemSelected(menuItem);
    }

    @Override // k.InterfaceC1082n
    public void onMenuModeChange(C1084p c1084p) {
    }
}
