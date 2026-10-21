package P3;

/* loaded from: classes2.dex */
public final class g extends f {

    /* renamed from: b, reason: collision with root package name */
    public final char f2697b;

    public g(char c7) {
        this.f2697b = c7;
    }

    @Override // P3.o
    public o and(o oVar) {
        return oVar.matches(this.f2697b) ? this : o.none();
    }

    @Override // P3.o
    public boolean matches(char c7) {
        return c7 == this.f2697b;
    }

    @Override // P3.f, P3.o
    public o negate() {
        return o.isNot(this.f2697b);
    }

    public String toString() {
        return "CharMatcher.is('" + o.a(this.f2697b) + "')";
    }
}
