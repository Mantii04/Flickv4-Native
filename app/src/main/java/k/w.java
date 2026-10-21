package k;

import android.view.MenuItem;

/* loaded from: classes.dex */
public final class w implements MenuItem.OnActionExpandListener {

    /* renamed from: a, reason: collision with root package name */
    public final MenuItem.OnActionExpandListener f17210a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ y f17211b;

    public w(y yVar, MenuItem.OnActionExpandListener onActionExpandListener) {
        this.f17211b = yVar;
        this.f17210a = onActionExpandListener;
    }

    @Override // android.view.MenuItem.OnActionExpandListener
    public boolean onMenuItemActionCollapse(MenuItem menuItem) {
        return this.f17210a.onMenuItemActionCollapse(this.f17211b.c(menuItem));
    }

    @Override // android.view.MenuItem.OnActionExpandListener
    public boolean onMenuItemActionExpand(MenuItem menuItem) {
        return this.f17210a.onMenuItemActionExpand(this.f17211b.c(menuItem));
    }
}
