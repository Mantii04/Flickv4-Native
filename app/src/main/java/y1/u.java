package y1;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;

/* loaded from: classes.dex */
public final class u extends Drawable.ConstantState {

    /* renamed from: a, reason: collision with root package name */
    public final Drawable.ConstantState f21044a;

    public u(Drawable.ConstantState constantState) {
        this.f21044a = constantState;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public boolean canApplyTheme() {
        return this.f21044a.canApplyTheme();
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public int getChangingConfigurations() {
        return this.f21044a.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable() {
        v vVar = new v();
        vVar.f20990b = (VectorDrawable) this.f21044a.newDrawable();
        return vVar;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable(Resources resources) {
        v vVar = new v();
        vVar.f20990b = (VectorDrawable) this.f21044a.newDrawable(resources);
        return vVar;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable(Resources resources, Resources.Theme theme) {
        v vVar = new v();
        vVar.f20990b = (VectorDrawable) this.f21044a.newDrawable(resources, theme);
        return vVar;
    }
}
