package Q3;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* renamed from: Q3.o, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0245o extends AbstractC0246p implements Map {
    @Override // java.util.Map
    public void clear() {
        delegate().clear();
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        return delegate().containsKey(obj);
    }

    @Override // Q3.AbstractC0246p
    public abstract Map<Object, Object> delegate();

    @Override // java.util.Map
    public Set<Map.Entry<Object, Object>> entrySet() {
        return delegate().entrySet();
    }

    @Override // java.util.Map
    public Object get(Object obj) {
        return delegate().get(obj);
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return delegate().isEmpty();
    }

    @Override // java.util.Map
    public Set<Object> keySet() {
        return delegate().keySet();
    }

    @Override // java.util.Map
    public Object put(Object obj, Object obj2) {
        return delegate().put(obj, obj2);
    }

    @Override // java.util.Map
    public void putAll(Map<Object, Object> map) {
        delegate().putAll(map);
    }

    @Override // java.util.Map
    public Object remove(Object obj) {
        return delegate().remove(obj);
    }

    @Override // java.util.Map
    public int size() {
        return delegate().size();
    }

    public void standardClear() {
        F.a(entrySet().iterator());
    }

    public boolean standardContainsKey(Object obj) {
        return F.contains(new L(entrySet().iterator(), 0), obj);
    }

    public boolean standardContainsValue(Object obj) {
        return F.contains(new L(entrySet().iterator(), 1), obj);
    }

    public boolean standardEquals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Map) {
            return entrySet().equals(((Map) obj).entrySet());
        }
        return false;
    }

    public int standardHashCode() {
        return s0.b(entrySet());
    }

    public boolean standardIsEmpty() {
        return !entrySet().iterator().hasNext();
    }

    public void standardPutAll(Map<Object, Object> map) {
        for (Map.Entry<Object, Object> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    public Object standardRemove(Object obj) {
        Iterator<Map.Entry<Object, Object>> it = entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<Object, Object> next = it.next();
            if (P3.u.equal(next.getKey(), obj)) {
                Object value = next.getValue();
                it.remove();
                return value;
            }
        }
        return null;
    }

    public String standardToString() {
        return com.google.common.collect.C.b(this);
    }

    @Override // java.util.Map
    public Collection<Object> values() {
        return delegate().values();
    }
}
