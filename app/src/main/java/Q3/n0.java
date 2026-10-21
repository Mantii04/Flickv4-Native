package Q3;

import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes2.dex */
public final class n0 extends r0 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Set f2906b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Set f2907e;

    public n0(Set set, Set set2) {
        this.f2906b = set;
        this.f2907e = set2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return this.f2906b.contains(obj) && this.f2907e.contains(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean containsAll(Collection<?> collection) {
        return this.f2906b.containsAll(collection) && this.f2907e.containsAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return Collections.disjoint(this.f2907e, this.f2906b);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        Iterator it = this.f2906b.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            if (this.f2907e.contains(it.next())) {
                i2++;
            }
        }
        return i2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public x0 iterator() {
        return new m0(this);
    }
}
