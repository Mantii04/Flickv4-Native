package Q3;

import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes2.dex */
public abstract class N extends q0 {
    public abstract Map a();

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        a().clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        Object obj2;
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        Object key = entry.getKey();
        Map a7 = a();
        P3.v.checkNotNull(a7);
        try {
            obj2 = a7.get(key);
        } catch (ClassCastException | NullPointerException unused) {
            obj2 = null;
        }
        if (P3.u.equal(obj2, entry.getValue())) {
            return obj2 != null || a().containsKey(key);
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return a().isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        if (contains(obj) && (obj instanceof Map.Entry)) {
            return a().keySet().remove(((Map.Entry) obj).getKey());
        }
        return false;
    }

    @Override // Q3.q0, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean removeAll(Collection<?> collection) {
        try {
            return super.removeAll((Collection) P3.v.checkNotNull(collection));
        } catch (UnsupportedOperationException unused) {
            Iterator<?> it = collection.iterator();
            boolean z6 = false;
            while (it.hasNext()) {
                z6 |= remove(it.next());
            }
            return z6;
        }
    }

    @Override // Q3.q0, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean retainAll(Collection<?> collection) {
        try {
            return super.retainAll((Collection) P3.v.checkNotNull(collection));
        } catch (UnsupportedOperationException unused) {
            HashSet newHashSetWithExpectedSize = s0.newHashSetWithExpectedSize(collection.size());
            for (Object obj : collection) {
                if (contains(obj) && (obj instanceof Map.Entry)) {
                    newHashSetWithExpectedSize.add(((Map.Entry) obj).getKey());
                }
            }
            return a().keySet().retainAll(newHashSetWithExpectedSize);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return a().size();
    }
}
