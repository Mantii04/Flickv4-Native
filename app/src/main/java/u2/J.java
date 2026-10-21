package u2;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import n2.InterfaceC1387I;
import n2.InterfaceC1391M;

/* loaded from: classes.dex */
public final class J implements InterfaceC1391M, InterfaceC1387I {

    /* renamed from: b, reason: collision with root package name */
    public final Resources f20264b;

    /* renamed from: e, reason: collision with root package name */
    public final InterfaceC1391M f20265e;

    public J(Resources resources, InterfaceC1391M interfaceC1391M) {
        this.f20264b = (Resources) G2.r.checkNotNull(resources);
        this.f20265e = (InterfaceC1391M) G2.r.checkNotNull(interfaceC1391M);
    }

    public static InterfaceC1391M obtain(Resources resources, InterfaceC1391M interfaceC1391M) {
        if (interfaceC1391M == null) {
            return null;
        }
        return new J(resources, interfaceC1391M);
    }

    @Override // n2.InterfaceC1391M
    public Class<BitmapDrawable> getResourceClass() {
        return BitmapDrawable.class;
    }

    @Override // n2.InterfaceC1391M
    public int getSize() {
        return this.f20265e.getSize();
    }

    @Override // n2.InterfaceC1387I
    public void initialize() {
        InterfaceC1391M interfaceC1391M = this.f20265e;
        if (interfaceC1391M instanceof InterfaceC1387I) {
            ((InterfaceC1387I) interfaceC1391M).initialize();
        }
    }

    @Override // n2.InterfaceC1391M
    public void recycle() {
        this.f20265e.recycle();
    }

    @Override // n2.InterfaceC1391M
    public BitmapDrawable get() {
        return new BitmapDrawable(this.f20264b, (Bitmap) this.f20265e.get());
    }
}
