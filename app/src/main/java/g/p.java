package g;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;

/* loaded from: classes.dex */
public abstract class p extends l {

    /* renamed from: w, reason: collision with root package name */
    public o f16389w;

    /* renamed from: x, reason: collision with root package name */
    public boolean f16390x;

    @Override // g.l, android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
        onStateChange(getState());
    }

    @Override // g.l, android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f16390x && super.mutate() == this) {
            b bVar = (b) this.f16389w;
            bVar.f16313I = bVar.f16313I.clone();
            bVar.f16314J = bVar.f16314J.clone();
            this.f16390x = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public abstract boolean onStateChange(int[] iArr);
}
