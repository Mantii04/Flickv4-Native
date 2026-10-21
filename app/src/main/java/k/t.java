package k;

import M.AbstractC0158e;
import android.content.Context;
import android.view.ActionProvider;
import android.view.SubMenu;
import android.view.View;

/* loaded from: classes.dex */
public abstract class t extends AbstractC0158e {

    /* renamed from: c, reason: collision with root package name */
    public final ActionProvider f17206c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ y f17207d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t(y yVar, Context context, ActionProvider actionProvider) {
        super(context);
        this.f17207d = yVar;
        this.f17206c = actionProvider;
    }

    @Override // M.AbstractC0158e
    public boolean hasSubMenu() {
        return this.f17206c.hasSubMenu();
    }

    @Override // M.AbstractC0158e
    public View onCreateActionView() {
        return this.f17206c.onCreateActionView();
    }

    @Override // M.AbstractC0158e
    public boolean onPerformDefaultAction() {
        return this.f17206c.onPerformDefaultAction();
    }

    @Override // M.AbstractC0158e
    public void onPrepareSubMenu(SubMenu subMenu) {
        this.f17207d.getClass();
        this.f17206c.onPrepareSubMenu(subMenu);
    }
}
