package u2;

import android.graphics.Bitmap;
import n2.InterfaceC1391M;

/* loaded from: classes.dex */
public final class Q implements InterfaceC1391M {

    /* renamed from: b, reason: collision with root package name */
    public final Bitmap f20275b;

    public Q(Bitmap bitmap) {
        this.f20275b = bitmap;
    }

    @Override // n2.InterfaceC1391M
    public Class<Bitmap> getResourceClass() {
        return Bitmap.class;
    }

    @Override // n2.InterfaceC1391M
    public int getSize() {
        return G2.t.getBitmapByteSize(this.f20275b);
    }

    @Override // n2.InterfaceC1391M
    public Bitmap get() {
        return this.f20275b;
    }

    @Override // n2.InterfaceC1391M
    public void recycle() {
    }
}
