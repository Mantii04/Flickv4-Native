package w2;

import android.graphics.drawable.Drawable;

/* loaded from: classes.dex */
public final class g extends f {
    @Override // n2.InterfaceC1391M
    public Class<Drawable> getResourceClass() {
        return this.f20677b.getClass();
    }

    @Override // n2.InterfaceC1391M
    public int getSize() {
        Drawable drawable = this.f20677b;
        return Math.max(1, drawable.getIntrinsicHeight() * drawable.getIntrinsicWidth() * 4);
    }

    @Override // n2.InterfaceC1391M
    public void recycle() {
    }
}
