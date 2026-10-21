package o2;

import android.graphics.Bitmap;

/* renamed from: o2.t, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1446t extends AbstractC1429c {
    public C1445s get(int i2, Bitmap.Config config) {
        InterfaceC1443q interfaceC1443q = (InterfaceC1443q) this.f19044a.poll();
        if (interfaceC1443q == null) {
            interfaceC1443q = create();
        }
        C1445s c1445s = (C1445s) interfaceC1443q;
        c1445s.init(i2, config);
        return c1445s;
    }

    public C1445s create() {
        return new C1445s(this);
    }
}
