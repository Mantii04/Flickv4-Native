package Q3;

import java.util.Comparator;
import java.util.SortedSet;

/* loaded from: classes2.dex */
public final class p0 extends o0 implements SortedSet {
    @Override // java.util.SortedSet
    public Comparator<Object> comparator() {
        return ((SortedSet) this.f2886b).comparator();
    }

    @Override // java.util.SortedSet
    public Object first() {
        return F.find(this.f2886b.iterator(), this.f2887e);
    }

    @Override // java.util.SortedSet
    public SortedSet<Object> headSet(Object obj) {
        return new p0(((SortedSet) this.f2886b).headSet(obj), this.f2887e);
    }

    @Override // java.util.SortedSet
    public Object last() {
        SortedSet sortedSet = (SortedSet) this.f2886b;
        while (true) {
            Object last = sortedSet.last();
            if (this.f2887e.apply(last)) {
                return last;
            }
            sortedSet = sortedSet.headSet(last);
        }
    }

    @Override // java.util.SortedSet
    public SortedSet<Object> subSet(Object obj, Object obj2) {
        return new p0(((SortedSet) this.f2886b).subSet(obj, obj2), this.f2887e);
    }

    @Override // java.util.SortedSet
    public SortedSet<Object> tailSet(Object obj) {
        return new p0(((SortedSet) this.f2886b).tailSet(obj), this.f2887e);
    }
}
