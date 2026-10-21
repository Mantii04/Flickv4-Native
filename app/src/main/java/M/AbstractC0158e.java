package M;

import android.content.Context;
import android.util.Log;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

/* renamed from: M.e, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0158e {

    /* renamed from: a, reason: collision with root package name */
    public final Context f2023a;

    /* renamed from: b, reason: collision with root package name */
    public InterfaceC0156d f2024b;

    public AbstractC0158e(Context context) {
        this.f2023a = context;
    }

    public Context getContext() {
        return this.f2023a;
    }

    public boolean hasSubMenu() {
        return false;
    }

    public boolean isVisible() {
        return true;
    }

    public abstract View onCreateActionView();

    public View onCreateActionView(MenuItem menuItem) {
        return onCreateActionView();
    }

    public abstract boolean onPerformDefaultAction();

    public boolean overridesItemVisibility() {
        return false;
    }

    public void reset() {
        this.f2024b = null;
    }

    public void setVisibilityListener(InterfaceC0156d interfaceC0156d) {
        if (this.f2024b != null && interfaceC0156d != null) {
            Log.w("ActionProvider(support)", "setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this " + getClass().getSimpleName() + " instance while it is still in use somewhere else?");
        }
        this.f2024b = interfaceC0156d;
    }

    public void onPrepareSubMenu(SubMenu subMenu) {
    }

    public void setSubUiVisibilityListener(InterfaceC0154c interfaceC0154c) {
    }
}
