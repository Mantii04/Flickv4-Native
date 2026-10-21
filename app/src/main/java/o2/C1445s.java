package o2;

import android.graphics.Bitmap;

/* renamed from: o2.s, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1445s implements InterfaceC1443q {

    /* renamed from: a, reason: collision with root package name */
    public final C1446t f19071a;

    /* renamed from: b, reason: collision with root package name */
    public int f19072b;

    /* renamed from: c, reason: collision with root package name */
    public Bitmap.Config f19073c;

    public C1445s(C1446t c1446t) {
        this.f19071a = c1446t;
    }

    public boolean equals(Object obj) {
        if (obj instanceof C1445s) {
            C1445s c1445s = (C1445s) obj;
            if (this.f19072b == c1445s.f19072b && G2.t.bothNullOrEqual(this.f19073c, c1445s.f19073c)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int i2 = this.f19072b * 31;
        Bitmap.Config config = this.f19073c;
        return i2 + (config != null ? config.hashCode() : 0);
    }

    public void init(int i2, Bitmap.Config config) {
        this.f19072b = i2;
        this.f19073c = config;
    }

    @Override // o2.InterfaceC1443q
    public void offer() {
        this.f19071a.offer(this);
    }

    public String toString() {
        return C1447u.b(this.f19072b, this.f19073c);
    }
}
