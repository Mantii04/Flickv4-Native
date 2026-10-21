package p;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public class g extends q implements Map {

    /* renamed from: j, reason: collision with root package name */
    public C1474a f19381j;

    /* renamed from: m, reason: collision with root package name */
    public c f19382m;

    /* renamed from: n, reason: collision with root package name */
    public e f19383n;

    public g() {
    }

    public boolean containsAll(Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!containsKey(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // p.q, java.util.Map
    public boolean containsKey(Object obj) {
        return super.containsKey(obj);
    }

    @Override // p.q, java.util.Map
    public boolean containsValue(Object obj) {
        return super.containsValue(obj);
    }

    @Override // java.util.Map
    public Set<Map.Entry<Object, Object>> entrySet() {
        C1474a c1474a = this.f19381j;
        if (c1474a != null) {
            return c1474a;
        }
        C1474a c1474a2 = new C1474a(this);
        this.f19381j = c1474a2;
        return c1474a2;
    }

    @Override // p.q, java.util.Map
    public Object get(Object obj) {
        return super.get(obj);
    }

    @Override // java.util.Map
    public Set<Object> keySet() {
        c cVar = this.f19382m;
        if (cVar != null) {
            return cVar;
        }
        c cVar2 = new c(this);
        this.f19382m = cVar2;
        return cVar2;
    }

    @Override // java.util.Map
    public void putAll(Map<Object, Object> map) {
        ensureCapacity(map.size() + size());
        for (Map.Entry<Object, Object> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // p.q, java.util.Map
    public Object remove(Object obj) {
        return super.remove(obj);
    }

    public boolean removeAll(Collection<?> collection) {
        int size = size();
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            remove(it.next());
        }
        return size != size();
    }

    public boolean retainAll(Collection<?> collection) {
        int size = size();
        for (int size2 = size() - 1; size2 >= 0; size2--) {
            if (!collection.contains(keyAt(size2))) {
                removeAt(size2);
            }
        }
        return size != size();
    }

    @Override // java.util.Map
    public Collection<Object> values() {
        e eVar = this.f19383n;
        if (eVar != null) {
            return eVar;
        }
        e eVar2 = new e(this);
        this.f19383n = eVar2;
        return eVar2;
    }

    public g(int i2) {
        super(i2);
    }

    public g(q qVar) {
        super(qVar);
    }
}
