package T2;

import S2.u;

/* loaded from: classes.dex */
public final class a extends g {

    /* renamed from: a, reason: collision with root package name */
    public Iterable f3653a;

    /* renamed from: b, reason: collision with root package name */
    public byte[] f3654b;

    @Override // T2.g
    public h build() {
        String str = this.f3653a == null ? " events" : "";
        if (str.isEmpty()) {
            return new b(this.f3653a, this.f3654b);
        }
        throw new IllegalStateException("Missing required properties:".concat(str));
    }

    @Override // T2.g
    public g setEvents(Iterable<u> iterable) {
        if (iterable == null) {
            throw new NullPointerException("Null events");
        }
        this.f3653a = iterable;
        return this;
    }

    @Override // T2.g
    public g setExtras(byte[] bArr) {
        this.f3654b = bArr;
        return this;
    }
}
