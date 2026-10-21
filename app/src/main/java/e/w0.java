package e;

import android.content.Context;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import j.AbstractC1020c;
import j.C1029l;
import j.InterfaceC1019b;
import java.lang.ref.WeakReference;
import k.C1084p;
import k.InterfaceC1082n;

/* loaded from: classes.dex */
public final class w0 extends AbstractC1020c implements InterfaceC1082n {

    /* renamed from: f, reason: collision with root package name */
    public final Context f13873f;

    /* renamed from: j, reason: collision with root package name */
    public final C1084p f13874j;

    /* renamed from: m, reason: collision with root package name */
    public InterfaceC1019b f13875m;

    /* renamed from: n, reason: collision with root package name */
    public WeakReference f13876n;

    /* renamed from: p, reason: collision with root package name */
    public final /* synthetic */ x0 f13877p;

    public w0(x0 x0Var, Context context, InterfaceC1019b interfaceC1019b) {
        this.f13877p = x0Var;
        this.f13873f = context;
        this.f13875m = interfaceC1019b;
        C1084p defaultShowAsAction = new C1084p(context).setDefaultShowAsAction(1);
        this.f13874j = defaultShowAsAction;
        defaultShowAsAction.setCallback(this);
    }

    public boolean dispatchOnCreate() {
        C1084p c1084p = this.f13874j;
        c1084p.stopDispatchingItemsChanged();
        try {
            return this.f13875m.onCreateActionMode(this, c1084p);
        } finally {
            c1084p.startDispatchingItemsChanged();
        }
    }

    @Override // j.AbstractC1020c
    public void finish() {
        x0 x0Var = this.f13877p;
        if (x0Var.f13890i != this) {
            return;
        }
        boolean z6 = x0Var.f13898q;
        boolean z7 = x0Var.f13899r;
        if (z6 || z7) {
            x0Var.f13891j = this;
            x0Var.f13892k = this.f13875m;
        } else {
            this.f13875m.onDestroyActionMode(this);
        }
        this.f13875m = null;
        x0Var.animateToMode(false);
        x0Var.f13887f.closeMode();
        x0Var.f13884c.setHideOnContentScrollEnabled(x0Var.f13904w);
        x0Var.f13890i = null;
    }

    @Override // j.AbstractC1020c
    public View getCustomView() {
        WeakReference weakReference = this.f13876n;
        if (weakReference != null) {
            return (View) weakReference.get();
        }
        return null;
    }

    @Override // j.AbstractC1020c
    public Menu getMenu() {
        return this.f13874j;
    }

    @Override // j.AbstractC1020c
    public MenuInflater getMenuInflater() {
        return new C1029l(this.f13873f);
    }

    @Override // j.AbstractC1020c
    public CharSequence getSubtitle() {
        return this.f13877p.f13887f.getSubtitle();
    }

    @Override // j.AbstractC1020c
    public CharSequence getTitle() {
        return this.f13877p.f13887f.getTitle();
    }

    @Override // j.AbstractC1020c
    public void invalidate() {
        if (this.f13877p.f13890i != this) {
            return;
        }
        C1084p c1084p = this.f13874j;
        c1084p.stopDispatchingItemsChanged();
        try {
            this.f13875m.onPrepareActionMode(this, c1084p);
        } finally {
            c1084p.startDispatchingItemsChanged();
        }
    }

    @Override // j.AbstractC1020c
    public boolean isTitleOptional() {
        return this.f13877p.f13887f.isTitleOptional();
    }

    @Override // k.InterfaceC1082n
    public boolean onMenuItemSelected(C1084p c1084p, MenuItem menuItem) {
        InterfaceC1019b interfaceC1019b = this.f13875m;
        if (interfaceC1019b != null) {
            return interfaceC1019b.onActionItemClicked(this, menuItem);
        }
        return false;
    }

    @Override // k.InterfaceC1082n
    public void onMenuModeChange(C1084p c1084p) {
        if (this.f13875m == null) {
            return;
        }
        invalidate();
        this.f13877p.f13887f.showOverflowMenu();
    }

    @Override // j.AbstractC1020c
    public void setCustomView(View view) {
        this.f13877p.f13887f.setCustomView(view);
        this.f13876n = new WeakReference(view);
    }

    @Override // j.AbstractC1020c
    public void setSubtitle(CharSequence charSequence) {
        this.f13877p.f13887f.setSubtitle(charSequence);
    }

    @Override // j.AbstractC1020c
    public void setTitle(CharSequence charSequence) {
        this.f13877p.f13887f.setTitle(charSequence);
    }

    @Override // j.AbstractC1020c
    public void setTitleOptionalHint(boolean z6) {
        super.setTitleOptionalHint(z6);
        this.f13877p.f13887f.setTitleOptional(z6);
    }

    @Override // j.AbstractC1020c
    public void setSubtitle(int i2) {
        setSubtitle(this.f13877p.f13882a.getResources().getString(i2));
    }

    @Override // j.AbstractC1020c
    public void setTitle(int i2) {
        setTitle(this.f13877p.f13882a.getResources().getString(i2));
    }
}
