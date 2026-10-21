package e;

import android.view.Window;
import k.C1084p;
import k.InterfaceC1059D;

/* renamed from: e.I, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0821I implements InterfaceC1059D {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ a0 f13652b;

    public C0821I(a0 a0Var) {
        this.f13652b = a0Var;
    }

    @Override // k.InterfaceC1059D
    public void onCloseMenu(C1084p c1084p, boolean z6) {
        this.f13652b.g(c1084p);
    }

    @Override // k.InterfaceC1059D
    public boolean onOpenSubMenu(C1084p c1084p) {
        Window.Callback callback = this.f13652b.f13736u.getCallback();
        if (callback == null) {
            return true;
        }
        callback.onMenuOpened(108, c1084p);
        return true;
    }
}
