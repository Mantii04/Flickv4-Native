package Q3;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* renamed from: Q3.g, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0237g implements W {

    /* renamed from: b, reason: collision with root package name */
    public transient Collection f2882b;

    /* renamed from: e, reason: collision with root package name */
    public transient Set f2883e;

    /* renamed from: f, reason: collision with root package name */
    public transient Collection f2884f;

    /* renamed from: j, reason: collision with root package name */
    public transient Map f2885j;

    public abstract Map a();

    @Override // Q3.W
    public Map<Object, Collection<Object>> asMap() {
        Map<Object, Collection<Object>> map = this.f2885j;
        if (map != null) {
            return map;
        }
        Map<Object, Collection<Object>> a7 = a();
        this.f2885j = a7;
        return a7;
    }

    public abstract Collection b();

    public abstract Set c();

    @Override // Q3.W
    public boolean containsEntry(Object obj, Object obj2) {
        Collection<Object> collection = asMap().get(obj);
        return collection != null && collection.contains(obj2);
    }

    public boolean containsValue(Object obj) {
        Iterator<Collection<Object>> it = asMap().values().iterator();
        while (it.hasNext()) {
            if (it.next().contains(obj)) {
                return true;
            }
        }
        return false;
    }

    public abstract Collection d();

    public abstract Iterator e();

    @Override // Q3.W
    public Collection<Map.Entry<Object, Object>> entries() {
        Collection<Map.Entry<Object, Object>> collection = this.f2882b;
        if (collection != null) {
            return collection;
        }
        Collection<Map.Entry<Object, Object>> b7 = b();
        this.f2882b = b7;
        return b7;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof W) {
            return asMap().equals(((W) obj).asMap());
        }
        return false;
    }

    public int hashCode() {
        return asMap().hashCode();
    }

    @Override // Q3.W
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // Q3.W
    public Set<Object> keySet() {
        Set<Object> set = this.f2883e;
        if (set != null) {
            return set;
        }
        Set<Object> c7 = c();
        this.f2883e = c7;
        return c7;
    }

    public boolean putAll(Object obj, Iterable<Object> iterable) {
        P3.v.checkNotNull(iterable);
        if (iterable instanceof Collection) {
            Collection<? extends Object> collection = (Collection) iterable;
            return !collection.isEmpty() && get(obj).addAll(collection);
        }
        Iterator<Object> it = iterable.iterator();
        return it.hasNext() && F.addAll(get(obj), it);
    }

    @Override // Q3.W
    public boolean remove(Object obj, Object obj2) {
        Collection<Object> collection = asMap().get(obj);
        return collection != null && collection.remove(obj2);
    }

    public String toString() {
        return asMap().toString();
    }

    @Override // Q3.W
    public Collection<Object> values() {
        Collection<Object> collection = this.f2884f;
        if (collection != null) {
            return collection;
        }
        Collection<Object> d7 = d();
        this.f2884f = d7;
        return d7;
    }
}
