package u2;

import java.io.IOException;
import java.io.InputStream;
import n2.InterfaceC1391M;
import o2.InterfaceC1428b;

/* loaded from: classes.dex */
public final class N implements l2.r {

    /* renamed from: a, reason: collision with root package name */
    public final C1696x f20271a;

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC1428b f20272b;

    public N(C1696x c1696x, InterfaceC1428b interfaceC1428b) {
        this.f20271a = c1696x;
        this.f20272b = interfaceC1428b;
    }

    @Override // l2.r
    public InterfaceC1391M decode(InputStream inputStream, int i2, int i7, l2.q qVar) throws IOException {
        boolean z6;
        com.bumptech.glide.load.resource.bitmap.a aVar;
        if (inputStream instanceof com.bumptech.glide.load.resource.bitmap.a) {
            aVar = (com.bumptech.glide.load.resource.bitmap.a) inputStream;
            z6 = false;
        } else {
            z6 = true;
            aVar = new com.bumptech.glide.load.resource.bitmap.a(inputStream, this.f20272b);
        }
        G2.f obtain = G2.f.obtain(aVar);
        try {
            InterfaceC1391M decode = this.f20271a.decode(new G2.p(obtain), i2, i7, qVar, new M(aVar, obtain));
            obtain.release();
            if (z6) {
                aVar.release();
            }
            return decode;
        } finally {
        }
    }

    @Override // l2.r
    public boolean handles(InputStream inputStream, l2.q qVar) {
        return this.f20271a.handles(inputStream);
    }
}
