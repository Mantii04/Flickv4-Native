package y2;

import android.graphics.drawable.Drawable;

/* renamed from: y2.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1884f extends w2.f {
    public C1884f(C1882d c1882d) {
        super(c1882d);
    }

    @Override // n2.InterfaceC1391M
    public Class<C1882d> getResourceClass() {
        return C1882d.class;
    }

    @Override // n2.InterfaceC1391M
    public int getSize() {
        return ((C1882d) this.f20677b).getSize();
    }

    @Override // w2.f, n2.InterfaceC1387I
    public void initialize() {
        ((C1882d) this.f20677b).getFirstFrame().prepareToDraw();
    }

    @Override // n2.InterfaceC1391M
    public void recycle() {
        Drawable drawable = this.f20677b;
        ((C1882d) drawable).stop();
        ((C1882d) drawable).recycle();
    }
}
