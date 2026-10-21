package k;

import android.view.MenuItem;

/* loaded from: classes.dex */
public final class x implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final MenuItem.OnMenuItemClickListener f17212a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ y f17213b;

    public x(y yVar, MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f17213b = yVar;
        this.f17212a = onMenuItemClickListener;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        return this.f17212a.onMenuItemClick(this.f17213b.c(menuItem));
    }
}
