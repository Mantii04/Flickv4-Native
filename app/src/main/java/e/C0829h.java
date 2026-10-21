package e;

import android.content.Context;
import android.graphics.drawable.Drawable;
import androidx.appcompat.widget.Toolbar;

/* renamed from: e.h, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0829h implements InterfaceC0825d {

    /* renamed from: a, reason: collision with root package name */
    public final Toolbar f13759a;

    /* renamed from: b, reason: collision with root package name */
    public final Drawable f13760b;

    /* renamed from: c, reason: collision with root package name */
    public final CharSequence f13761c;

    public C0829h(Toolbar toolbar) {
        this.f13759a = toolbar;
        this.f13760b = toolbar.getNavigationIcon();
        this.f13761c = toolbar.getNavigationContentDescription();
    }

    @Override // e.InterfaceC0825d
    public Context getActionBarThemedContext() {
        return this.f13759a.getContext();
    }

    @Override // e.InterfaceC0825d
    public Drawable getThemeUpIndicator() {
        return this.f13760b;
    }

    @Override // e.InterfaceC0825d
    public boolean isNavigationVisible() {
        return true;
    }

    @Override // e.InterfaceC0825d
    public void setActionBarDescription(int i2) {
        Toolbar toolbar = this.f13759a;
        if (i2 == 0) {
            toolbar.setNavigationContentDescription(this.f13761c);
        } else {
            toolbar.setNavigationContentDescription(i2);
        }
    }

    @Override // e.InterfaceC0825d
    public void setActionBarUpIndicator(Drawable drawable, int i2) {
        this.f13759a.setNavigationIcon(drawable);
        setActionBarDescription(i2);
    }
}
