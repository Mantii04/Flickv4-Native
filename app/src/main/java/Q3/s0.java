package Q3;

import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.SortedSet;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
public abstract class s0 {
    public static boolean a(Object obj, Set set) {
        if (set == obj) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set2 = (Set) obj;
        try {
            if (set.size() == set2.size()) {
                return set.containsAll(set2);
            }
            return false;
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    public static int b(Set set) {
        Iterator it = set.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            Object next = it.next();
            i2 = ~(~(i2 + (next != null ? next.hashCode() : 0)));
        }
        return i2;
    }

    public static <E> Set<E> filter(Set<E> set, P3.w wVar) {
        if (set instanceof SortedSet) {
            return filter((SortedSet) set, wVar);
        }
        if (!(set instanceof o0)) {
            return new o0((Set) P3.v.checkNotNull(set), (P3.w) P3.v.checkNotNull(wVar));
        }
        o0 o0Var = (o0) set;
        return new o0(o0Var.f2886b, com.google.common.base.b.and(o0Var.f2887e, wVar));
    }

    public static <E> r0 intersection(Set<E> set, Set<?> set2) {
        P3.v.checkNotNull(set, "set1");
        P3.v.checkNotNull(set2, "set2");
        return new n0(set, set2);
    }

    public static <E> Set<E> newConcurrentHashSet() {
        return Collections.newSetFromMap(new ConcurrentHashMap());
    }

    public static <E> HashSet<E> newHashSet() {
        return new HashSet<>();
    }

    public static <E> HashSet<E> newHashSetWithExpectedSize(int i2) {
        return new HashSet<>(com.google.common.collect.C.a(i2));
    }

    public static <E> Set<E> newIdentityHashSet() {
        return Collections.newSetFromMap(com.google.common.collect.C.newIdentityHashMap());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <E> SortedSet<E> filter(SortedSet<E> sortedSet, P3.w wVar) {
        if (sortedSet instanceof o0) {
            o0 o0Var = (o0) sortedSet;
            return new p0((SortedSet) o0Var.f2886b, com.google.common.base.b.and(o0Var.f2887e, wVar));
        }
        return new p0((SortedSet) P3.v.checkNotNull(sortedSet), (P3.w) P3.v.checkNotNull(wVar));
    }
}
