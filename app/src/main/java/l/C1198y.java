package l;

import android.view.MenuItem;
import androidx.appcompat.widget.ActionMenuView;
import k.C1084p;
import k.InterfaceC1082n;

/* renamed from: l.y, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1198y implements InterfaceC1082n {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ActionMenuView f18055b;

    public C1198y(ActionMenuView actionMenuView) {
        this.f18055b = actionMenuView;
    }

    @Override // k.InterfaceC1082n
    public boolean onMenuItemSelected(C1084p c1084p, MenuItem menuItem) {
        InterfaceC1201z interfaceC1201z = this.f18055b.f5024J;
        return interfaceC1201z != null && ((f2) interfaceC1201z).onMenuItemClick(menuItem);
    }

    @Override // k.InterfaceC1082n
    public void onMenuModeChange(C1084p c1084p) {
        InterfaceC1082n interfaceC1082n = this.f18055b.f5019E;
        if (interfaceC1082n != null) {
            interfaceC1082n.onMenuModeChange(c1084p);
        }
    }
}
