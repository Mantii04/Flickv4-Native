package k;

import M.InterfaceC0156d;
import android.view.ActionProvider;
import android.view.MenuItem;
import android.view.View;

/* loaded from: classes.dex */
public final class u extends t implements ActionProvider.VisibilityListener {

    /* renamed from: e, reason: collision with root package name */
    public InterfaceC0156d f17208e;

    @Override // M.AbstractC0158e
    public boolean isVisible() {
        return this.f17206c.isVisible();
    }

    @Override // android.view.ActionProvider.VisibilityListener
    public void onActionProviderVisibilityChanged(boolean z6) {
        InterfaceC0156d interfaceC0156d = this.f17208e;
        if (interfaceC0156d != null) {
            ((r) interfaceC0156d).onActionProviderVisibilityChanged(z6);
        }
    }

    @Override // M.AbstractC0158e
    public View onCreateActionView(MenuItem menuItem) {
        return this.f17206c.onCreateActionView(menuItem);
    }

    @Override // M.AbstractC0158e
    public boolean overridesItemVisibility() {
        return this.f17206c.overridesItemVisibility();
    }

    @Override // M.AbstractC0158e
    public void setVisibilityListener(InterfaceC0156d interfaceC0156d) {
        this.f17208e = interfaceC0156d;
        this.f17206c.setVisibilityListener(interfaceC0156d != null ? this : null);
    }
}
