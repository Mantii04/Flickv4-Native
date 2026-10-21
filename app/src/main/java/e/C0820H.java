package e;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.appcompat.R;
import l.e2;

/* renamed from: e.H, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0820H implements InterfaceC0825d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ a0 f13651a;

    public C0820H(a0 a0Var) {
        this.f13651a = a0Var;
    }

    @Override // e.InterfaceC0825d
    public Context getActionBarThemedContext() {
        a0 a0Var = this.f13651a;
        AbstractC0823b supportActionBar = a0Var.getSupportActionBar();
        Context themedContext = supportActionBar != null ? supportActionBar.getThemedContext() : null;
        return themedContext == null ? a0Var.f13735t : themedContext;
    }

    @Override // e.InterfaceC0825d
    public Drawable getThemeUpIndicator() {
        e2 obtainStyledAttributes = e2.obtainStyledAttributes(getActionBarThemedContext(), (AttributeSet) null, new int[]{R.attr.homeAsUpIndicator});
        Drawable drawable = obtainStyledAttributes.getDrawable(0);
        obtainStyledAttributes.recycle();
        return drawable;
    }

    @Override // e.InterfaceC0825d
    public boolean isNavigationVisible() {
        AbstractC0823b supportActionBar = this.f13651a.getSupportActionBar();
        return (supportActionBar == null || (supportActionBar.getDisplayOptions() & 4) == 0) ? false : true;
    }

    @Override // e.InterfaceC0825d
    public void setActionBarDescription(int i2) {
        AbstractC0823b supportActionBar = this.f13651a.getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setHomeActionContentDescription(i2);
        }
    }

    @Override // e.InterfaceC0825d
    public void setActionBarUpIndicator(Drawable drawable, int i2) {
        AbstractC0823b supportActionBar = this.f13651a.getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setHomeAsUpIndicator(drawable);
            supportActionBar.setHomeActionContentDescription(i2);
        }
    }
}
