package Q3;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* loaded from: classes2.dex */
public final class T extends Q {

    /* renamed from: b, reason: collision with root package name */
    public final Map f2869b;

    /* renamed from: e, reason: collision with root package name */
    public final O f2870e;

    public T(Map map, O o6) {
        this.f2869b = (Map) P3.v.checkNotNull(map);
        this.f2870e = (O) P3.v.checkNotNull(o6);
    }

    @Override // Q3.Q
    public final Iterator a() {
        Iterator it = this.f2869b.entrySet().iterator();
        O o6 = this.f2870e;
        P3.v.checkNotNull(o6);
        return F.transform(it, new K(o6));
    }

    @Override // Q3.Q, java.util.AbstractMap, java.util.Map
    public void clear() {
        this.f2869b.clear();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        return this.f2869b.containsKey(obj);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object get(Object obj) {
        Map map = this.f2869b;
        Object obj2 = map.get(obj);
        if (obj2 != null || map.containsKey(obj)) {
            return this.f2870e.transformEntry(obj, obj2);
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Object> keySet() {
        return this.f2869b.keySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object remove(Object obj) {
        Map map = this.f2869b;
        if (!map.containsKey(obj)) {
            return null;
        }
        return this.f2870e.transformEntry(obj, map.remove(obj));
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f2869b.size();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Collection<Object> values() {
        return new U(this);
    }
}
