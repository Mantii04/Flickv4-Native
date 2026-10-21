package androidx.fragment.app;

import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;

/* loaded from: classes.dex */
public final class W implements M.E {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AbstractC0467i0 f6169a;

    public W(AbstractC0467i0 abstractC0467i0) {
        this.f6169a = abstractC0467i0;
    }

    public void onCreateMenu(Menu menu, MenuInflater menuInflater) {
        this.f6169a.j(menu, menuInflater);
    }

    public void onMenuClosed(Menu menu) {
        this.f6169a.p(menu);
    }

    public boolean onMenuItemSelected(MenuItem menuItem) {
        return this.f6169a.o(menuItem);
    }

    public void onPrepareMenu(Menu menu) {
        this.f6169a.s(menu);
    }
}
