package S2;

/* renamed from: S2.k, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0321k extends B {

    /* renamed from: a, reason: collision with root package name */
    public E f3344a;

    /* renamed from: b, reason: collision with root package name */
    public String f3345b;

    /* renamed from: c, reason: collision with root package name */
    public P2.c f3346c;

    /* renamed from: d, reason: collision with root package name */
    public P2.d f3347d;

    /* renamed from: e, reason: collision with root package name */
    public P2.b f3348e;

    public C build() {
        String str = this.f3344a == null ? " transportContext" : "";
        if (this.f3345b == null) {
            str = str.concat(" transportName");
        }
        if (this.f3346c == null) {
            str = A.i.B(str, " event");
        }
        if (this.f3347d == null) {
            str = A.i.B(str, " transformer");
        }
        if (this.f3348e == null) {
            str = A.i.B(str, " encoding");
        }
        if (str.isEmpty()) {
            return new l(this.f3344a, this.f3345b, this.f3346c, this.f3347d, this.f3348e);
        }
        throw new IllegalStateException("Missing required properties:".concat(str));
    }

    @Override // S2.B
    public B setTransportContext(E e3) {
        if (e3 == null) {
            throw new NullPointerException("Null transportContext");
        }
        this.f3344a = e3;
        return this;
    }

    public B setTransportName(String str) {
        if (str == null) {
            throw new NullPointerException("Null transportName");
        }
        this.f3345b = str;
        return this;
    }
}
