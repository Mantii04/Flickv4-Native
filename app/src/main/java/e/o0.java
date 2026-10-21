package e;

import android.view.View;

/* loaded from: classes.dex */
public final class o0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ p0 f13807a;

    public o0(p0 p0Var) {
        this.f13807a = p0Var;
    }

    public View onCreatePanelView(int i2) {
        if (i2 == 0) {
            return new View(this.f13807a.f13808a.getContext());
        }
        return null;
    }

    public boolean onPreparePanel(int i2) {
        if (i2 != 0) {
            return false;
        }
        p0 p0Var = this.f13807a;
        if (p0Var.f13811d) {
            return false;
        }
        p0Var.f13808a.setMenuPrepared();
        p0Var.f13811d = true;
        return false;
    }
}
