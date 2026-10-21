package Q3;

import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes2.dex */
public abstract class F {
    public static void a(Iterator it) {
        P3.v.checkNotNull(it);
        while (it.hasNext()) {
            it.next();
            it.remove();
        }
    }

    public static <T> boolean addAll(Collection<T> collection, Iterator<? extends T> it) {
        P3.v.checkNotNull(collection);
        P3.v.checkNotNull(it);
        boolean z6 = false;
        while (it.hasNext()) {
            z6 |= collection.add(it.next());
        }
        return z6;
    }

    public static <T> boolean any(Iterator<T> it, P3.w wVar) {
        return indexOf(it, wVar) != -1;
    }

    public static boolean contains(Iterator<?> it, Object obj) {
        if (obj == null) {
            while (it.hasNext()) {
                if (it.next() == null) {
                    return true;
                }
            }
            return false;
        }
        while (it.hasNext()) {
            if (obj.equals(it.next())) {
                return true;
            }
        }
        return false;
    }

    public static boolean elementsEqual(Iterator<?> it, Iterator<?> it2) {
        while (it.hasNext()) {
            if (!it2.hasNext() || !P3.u.equal(it.next(), it2.next())) {
                return false;
            }
        }
        return !it2.hasNext();
    }

    public static <T> x0 filter(Iterator<T> it, P3.w wVar) {
        P3.v.checkNotNull(it);
        P3.v.checkNotNull(wVar);
        return new B(it, wVar);
    }

    public static <T> T find(Iterator<T> it, P3.w wVar) {
        P3.v.checkNotNull(it);
        P3.v.checkNotNull(wVar);
        while (it.hasNext()) {
            T next = it.next();
            if (wVar.apply(next)) {
                return next;
            }
        }
        throw new NoSuchElementException();
    }

    public static <T> T getLast(Iterator<T> it) {
        T next;
        do {
            next = it.next();
        } while (it.hasNext());
        return next;
    }

    public static <T> T getNext(Iterator<? extends T> it, T t6) {
        return it.hasNext() ? it.next() : t6;
    }

    public static <T> T getOnlyElement(Iterator<T> it) {
        T next = it.next();
        if (!it.hasNext()) {
            return next;
        }
        StringBuilder sb = new StringBuilder("expected one element but was: <");
        sb.append(next);
        for (int i2 = 0; i2 < 4 && it.hasNext(); i2++) {
            sb.append(", ");
            sb.append(it.next());
        }
        if (it.hasNext()) {
            sb.append(", ...");
        }
        sb.append('>');
        throw new IllegalArgumentException(sb.toString());
    }

    public static <T> int indexOf(Iterator<T> it, P3.w wVar) {
        P3.v.checkNotNull(wVar, "predicate");
        int i2 = 0;
        while (it.hasNext()) {
            if (wVar.apply(it.next())) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    public static boolean removeAll(Iterator<?> it, Collection<?> collection) {
        P3.v.checkNotNull(collection);
        boolean z6 = false;
        while (it.hasNext()) {
            if (collection.contains(it.next())) {
                it.remove();
                z6 = true;
            }
        }
        return z6;
    }

    public static <T> boolean removeIf(Iterator<T> it, P3.w wVar) {
        P3.v.checkNotNull(wVar);
        boolean z6 = false;
        while (it.hasNext()) {
            if (wVar.apply(it.next())) {
                it.remove();
                z6 = true;
            }
        }
        return z6;
    }

    public static <T> x0 singletonIterator(T t6) {
        return new E(t6);
    }

    public static <F, T> Iterator<T> transform(Iterator<F> it, P3.p pVar) {
        P3.v.checkNotNull(pVar);
        return new C(it, pVar);
    }

    public static <T> T getLast(Iterator<? extends T> it, T t6) {
        return it.hasNext() ? (T) getLast(it) : t6;
    }
}
