package l;

import k.C1084p;
import k.InterfaceC1059D;
import k.SubMenuC1068M;

/* loaded from: classes.dex */
public final class r implements InterfaceC1059D {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C1186u f17977b;

    public r(C1186u c1186u) {
        this.f17977b = c1186u;
    }

    @Override // k.InterfaceC1059D
    public void onCloseMenu(C1084p c1084p, boolean z6) {
        if (c1084p instanceof SubMenuC1068M) {
            c1084p.getRootMenu().close(false);
        }
        InterfaceC1059D callback = this.f17977b.getCallback();
        if (callback != null) {
            callback.onCloseMenu(c1084p, z6);
        }
    }

    @Override // k.InterfaceC1059D
    public boolean onOpenSubMenu(C1084p c1084p) {
        C1186u c1186u = this.f17977b;
        if (c1084p == c1186u.f17088f) {
            return false;
        }
        c1186u.f18012H = ((SubMenuC1068M) c1084p).getItem().getItemId();
        InterfaceC1059D callback = c1186u.getCallback();
        if (callback != null) {
            return callback.onOpenSubMenu(c1084p);
        }
        return false;
    }
}
