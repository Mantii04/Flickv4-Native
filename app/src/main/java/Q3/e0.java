package Q3;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes2.dex */
public abstract class e0 extends AbstractC0237g {

    /* renamed from: m, reason: collision with root package name */
    public final W f2880m;

    /* renamed from: n, reason: collision with root package name */
    public final O f2881n;

    public e0(G g7, O o6) {
        this.f2880m = (W) P3.v.checkNotNull(g7);
        this.f2881n = (O) P3.v.checkNotNull(o6);
    }

    @Override // Q3.AbstractC0237g
    public final Map a() {
        return com.google.common.collect.C.transformEntries(this.f2880m.asMap(), new O() { // from class: Q3.d0
            @Override // Q3.O
            public final Object transformEntry(Object obj, Object obj2) {
                e0 e0Var = e0.this;
                e0Var.getClass();
                O o6 = ((c0) e0Var).f2881n;
                P3.v.checkNotNull(o6);
                return com.google.common.collect.B.transform((List) ((Collection) obj2), new H(o6, obj));
            }
        });
    }

    @Override // Q3.AbstractC0237g
    public final Collection b() {
        return new C0235e(this);
    }

    @Override // Q3.AbstractC0237g
    public final Set c() {
        return this.f2880m.keySet();
    }

    @Override // Q3.W
    public void clear() {
        this.f2880m.clear();
    }

    @Override // Q3.AbstractC0237g
    public final Collection d() {
        Collection<Map.Entry<Object, Object>> entries = this.f2880m.entries();
        O o6 = this.f2881n;
        P3.v.checkNotNull(o6);
        return AbstractC0241k.transform(entries, new I(o6));
    }

    @Override // Q3.AbstractC0237g
    public final Iterator e() {
        Iterator<Map.Entry<Object, Object>> it = this.f2880m.entries().iterator();
        O o6 = this.f2881n;
        P3.v.checkNotNull(o6);
        return F.transform(it, new K(o6));
    }

    @Override // Q3.W
    public abstract Collection<Object> get(Object obj);

    @Override // Q3.AbstractC0237g, Q3.W
    public boolean isEmpty() {
        return this.f2880m.isEmpty();
    }

    @Override // Q3.W
    public boolean put(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override // Q3.AbstractC0237g, Q3.W
    public boolean remove(Object obj, Object obj2) {
        return get(obj).remove(obj2);
    }

    @Override // Q3.W
    public int size() {
        return this.f2880m.size();
    }
}
