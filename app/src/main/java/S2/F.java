package S2;

import java.util.Set;

/* loaded from: classes.dex */
public final class F implements P2.f {

    /* renamed from: a, reason: collision with root package name */
    public final Set f3293a;

    /* renamed from: b, reason: collision with root package name */
    public final E f3294b;

    /* renamed from: c, reason: collision with root package name */
    public final H f3295c;

    public F(Set set, E e3, H h7) {
        this.f3293a = set;
        this.f3294b = e3;
        this.f3295c = h7;
    }

    public <T> P2.e getTransport(String str, Class<T> cls, P2.b bVar, P2.d dVar) {
        Set set = this.f3293a;
        if (set.contains(bVar)) {
            return new G(this.f3294b, str, bVar, dVar, this.f3295c);
        }
        throw new IllegalArgumentException(String.format("%s is not supported byt this factory. Supported encodings are: %s.", bVar, set));
    }
}
