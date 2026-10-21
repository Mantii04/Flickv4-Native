package u2;

import android.graphics.Bitmap;
import n2.InterfaceC1387I;
import n2.InterfaceC1391M;
import o2.InterfaceC1430d;

/* renamed from: u2.e, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1678e implements InterfaceC1391M, InterfaceC1387I {

    /* renamed from: b, reason: collision with root package name */
    public final Bitmap f20287b;

    /* renamed from: e, reason: collision with root package name */
    public final InterfaceC1430d f20288e;

    public C1678e(Bitmap bitmap, InterfaceC1430d interfaceC1430d) {
        this.f20287b = (Bitmap) G2.r.checkNotNull(bitmap, "Bitmap must not be null");
        this.f20288e = (InterfaceC1430d) G2.r.checkNotNull(interfaceC1430d, "BitmapPool must not be null");
    }

    public static C1678e obtain(Bitmap bitmap, InterfaceC1430d interfaceC1430d) {
        if (bitmap == null) {
            return null;
        }
        return new C1678e(bitmap, interfaceC1430d);
    }

    @Override // n2.InterfaceC1391M
    public Class<Bitmap> getResourceClass() {
        return Bitmap.class;
    }

    @Override // n2.InterfaceC1391M
    public int getSize() {
        return G2.t.getBitmapByteSize(this.f20287b);
    }

    @Override // n2.InterfaceC1387I
    public void initialize() {
        this.f20287b.prepareToDraw();
    }

    @Override // n2.InterfaceC1391M
    public void recycle() {
        this.f20288e.put(this.f20287b);
    }

    @Override // n2.InterfaceC1391M
    public Bitmap get() {
        return this.f20287b;
    }
}
