package Q3;

import java.util.Iterator;
import java.util.Map;

/* loaded from: classes2.dex */
public final class P extends N {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Q f2867b;

    public P(Q q6) {
        this.f2867b = q6;
    }

    @Override // Q3.N
    public final Map a() {
        return this.f2867b;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<Map.Entry<Object, Object>> iterator() {
        return this.f2867b.a();
    }
}
