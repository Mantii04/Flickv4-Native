package K3;

import android.graphics.RectF;
import android.graphics.drawable.Drawable;

/* renamed from: K3.f, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0140f extends G3.i {

    /* renamed from: q, reason: collision with root package name */
    public final RectF f1674q;

    public C0140f(G3.p pVar, RectF rectF) {
        super(pVar, null);
        this.f1674q = rectF;
    }

    @Override // G3.i, android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable() {
        C0141g c0141g = new C0141g(this);
        c0141g.f1676H = this;
        c0141g.invalidateSelf();
        return c0141g;
    }

    public C0140f(C0140f c0140f) {
        super(c0140f);
        this.f1674q = c0140f.f1674q;
    }
}
