package o2;

/* renamed from: o2.j, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1436j implements InterfaceC1443q {

    /* renamed from: a, reason: collision with root package name */
    public final C1437k f19051a;

    /* renamed from: b, reason: collision with root package name */
    public int f19052b;

    /* renamed from: c, reason: collision with root package name */
    public Class f19053c;

    public C1436j(C1437k c1437k) {
        this.f19051a = c1437k;
    }

    public boolean equals(Object obj) {
        if (obj instanceof C1436j) {
            C1436j c1436j = (C1436j) obj;
            if (this.f19052b == c1436j.f19052b && this.f19053c == c1436j.f19053c) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int i2 = this.f19052b * 31;
        Class cls = this.f19053c;
        return i2 + (cls != null ? cls.hashCode() : 0);
    }

    @Override // o2.InterfaceC1443q
    public void offer() {
        this.f19051a.offer(this);
    }

    public String toString() {
        return "Key{size=" + this.f19052b + "array=" + this.f19053c + '}';
    }
}
