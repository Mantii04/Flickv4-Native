package e;

import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.KeyboardShortcutGroup;
import android.view.Menu;
import android.view.View;
import android.view.Window;
import j.AbstractC1020c;
import j.AbstractWindowCallbackC1035r;
import j.C1025h;
import java.util.List;
import k.C1084p;

/* loaded from: classes.dex */
public final class S extends AbstractWindowCallbackC1035r {

    /* renamed from: e, reason: collision with root package name */
    public o0 f13656e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f13657f;

    /* renamed from: j, reason: collision with root package name */
    public boolean f13658j;

    /* renamed from: m, reason: collision with root package name */
    public boolean f13659m;

    /* renamed from: n, reason: collision with root package name */
    public final /* synthetic */ a0 f13660n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public S(a0 a0Var, Window.Callback callback) {
        super(callback);
        this.f13660n = a0Var;
    }

    public boolean bypassDispatchKeyEvent(Window.Callback callback, KeyEvent keyEvent) {
        try {
            this.f13658j = true;
            return callback.dispatchKeyEvent(keyEvent);
        } finally {
            this.f13658j = false;
        }
    }

    public void bypassOnContentChanged(Window.Callback callback) {
        try {
            this.f13657f = true;
            callback.onContentChanged();
        } finally {
            this.f13657f = false;
        }
    }

    public void bypassOnPanelClosed(Window.Callback callback, int i2, Menu menu) {
        try {
            this.f13659m = true;
            callback.onPanelClosed(i2, menu);
        } finally {
            this.f13659m = false;
        }
    }

    @Override // j.AbstractWindowCallbackC1035r, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return this.f13658j ? getWrapped().dispatchKeyEvent(keyEvent) : this.f13660n.j(keyEvent) || super.dispatchKeyEvent(keyEvent);
    }

    @Override // j.AbstractWindowCallbackC1035r, android.view.Window.Callback
    public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        if (!super.dispatchKeyShortcutEvent(keyEvent)) {
            int keyCode = keyEvent.getKeyCode();
            a0 a0Var = this.f13660n;
            AbstractC0823b supportActionBar = a0Var.getSupportActionBar();
            if (supportActionBar == null || !supportActionBar.onKeyShortcut(keyCode, keyEvent)) {
                Y y6 = a0Var.f13713W;
                if (y6 == null || !a0Var.t(y6, keyEvent.getKeyCode(), keyEvent)) {
                    if (a0Var.f13713W == null) {
                        Y panelState = a0Var.getPanelState(0, true);
                        a0Var.u(panelState, keyEvent);
                        boolean t6 = a0Var.t(panelState, keyEvent.getKeyCode(), keyEvent);
                        panelState.f13679k = false;
                        if (t6) {
                        }
                    }
                    return false;
                }
                Y y7 = a0Var.f13713W;
                if (y7 != null) {
                    y7.f13680l = true;
                    return true;
                }
            }
        }
        return true;
    }

    @Override // android.view.Window.Callback
    public void onContentChanged() {
        if (this.f13657f) {
            getWrapped().onContentChanged();
        }
    }

    @Override // j.AbstractWindowCallbackC1035r, android.view.Window.Callback
    public boolean onCreatePanelMenu(int i2, Menu menu) {
        if (i2 != 0 || (menu instanceof C1084p)) {
            return super.onCreatePanelMenu(i2, menu);
        }
        return false;
    }

    @Override // j.AbstractWindowCallbackC1035r, android.view.Window.Callback
    public View onCreatePanelView(int i2) {
        View onCreatePanelView;
        o0 o0Var = this.f13656e;
        return (o0Var == null || (onCreatePanelView = o0Var.onCreatePanelView(i2)) == null) ? super.onCreatePanelView(i2) : onCreatePanelView;
    }

    @Override // j.AbstractWindowCallbackC1035r, android.view.Window.Callback
    public boolean onMenuOpened(int i2, Menu menu) {
        super.onMenuOpened(i2, menu);
        a0 a0Var = this.f13660n;
        if (i2 == 108) {
            AbstractC0823b supportActionBar = a0Var.getSupportActionBar();
            if (supportActionBar != null) {
                supportActionBar.dispatchMenuVisibilityChanged(true);
            }
        } else {
            a0Var.getClass();
        }
        return true;
    }

    @Override // j.AbstractWindowCallbackC1035r, android.view.Window.Callback
    public void onPanelClosed(int i2, Menu menu) {
        if (this.f13659m) {
            getWrapped().onPanelClosed(i2, menu);
            return;
        }
        super.onPanelClosed(i2, menu);
        a0 a0Var = this.f13660n;
        if (i2 == 108) {
            AbstractC0823b supportActionBar = a0Var.getSupportActionBar();
            if (supportActionBar != null) {
                supportActionBar.dispatchMenuVisibilityChanged(false);
                return;
            }
            return;
        }
        if (i2 != 0) {
            a0Var.getClass();
            return;
        }
        Y panelState = a0Var.getPanelState(i2, true);
        if (panelState.f13681m) {
            a0Var.h(panelState, false);
        }
    }

    @Override // j.AbstractWindowCallbackC1035r, android.view.Window.Callback
    public boolean onPreparePanel(int i2, View view, Menu menu) {
        C1084p c1084p = menu instanceof C1084p ? (C1084p) menu : null;
        if (i2 == 0 && c1084p == null) {
            return false;
        }
        if (c1084p != null) {
            c1084p.setOverrideVisibleItems(true);
        }
        o0 o0Var = this.f13656e;
        boolean z6 = o0Var != null && o0Var.onPreparePanel(i2);
        if (!z6) {
            z6 = super.onPreparePanel(i2, view, menu);
        }
        if (c1084p != null) {
            c1084p.setOverrideVisibleItems(false);
        }
        return z6;
    }

    @Override // j.AbstractWindowCallbackC1035r, android.view.Window.Callback
    public void onProvideKeyboardShortcuts(List<KeyboardShortcutGroup> list, Menu menu, int i2) {
        C1084p c1084p;
        Y panelState = this.f13660n.getPanelState(0, true);
        if (panelState == null || (c1084p = panelState.f13676h) == null) {
            super.onProvideKeyboardShortcuts(list, menu, i2);
        } else {
            super.onProvideKeyboardShortcuts(list, c1084p, i2);
        }
    }

    @Override // android.view.Window.Callback
    public ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
        return null;
    }

    @Override // j.AbstractWindowCallbackC1035r, android.view.Window.Callback
    public ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i2) {
        a0 a0Var = this.f13660n;
        if (!a0Var.isHandleNativeActionModesEnabled() || i2 != 0) {
            return super.onWindowStartingActionMode(callback, i2);
        }
        C1025h c1025h = new C1025h(a0Var.f13735t, callback);
        AbstractC1020c startSupportActionMode = a0Var.startSupportActionMode(c1025h);
        if (startSupportActionMode != null) {
            return c1025h.getActionModeWrapper(startSupportActionMode);
        }
        return null;
    }
}
