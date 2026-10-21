package e;

import k.C1084p;
import k.InterfaceC1059D;

/* loaded from: classes.dex */
public final class m0 implements InterfaceC1059D {

    /* renamed from: b, reason: collision with root package name */
    public boolean f13782b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ p0 f13783e;

    public m0(p0 p0Var) {
        this.f13783e = p0Var;
    }

    @Override // k.InterfaceC1059D
    public void onCloseMenu(C1084p c1084p, boolean z6) {
        if (this.f13782b) {
            return;
        }
        this.f13782b = true;
        p0 p0Var = this.f13783e;
        p0Var.f13808a.dismissPopupMenus();
        p0Var.f13809b.onPanelClosed(108, c1084p);
        this.f13782b = false;
    }

    @Override // k.InterfaceC1059D
    public boolean onOpenSubMenu(C1084p c1084p) {
        this.f13783e.f13809b.onMenuOpened(108, c1084p);
        return true;
    }
}
