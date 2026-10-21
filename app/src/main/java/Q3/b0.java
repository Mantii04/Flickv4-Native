package Q3;

import java.util.AbstractCollection;
import java.util.Map;

/* loaded from: classes2.dex */
public abstract class b0 extends AbstractCollection {
    @Override // java.util.AbstractCollection, java.util.Collection
    public void clear() {
        ((C0235e) this).f2879b.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return ((C0235e) this).f2879b.containsEntry(entry.getKey(), entry.getValue());
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean remove(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return ((C0235e) this).f2879b.remove(entry.getKey(), entry.getValue());
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public int size() {
        return ((C0235e) this).f2879b.size();
    }
}
