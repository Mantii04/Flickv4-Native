package e;

import M.AbstractC0181p0;
import M.C0;
import android.view.Menu;
import android.view.MenuItem;
import j.AbstractC1020c;
import j.InterfaceC1019b;

/* loaded from: classes.dex */
public final class K implements InterfaceC1019b {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC1019b f13654a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ a0 f13655b;

    public K(a0 a0Var, InterfaceC1019b interfaceC1019b) {
        this.f13655b = a0Var;
        this.f13654a = interfaceC1019b;
    }

    @Override // j.InterfaceC1019b
    public boolean onActionItemClicked(AbstractC1020c abstractC1020c, MenuItem menuItem) {
        return this.f13654a.onActionItemClicked(abstractC1020c, menuItem);
    }

    @Override // j.InterfaceC1019b
    public boolean onCreateActionMode(AbstractC1020c abstractC1020c, Menu menu) {
        return this.f13654a.onCreateActionMode(abstractC1020c, menu);
    }

    @Override // j.InterfaceC1019b
    public void onDestroyActionMode(AbstractC1020c abstractC1020c) {
        this.f13654a.onDestroyActionMode(abstractC1020c);
        a0 a0Var = this.f13655b;
        if (a0Var.f13696F != null) {
            a0Var.f13736u.getDecorView().removeCallbacks(a0Var.f13697G);
        }
        if (a0Var.f13695E != null) {
            C0 c02 = a0Var.f13698H;
            if (c02 != null) {
                c02.cancel();
            }
            C0 alpha = AbstractC0181p0.animate(a0Var.f13695E).alpha(0.0f);
            a0Var.f13698H = alpha;
            alpha.setListener(new J(this));
        }
        InterfaceC0843w interfaceC0843w = a0Var.f13738w;
        if (interfaceC0843w != null) {
            interfaceC0843w.onSupportActionModeFinished(a0Var.f13694D);
        }
        a0Var.f13694D = null;
        AbstractC0181p0.requestApplyInsets(a0Var.f13701K);
        a0Var.w();
    }

    @Override // j.InterfaceC1019b
    public boolean onPrepareActionMode(AbstractC1020c abstractC1020c, Menu menu) {
        AbstractC0181p0.requestApplyInsets(this.f13655b.f13701K);
        return this.f13654a.onPrepareActionMode(abstractC1020c, menu);
    }
}
