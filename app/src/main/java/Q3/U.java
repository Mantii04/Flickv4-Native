package Q3;

import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes2.dex */
public final class U extends AbstractCollection {

    /* renamed from: b, reason: collision with root package name */
    public final Map f2871b;

    public U(AbstractMap abstractMap) {
        this.f2871b = (Map) P3.v.checkNotNull(abstractMap);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public void clear() {
        this.f2871b.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        return this.f2871b.containsValue(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return this.f2871b.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator<Object> iterator() {
        return new L(this.f2871b.entrySet().iterator(), 1);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean remove(Object obj) {
        try {
            return super.remove(obj);
        } catch (UnsupportedOperationException unused) {
            Map map = this.f2871b;
            for (Map.Entry entry : map.entrySet()) {
                if (P3.u.equal(obj, entry.getValue())) {
                    map.remove(entry.getKey());
                    return true;
                }
            }
            return false;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        try {
            return super.removeAll((Collection) P3.v.checkNotNull(collection));
        } catch (UnsupportedOperationException unused) {
            HashSet newHashSet = s0.newHashSet();
            Map map = this.f2871b;
            for (Map.Entry entry : map.entrySet()) {
                if (collection.contains(entry.getValue())) {
                    newHashSet.add(entry.getKey());
                }
            }
            return map.keySet().removeAll(newHashSet);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean retainAll(Collection<?> collection) {
        try {
            return super.retainAll((Collection) P3.v.checkNotNull(collection));
        } catch (UnsupportedOperationException unused) {
            HashSet newHashSet = s0.newHashSet();
            Map map = this.f2871b;
            for (Map.Entry entry : map.entrySet()) {
                if (collection.contains(entry.getValue())) {
                    newHashSet.add(entry.getKey());
                }
            }
            return map.keySet().retainAll(newHashSet);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public int size() {
        return this.f2871b.size();
    }
}
