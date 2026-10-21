package Q3;

import java.util.Collection;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.RandomAccess;

/* loaded from: classes2.dex */
public abstract class A {
    public static void a(List list, P3.w wVar, int i2, int i7) {
        for (int size = list.size() - 1; size > i7; size--) {
            if (wVar.apply(list.get(size))) {
                list.remove(size);
            }
        }
        for (int i8 = i7 - 1; i8 >= i2; i8--) {
            list.remove(i8);
        }
    }

    public static <T> boolean any(Iterable<T> iterable, P3.w wVar) {
        return F.any(iterable.iterator(), wVar);
    }

    public static <T> T getFirst(Iterable<? extends T> iterable, T t6) {
        return (T) F.getNext(iterable.iterator(), t6);
    }

    public static <T> T getLast(Iterable<T> iterable) {
        if (!(iterable instanceof List)) {
            return (T) F.getLast(iterable.iterator());
        }
        List list = (List) iterable;
        if (list.isEmpty()) {
            throw new NoSuchElementException();
        }
        return (T) A.i.c(1, list);
    }

    public static <T> T getOnlyElement(Iterable<T> iterable) {
        return (T) F.getOnlyElement(iterable.iterator());
    }

    public static <T> boolean removeIf(Iterable<T> iterable, P3.w wVar) {
        if (!(iterable instanceof RandomAccess) || !(iterable instanceof List)) {
            return F.removeIf(iterable.iterator(), wVar);
        }
        List list = (List) iterable;
        P3.w wVar2 = (P3.w) P3.v.checkNotNull(wVar);
        int i2 = 0;
        int i7 = 0;
        while (i2 < list.size()) {
            Object obj = list.get(i2);
            if (!wVar2.apply(obj)) {
                if (i2 > i7) {
                    try {
                        list.set(i7, obj);
                    } catch (IllegalArgumentException unused) {
                        a(list, wVar2, i7, i2);
                        return true;
                    } catch (UnsupportedOperationException unused2) {
                        a(list, wVar2, i7, i2);
                        return true;
                    }
                }
                i7++;
            }
            i2++;
        }
        list.subList(i7, list.size()).clear();
        return i2 != i7;
    }

    public static <T> T getLast(Iterable<? extends T> iterable, T t6) {
        if (iterable instanceof Collection) {
            if (((Collection) iterable).isEmpty()) {
                return t6;
            }
            if (iterable instanceof List) {
                return (T) A.i.c(1, (List) iterable);
            }
        }
        return (T) F.getLast(iterable.iterator(), t6);
    }
}
