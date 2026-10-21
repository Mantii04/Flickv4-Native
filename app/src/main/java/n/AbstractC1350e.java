package n;

import java.util.Iterator;
import java.util.Map;

/* renamed from: n.e, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1350e extends AbstractC1351f implements Iterator {

    /* renamed from: b, reason: collision with root package name */
    public C1348c f18762b;

    /* renamed from: e, reason: collision with root package name */
    public C1348c f18763e;

    public abstract C1348c a(C1348c c1348c);

    public abstract C1348c b(C1348c c1348c);

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f18763e != null;
    }

    @Override // n.AbstractC1351f
    public void supportRemove(C1348c c1348c) {
        C1348c c1348c2 = null;
        if (this.f18762b == c1348c && c1348c == this.f18763e) {
            this.f18763e = null;
            this.f18762b = null;
        }
        C1348c c1348c3 = this.f18762b;
        if (c1348c3 == c1348c) {
            this.f18762b = a(c1348c3);
        }
        C1348c c1348c4 = this.f18763e;
        if (c1348c4 == c1348c) {
            C1348c c1348c5 = this.f18762b;
            if (c1348c4 != c1348c5 && c1348c5 != null) {
                c1348c2 = b(c1348c4);
            }
            this.f18763e = c1348c2;
        }
    }

    @Override // java.util.Iterator
    public Map.Entry<Object, Object> next() {
        C1348c c1348c = this.f18763e;
        C1348c c1348c2 = this.f18762b;
        this.f18763e = (c1348c == c1348c2 || c1348c2 == null) ? null : b(c1348c);
        return c1348c;
    }
}
