package g;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import p.r;

/* loaded from: classes.dex */
public final class b extends o {

    /* renamed from: I, reason: collision with root package name */
    public p.n f16313I;

    /* renamed from: J, reason: collision with root package name */
    public r f16314J;

    public b(b bVar, g gVar, Resources resources) {
        super(bVar, gVar, resources);
        if (bVar != null) {
            this.f16388H = bVar.f16388H;
        } else {
            this.f16388H = new int[this.f16341g.length][];
        }
        if (bVar != null) {
            this.f16313I = bVar.f16313I;
            this.f16314J = bVar.f16314J;
        } else {
            this.f16313I = new p.n();
            this.f16314J = new r();
        }
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable() {
        return new g(this, null);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable(Resources resources) {
        return new g(this, resources);
    }
}
