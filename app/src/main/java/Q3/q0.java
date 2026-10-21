package Q3;

import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes2.dex */
public abstract class q0 extends AbstractSet {
    @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean removeAll(Collection<?> collection) {
        P3.v.checkNotNull(collection);
        if (collection instanceof f0) {
            collection = ((f0) collection).elementSet();
        }
        if ((collection instanceof Set) && collection.size() > size()) {
            return F.removeAll(iterator(), collection);
        }
        Iterator<?> it = collection.iterator();
        boolean z6 = false;
        while (it.hasNext()) {
            z6 |= remove(it.next());
        }
        return z6;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean retainAll(Collection<?> collection) {
        return super.retainAll((Collection) P3.v.checkNotNull(collection));
    }
}
