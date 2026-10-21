package y1;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;

/* renamed from: y1.g, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1876g extends Drawable.ConstantState {

    /* renamed from: a, reason: collision with root package name */
    public final Drawable.ConstantState f20982a;

    public C1876g(Drawable.ConstantState constantState) {
        this.f20982a = constantState;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public boolean canApplyTheme() {
        return this.f20982a.canApplyTheme();
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public int getChangingConfigurations() {
        return this.f20982a.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable() {
        C1877h c1877h = new C1877h(null);
        Drawable newDrawable = this.f20982a.newDrawable();
        c1877h.f20990b = newDrawable;
        newDrawable.setCallback(c1877h.f20987n);
        return c1877h;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable(Resources resources) {
        C1877h c1877h = new C1877h(null);
        Drawable newDrawable = this.f20982a.newDrawable(resources);
        c1877h.f20990b = newDrawable;
        newDrawable.setCallback(c1877h.f20987n);
        return c1877h;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable(Resources resources, Resources.Theme theme) {
        C1877h c1877h = new C1877h(null);
        Drawable newDrawable = this.f20982a.newDrawable(resources, theme);
        c1877h.f20990b = newDrawable;
        newDrawable.setCallback(c1877h.f20987n);
        return c1877h;
    }
}
