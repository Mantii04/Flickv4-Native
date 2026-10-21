package e;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.appcompat.widget.Toolbar;
import j.AbstractC1020c;
import j.InterfaceC1019b;
import l.x2;
import z.AbstractC1958d;
import z.AbstractC1975v;

/* renamed from: e.v, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractActivityC0842v extends androidx.fragment.app.H implements InterfaceC0843w, z.W, InterfaceC0826e {
    private static final String DELEGATE_TAG = "androidx:appcompat";
    private AbstractC0813A mDelegate;
    private Resources mResources;

    public AbstractActivityC0842v() {
        getSavedStateRegistry().registerSavedStateProvider(DELEGATE_TAG, new C0840t(this));
        addOnContextAvailableListener(new C0841u(this));
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        d();
        getDelegate().addContentView(view, layoutParams);
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public void attachBaseContext(Context context) {
        super.attachBaseContext(getDelegate().attachBaseContext2(context));
    }

    @Override // android.app.Activity
    public void closeOptionsMenu() {
        AbstractC0823b supportActionBar = getSupportActionBar();
        if (getWindow().hasFeature(0)) {
            if (supportActionBar == null || !supportActionBar.closeOptionsMenu()) {
                super.closeOptionsMenu();
            }
        }
    }

    public final void d() {
        androidx.lifecycle.k0.set(getWindow().getDecorView(), this);
        androidx.lifecycle.l0.set(getWindow().getDecorView(), this);
        androidx.savedstate.a.set(getWindow().getDecorView(), this);
        androidx.activity.A.set(getWindow().getDecorView(), this);
    }

    @Override // z.r, android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        AbstractC0823b supportActionBar = getSupportActionBar();
        if (keyCode == 82 && supportActionBar != null && supportActionBar.onMenuKeyEvent(keyEvent)) {
            return true;
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Activity
    public <T extends View> T findViewById(int i2) {
        return (T) getDelegate().findViewById(i2);
    }

    public AbstractC0813A getDelegate() {
        if (this.mDelegate == null) {
            this.mDelegate = AbstractC0813A.create(this, this);
        }
        return this.mDelegate;
    }

    @Override // e.InterfaceC0826e
    public InterfaceC0825d getDrawerToggleDelegate() {
        return getDelegate().getDrawerToggleDelegate();
    }

    @Override // android.app.Activity
    public MenuInflater getMenuInflater() {
        return getDelegate().getMenuInflater();
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        if (this.mResources == null && x2.shouldBeUsed()) {
            this.mResources = new x2(this, super.getResources());
        }
        Resources resources = this.mResources;
        return resources == null ? super.getResources() : resources;
    }

    public AbstractC0823b getSupportActionBar() {
        return getDelegate().getSupportActionBar();
    }

    @Override // z.W
    public Intent getSupportParentActivityIntent() {
        return AbstractC1975v.getParentActivityIntent(this);
    }

    @Override // android.app.Activity
    public void invalidateOptionsMenu() {
        getDelegate().invalidateOptionsMenu();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        getDelegate().onConfigurationChanged(configuration);
        if (this.mResources != null) {
            this.mResources.updateConfiguration(super.getResources().getConfiguration(), super.getResources().getDisplayMetrics());
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onContentChanged() {
        onSupportContentChanged();
    }

    public void onCreateSupportNavigateUpTaskStack(z.X x6) {
        x6.addParentStack(this);
    }

    @Override // androidx.fragment.app.H, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        getDelegate().onDestroy();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        Window window;
        if (Build.VERSION.SDK_INT >= 26 || keyEvent.isCtrlPressed() || KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState()) || keyEvent.getRepeatCount() != 0 || KeyEvent.isModifierKey(keyEvent.getKeyCode()) || (window = getWindow()) == null || window.getDecorView() == null || !window.getDecorView().dispatchKeyShortcutEvent(keyEvent)) {
            return super.onKeyDown(i2, keyEvent);
        }
        return true;
    }

    @Override // androidx.fragment.app.H, androidx.activity.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public final boolean onMenuItemSelected(int i2, MenuItem menuItem) {
        if (super.onMenuItemSelected(i2, menuItem)) {
            return true;
        }
        AbstractC0823b supportActionBar = getSupportActionBar();
        if (menuItem.getItemId() != 16908332 || supportActionBar == null || (supportActionBar.getDisplayOptions() & 4) == 0) {
            return false;
        }
        return onSupportNavigateUp();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuOpened(int i2, Menu menu) {
        return super.onMenuOpened(i2, menu);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i2, Menu menu) {
        super.onPanelClosed(i2, menu);
    }

    @Override // android.app.Activity
    public void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        getDelegate().onPostCreate(bundle);
    }

    @Override // androidx.fragment.app.H, android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        getDelegate().onPostResume();
    }

    @Override // androidx.fragment.app.H, android.app.Activity
    public void onStart() {
        super.onStart();
        getDelegate().onStart();
    }

    @Override // androidx.fragment.app.H, android.app.Activity
    public void onStop() {
        super.onStop();
        getDelegate().onStop();
    }

    public boolean onSupportNavigateUp() {
        Intent supportParentActivityIntent = getSupportParentActivityIntent();
        if (supportParentActivityIntent == null) {
            return false;
        }
        if (!supportShouldUpRecreateTask(supportParentActivityIntent)) {
            supportNavigateUpTo(supportParentActivityIntent);
            return true;
        }
        z.X create = z.X.create(this);
        onCreateSupportNavigateUpTaskStack(create);
        onPrepareSupportNavigateUpTaskStack(create);
        create.startActivities();
        try {
            AbstractC1958d.finishAffinity(this);
            return true;
        } catch (IllegalStateException unused) {
            finish();
            return true;
        }
    }

    @Override // android.app.Activity
    public void onTitleChanged(CharSequence charSequence, int i2) {
        super.onTitleChanged(charSequence, i2);
        getDelegate().setTitle(charSequence);
    }

    @Override // e.InterfaceC0843w
    public AbstractC1020c onWindowStartingSupportActionMode(InterfaceC1019b interfaceC1019b) {
        return null;
    }

    @Override // android.app.Activity
    public void openOptionsMenu() {
        AbstractC0823b supportActionBar = getSupportActionBar();
        if (getWindow().hasFeature(0)) {
            if (supportActionBar == null || !supportActionBar.openOptionsMenu()) {
                super.openOptionsMenu();
            }
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        d();
        getDelegate().setContentView(i2);
    }

    public void setSupportActionBar(Toolbar toolbar) {
        getDelegate().setSupportActionBar(toolbar);
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public void setTheme(int i2) {
        super.setTheme(i2);
        getDelegate().setTheme(i2);
    }

    public AbstractC1020c startSupportActionMode(InterfaceC1019b interfaceC1019b) {
        return getDelegate().startSupportActionMode(interfaceC1019b);
    }

    public void supportInvalidateOptionsMenu() {
        getDelegate().invalidateOptionsMenu();
    }

    public void supportNavigateUpTo(Intent intent) {
        AbstractC1975v.navigateUpTo(this, intent);
    }

    public boolean supportRequestWindowFeature(int i2) {
        return getDelegate().requestWindowFeature(i2);
    }

    public boolean supportShouldUpRecreateTask(Intent intent) {
        return AbstractC1975v.shouldUpRecreateTask(this, intent);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        d();
        getDelegate().setContentView(view);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        d();
        getDelegate().setContentView(view, layoutParams);
    }

    @Deprecated
    public void onSupportContentChanged() {
    }

    public void onLocalesChanged(I.o oVar) {
    }

    public void onNightModeChanged(int i2) {
    }

    public void onPrepareSupportNavigateUpTaskStack(z.X x6) {
    }

    @Override // e.InterfaceC0843w
    public void onSupportActionModeFinished(AbstractC1020c abstractC1020c) {
    }

    @Override // e.InterfaceC0843w
    public void onSupportActionModeStarted(AbstractC1020c abstractC1020c) {
    }

    @Deprecated
    public void setSupportProgress(int i2) {
    }

    @Deprecated
    public void setSupportProgressBarIndeterminate(boolean z6) {
    }

    @Deprecated
    public void setSupportProgressBarIndeterminateVisibility(boolean z6) {
    }

    @Deprecated
    public void setSupportProgressBarVisibility(boolean z6) {
    }
}
