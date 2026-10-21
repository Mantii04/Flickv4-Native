package P3;

/* loaded from: classes2.dex */
public final class h extends f {

    /* renamed from: b, reason: collision with root package name */
    public final char f2698b;

    /* renamed from: e, reason: collision with root package name */
    public final char f2699e;

    public h(char c7, char c8) {
        this.f2698b = c7;
        this.f2699e = c8;
    }

    @Override // P3.o
    public boolean matches(char c7) {
        return c7 == this.f2698b || c7 == this.f2699e;
    }

    public String toString() {
        return "CharMatcher.anyOf(\"" + o.a(this.f2698b) + o.a(this.f2699e) + "\")";
    }
}
