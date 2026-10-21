package e;

import M.AbstractC0181p0;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.ViewGroup;
import android.view.Window;
import androidx.appcompat.widget.Toolbar;
import java.util.ArrayList;
import l.r2;

/* loaded from: classes.dex */
public final class p0 extends AbstractC0823b {

    /* renamed from: a, reason: collision with root package name */
    public final r2 f13808a;

    /* renamed from: b, reason: collision with root package name */
    public final Window.Callback f13809b;

    /* renamed from: c, reason: collision with root package name */
    public final o0 f13810c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f13811d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f13812e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f13813f;

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f13814g = new ArrayList();

    /* renamed from: h, reason: collision with root package name */
    public final k0 f13815h = new k0(this);

    public p0(Toolbar toolbar, CharSequence charSequence, Window.Callback callback) {
        l0 l0Var = new l0(this);
        L.h.checkNotNull(toolbar);
        r2 r2Var = new r2(toolbar, false);
        this.f13808a = r2Var;
        this.f13809b = (Window.Callback) L.h.checkNotNull(callback);
        r2Var.setWindowCallback(callback);
        toolbar.setOnMenuItemClickListener(l0Var);
        r2Var.setWindowTitle(charSequence);
        this.f13810c = new o0(this);
    }

    @Override // e.AbstractC0823b
    public final void a() {
        this.f13808a.getViewGroup().removeCallbacks(this.f13815h);
    }

    @Override // e.AbstractC0823b
    public boolean closeOptionsMenu() {
        return this.f13808a.hideOverflowMenu();
    }

    @Override // e.AbstractC0823b
    public boolean collapseActionView() {
        r2 r2Var = this.f13808a;
        if (!r2Var.hasExpandedActionView()) {
            return false;
        }
        r2Var.collapseActionView();
        return true;
    }

    @Override // e.AbstractC0823b
    public void dispatchMenuVisibilityChanged(boolean z6) {
        if (z6 == this.f13813f) {
            return;
        }
        this.f13813f = z6;
        ArrayList arrayList = this.f13814g;
        if (arrayList.size() <= 0) {
            return;
        }
        arrayList.get(0).getClass();
        throw new ClassCastException();
    }

    @Override // e.AbstractC0823b
    public int getDisplayOptions() {
        return this.f13808a.getDisplayOptions();
    }

    @Override // e.AbstractC0823b
    public Context getThemedContext() {
        return this.f13808a.getContext();
    }

    @Override // e.AbstractC0823b
    public void hide() {
        this.f13808a.setVisibility(8);
    }

    @Override // e.AbstractC0823b
    public boolean invalidateOptionsMenu() {
        r2 r2Var = this.f13808a;
        ViewGroup viewGroup = r2Var.getViewGroup();
        k0 k0Var = this.f13815h;
        viewGroup.removeCallbacks(k0Var);
        AbstractC0181p0.postOnAnimation(r2Var.getViewGroup(), k0Var);
        return true;
    }

    @Override // e.AbstractC0823b
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    @Override // e.AbstractC0823b
    public boolean onKeyShortcut(int i2, KeyEvent keyEvent) {
        boolean z6 = this.f13812e;
        r2 r2Var = this.f13808a;
        if (!z6) {
            r2Var.setMenuCallbacks(new m0(this), new n0(this));
            this.f13812e = true;
        }
        Menu menu = r2Var.getMenu();
        if (menu == null) {
            return false;
        }
        menu.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
        return menu.performShortcut(i2, keyEvent, 0);
    }

    @Override // e.AbstractC0823b
    public boolean onMenuKeyEvent(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1) {
            openOptionsMenu();
        }
        return true;
    }

    @Override // e.AbstractC0823b
    public boolean openOptionsMenu() {
        return this.f13808a.showOverflowMenu();
    }

    @Override // e.AbstractC0823b
    public void setDisplayHomeAsUpEnabled(boolean z6) {
        setDisplayOptions(z6 ? 4 : 0, 4);
    }

    public void setDisplayOptions(int i2, int i7) {
        r2 r2Var = this.f13808a;
        r2Var.setDisplayOptions((i2 & i7) | ((~i7) & r2Var.getDisplayOptions()));
    }

    @Override // e.AbstractC0823b
    public void setHomeActionContentDescription(int i2) {
        this.f13808a.setNavigationContentDescription(i2);
    }

    @Override // e.AbstractC0823b
    public void setHomeAsUpIndicator(Drawable drawable) {
        this.f13808a.setNavigationIcon(drawable);
    }

    @Override // e.AbstractC0823b
    public void setSubtitle(CharSequence charSequence) {
        this.f13808a.setSubtitle(charSequence);
    }

    @Override // e.AbstractC0823b
    public void setTitle(CharSequence charSequence) {
        this.f13808a.setTitle(charSequence);
    }

    @Override // e.AbstractC0823b
    public void setWindowTitle(CharSequence charSequence) {
        this.f13808a.setWindowTitle(charSequence);
    }

    @Override // e.AbstractC0823b
    public void setHomeAsUpIndicator(int i2) {
        this.f13808a.setNavigationIcon(i2);
    }

    @Override // e.AbstractC0823b
    public void setDefaultDisplayHomeAsUpEnabled(boolean z6) {
    }

    @Override // e.AbstractC0823b
    public void setHomeButtonEnabled(boolean z6) {
    }

    @Override // e.AbstractC0823b
    public void setShowHideAnimationEnabled(boolean z6) {
    }
}
