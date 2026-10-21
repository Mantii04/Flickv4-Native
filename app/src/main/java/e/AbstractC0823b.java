package e;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.view.KeyEvent;
import j.AbstractC1020c;
import j.InterfaceC1019b;

/* renamed from: e.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0823b {
    public boolean closeOptionsMenu() {
        return false;
    }

    public abstract boolean collapseActionView();

    public abstract void dispatchMenuVisibilityChanged(boolean z6);

    public abstract int getDisplayOptions();

    public abstract Context getThemedContext();

    public abstract void hide();

    public boolean invalidateOptionsMenu() {
        return false;
    }

    public abstract boolean onKeyShortcut(int i2, KeyEvent keyEvent);

    public boolean onMenuKeyEvent(KeyEvent keyEvent) {
        return false;
    }

    public boolean openOptionsMenu() {
        return false;
    }

    public abstract void setDefaultDisplayHomeAsUpEnabled(boolean z6);

    public abstract void setDisplayHomeAsUpEnabled(boolean z6);

    public abstract void setHomeActionContentDescription(int i2);

    public abstract void setHomeAsUpIndicator(int i2);

    public abstract void setHomeAsUpIndicator(Drawable drawable);

    public abstract void setHomeButtonEnabled(boolean z6);

    public abstract void setShowHideAnimationEnabled(boolean z6);

    public abstract void setSubtitle(CharSequence charSequence);

    public abstract void setTitle(CharSequence charSequence);

    public abstract void setWindowTitle(CharSequence charSequence);

    public AbstractC1020c startActionMode(InterfaceC1019b interfaceC1019b) {
        return null;
    }

    public void a() {
    }

    public void onConfigurationChanged(Configuration configuration) {
    }
}
