package y2;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;

/* renamed from: y2.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1881c extends Drawable.ConstantState {

    /* renamed from: a, reason: collision with root package name */
    public final k f21063a;

    public C1881c(k kVar) {
        this.f21063a = kVar;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public int getChangingConfigurations() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable(Resources resources) {
        return newDrawable();
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable() {
        return new C1882d(this);
    }
}
