package S2;

/* loaded from: classes.dex */
public final class l extends C {

    /* renamed from: a, reason: collision with root package name */
    public final E f3349a;

    /* renamed from: b, reason: collision with root package name */
    public final String f3350b;

    /* renamed from: c, reason: collision with root package name */
    public final P2.c f3351c;

    /* renamed from: d, reason: collision with root package name */
    public final P2.d f3352d;

    /* renamed from: e, reason: collision with root package name */
    public final P2.b f3353e;

    public l(E e3, String str, P2.c cVar, P2.d dVar, P2.b bVar) {
        this.f3349a = e3;
        this.f3350b = str;
        this.f3351c = cVar;
        this.f3352d = dVar;
        this.f3353e = bVar;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C) {
            C c7 = (C) obj;
            if (this.f3349a.equals(c7.getTransportContext()) && this.f3350b.equals(c7.getTransportName())) {
                l lVar = (l) c7;
                if (this.f3351c.equals(lVar.f3351c) && this.f3352d.equals(lVar.f3352d) && this.f3353e.equals(c7.getEncoding())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // S2.C
    public P2.b getEncoding() {
        return this.f3353e;
    }

    @Override // S2.C
    public E getTransportContext() {
        return this.f3349a;
    }

    @Override // S2.C
    public String getTransportName() {
        return this.f3350b;
    }

    public int hashCode() {
        return ((((((((this.f3349a.hashCode() ^ 1000003) * 1000003) ^ this.f3350b.hashCode()) * 1000003) ^ this.f3351c.hashCode()) * 1000003) ^ this.f3352d.hashCode()) * 1000003) ^ this.f3353e.hashCode();
    }

    public String toString() {
        return "SendRequest{transportContext=" + this.f3349a + ", transportName=" + this.f3350b + ", event=" + this.f3351c + ", transformer=" + this.f3352d + ", encoding=" + this.f3353e + "}";
    }
}
