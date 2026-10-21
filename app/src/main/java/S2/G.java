package S2;

/* loaded from: classes.dex */
public final class G implements P2.e {

    /* renamed from: a, reason: collision with root package name */
    public final E f3296a;

    /* renamed from: b, reason: collision with root package name */
    public final String f3297b;

    /* renamed from: c, reason: collision with root package name */
    public final P2.b f3298c;

    /* renamed from: d, reason: collision with root package name */
    public final P2.d f3299d;

    /* renamed from: e, reason: collision with root package name */
    public final H f3300e;

    public G(E e3, String str, P2.b bVar, P2.d dVar, H h7) {
        this.f3296a = e3;
        this.f3297b = str;
        this.f3298c = bVar;
        this.f3299d = dVar;
        this.f3300e = h7;
    }

    public void schedule(P2.c cVar, P2.g gVar) {
        C0321k c0321k = (C0321k) C.builder().setTransportContext(this.f3296a);
        if (cVar == null) {
            c0321k.getClass();
            throw new NullPointerException("Null event");
        }
        c0321k.f3346c = cVar;
        C0321k c0321k2 = (C0321k) c0321k.setTransportName(this.f3297b);
        P2.d dVar = this.f3299d;
        if (dVar == null) {
            c0321k2.getClass();
            throw new NullPointerException("Null transformer");
        }
        c0321k2.f3347d = dVar;
        P2.b bVar = this.f3298c;
        if (bVar == null) {
            throw new NullPointerException("Null encoding");
        }
        c0321k2.f3348e = bVar;
        this.f3300e.send(c0321k2.build(), gVar);
    }

    public void send(P2.c cVar) {
        schedule(cVar, new J0.g(6));
    }
}
