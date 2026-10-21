package O0;

/* loaded from: classes.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public final int f2373a;

    /* renamed from: b, reason: collision with root package name */
    public final int f2374b;

    /* renamed from: c, reason: collision with root package name */
    public final float f2375c;

    public f(int i2, int i7, float f3) {
        this.f2373a = i2;
        this.f2374b = i7;
        this.f2375c = f3;
    }

    public static f a(int i2) {
        int i7 = (i2 >> 13) & 7;
        if (i7 == 0) {
            return null;
        }
        return new f(i7, (i2 >> 10) & 7, ((i2 & 511) * ((i2 & 512) != 0 ? -1 : 1)) / 10.0f);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return this.f2373a == fVar.f2373a && this.f2374b == fVar.f2374b && Float.compare(this.f2375c, fVar.f2375c) == 0;
    }

    public int hashCode() {
        return Float.floatToIntBits(this.f2375c) + (((this.f2373a * 31) + this.f2374b) * 31);
    }

    public String toString() {
        return "GainField{name=" + this.f2373a + ", originator=" + this.f2374b + ", gain=" + this.f2375c + '}';
    }
}
