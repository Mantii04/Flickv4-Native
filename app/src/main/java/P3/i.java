package P3;

/* loaded from: classes2.dex */
public final class i extends f {

    /* renamed from: b, reason: collision with root package name */
    public final char f2700b;

    public i(char c7) {
        this.f2700b = c7;
    }

    @Override // P3.o
    public o and(o oVar) {
        return oVar.matches(this.f2700b) ? super.and(oVar) : oVar;
    }

    @Override // P3.o
    public boolean matches(char c7) {
        return c7 != this.f2700b;
    }

    @Override // P3.f, P3.o
    public o negate() {
        return o.is(this.f2700b);
    }

    public String toString() {
        return "CharMatcher.isNot('" + o.a(this.f2700b) + "')";
    }
}
