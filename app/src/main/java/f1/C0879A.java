package f1;

/* renamed from: f1.A, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0879A {

    /* renamed from: a, reason: collision with root package name */
    public final C0915v f14099a;

    /* renamed from: b, reason: collision with root package name */
    public int f14100b = 1;

    /* renamed from: c, reason: collision with root package name */
    public boolean f14101c = false;

    /* renamed from: d, reason: collision with root package name */
    public boolean f14102d = false;

    /* renamed from: e, reason: collision with root package name */
    public boolean f14103e = false;

    public C0879A(C0915v c0915v) {
        if (c0915v == null) {
            throw new NullPointerException("descriptor must not be null");
        }
        this.f14099a = c0915v;
    }

    public C0880B build() {
        return new C0880B(this.f14099a, this.f14100b, this.f14101c, this.f14102d, this.f14103e);
    }

    public C0879A setIsGroupable(boolean z6) {
        this.f14102d = z6;
        return this;
    }

    public C0879A setIsTransferable(boolean z6) {
        this.f14103e = z6;
        return this;
    }

    public C0879A setIsUnselectable(boolean z6) {
        this.f14101c = z6;
        return this;
    }

    public C0879A setSelectionState(int i2) {
        this.f14100b = i2;
        return this;
    }
}
