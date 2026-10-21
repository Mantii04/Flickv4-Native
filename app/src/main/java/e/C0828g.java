package e;

import android.R;
import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;

/* renamed from: e.g, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0828g implements InterfaceC0825d {

    /* renamed from: a, reason: collision with root package name */
    public final Activity f13758a;

    public C0828g(Activity activity) {
        this.f13758a = activity;
    }

    @Override // e.InterfaceC0825d
    public Context getActionBarThemedContext() {
        Activity activity = this.f13758a;
        ActionBar actionBar = activity.getActionBar();
        return actionBar != null ? actionBar.getThemedContext() : activity;
    }

    @Override // e.InterfaceC0825d
    public Drawable getThemeUpIndicator() {
        TypedArray obtainStyledAttributes = getActionBarThemedContext().obtainStyledAttributes(null, new int[]{R.attr.homeAsUpIndicator}, R.attr.actionBarStyle, 0);
        Drawable drawable = obtainStyledAttributes.getDrawable(0);
        obtainStyledAttributes.recycle();
        return drawable;
    }

    @Override // e.InterfaceC0825d
    public boolean isNavigationVisible() {
        ActionBar actionBar = this.f13758a.getActionBar();
        return (actionBar == null || (actionBar.getDisplayOptions() & 4) == 0) ? false : true;
    }

    @Override // e.InterfaceC0825d
    public void setActionBarDescription(int i2) {
        ActionBar actionBar = this.f13758a.getActionBar();
        if (actionBar != null) {
            AbstractC0827f.a(actionBar, i2);
        }
    }

    @Override // e.InterfaceC0825d
    public void setActionBarUpIndicator(Drawable drawable, int i2) {
        ActionBar actionBar = this.f13758a.getActionBar();
        if (actionBar != null) {
            AbstractC0827f.b(actionBar, drawable);
            AbstractC0827f.a(actionBar, i2);
        }
    }
}
