package l;

import android.view.MenuItem;
import androidx.appcompat.widget.Toolbar;

/* loaded from: classes.dex */
public final class f2 implements InterfaceC1201z {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Toolbar f17891a;

    public f2(Toolbar toolbar) {
        this.f17891a = toolbar;
    }

    public boolean onMenuItemClick(MenuItem menuItem) {
        Toolbar toolbar = this.f17891a;
        if (toolbar.f5151P.onMenuItemSelected(menuItem)) {
            return true;
        }
        m2 m2Var = toolbar.f5153R;
        if (m2Var != null) {
            return m2Var.onMenuItemClick(menuItem);
        }
        return false;
    }
}
