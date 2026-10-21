package v5;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Set;
import kotlin.Pair;
import u5.AbstractC1709h;

/* loaded from: classes2.dex */
public abstract class u extends s {
    public static <T> O5.d asSequence(Iterable<? extends T> iterable) {
        kotlin.jvm.internal.j.checkNotNullParameter(iterable, "<this>");
        return new t(iterable);
    }

    public static <T> boolean contains(Iterable<? extends T> iterable, T t6) {
        kotlin.jvm.internal.j.checkNotNullParameter(iterable, "<this>");
        return iterable instanceof Collection ? ((Collection) iterable).contains(t6) : indexOf(iterable, t6) >= 0;
    }

    public static <T> List<T> dropLast(List<? extends T> list, int i2) {
        kotlin.jvm.internal.j.checkNotNullParameter(list, "<this>");
        if (i2 >= 0) {
            return take(list, M5.g.coerceAtLeast(list.size() - i2, 0));
        }
        throw new IllegalArgumentException(A.i.g(i2, "Requested element count ", " is less than zero.").toString());
    }

    public static <T> List<T> filterNotNull(Iterable<? extends T> iterable) {
        kotlin.jvm.internal.j.checkNotNullParameter(iterable, "<this>");
        return (List) filterNotNullTo(iterable, new ArrayList());
    }

    public static final <C extends Collection<? super T>, T> C filterNotNullTo(Iterable<? extends T> iterable, C destination) {
        kotlin.jvm.internal.j.checkNotNullParameter(iterable, "<this>");
        kotlin.jvm.internal.j.checkNotNullParameter(destination, "destination");
        for (T t6 : iterable) {
            if (t6 != null) {
                destination.add(t6);
            }
        }
        return destination;
    }

    public static final <T> T first(Iterable<? extends T> iterable) {
        kotlin.jvm.internal.j.checkNotNullParameter(iterable, "<this>");
        if (iterable instanceof List) {
            return (T) first((List) iterable);
        }
        Iterator<? extends T> it = iterable.iterator();
        if (it.hasNext()) {
            return it.next();
        }
        throw new NoSuchElementException("Collection is empty.");
    }

    public static <T> T firstOrNull(Iterable<? extends T> iterable) {
        kotlin.jvm.internal.j.checkNotNullParameter(iterable, "<this>");
        if (iterable instanceof List) {
            List list = (List) iterable;
            if (list.isEmpty()) {
                return null;
            }
            return (T) list.get(0);
        }
        Iterator<? extends T> it = iterable.iterator();
        if (it.hasNext()) {
            return it.next();
        }
        return null;
    }

    public static final <T> int indexOf(Iterable<? extends T> iterable, T t6) {
        kotlin.jvm.internal.j.checkNotNullParameter(iterable, "<this>");
        if (iterable instanceof List) {
            return ((List) iterable).indexOf(t6);
        }
        int i2 = 0;
        for (T t7 : iterable) {
            if (i2 < 0) {
                p.throwIndexOverflow();
            }
            if (kotlin.jvm.internal.j.areEqual(t6, t7)) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    public static final <T, A extends Appendable> A joinTo(Iterable<? extends T> iterable, A buffer, CharSequence separator, CharSequence prefix, CharSequence postfix, int i2, CharSequence truncated, H5.l lVar) {
        kotlin.jvm.internal.j.checkNotNullParameter(iterable, "<this>");
        kotlin.jvm.internal.j.checkNotNullParameter(buffer, "buffer");
        kotlin.jvm.internal.j.checkNotNullParameter(separator, "separator");
        kotlin.jvm.internal.j.checkNotNullParameter(prefix, "prefix");
        kotlin.jvm.internal.j.checkNotNullParameter(postfix, "postfix");
        kotlin.jvm.internal.j.checkNotNullParameter(truncated, "truncated");
        buffer.append(prefix);
        int i7 = 0;
        for (T t6 : iterable) {
            i7++;
            if (i7 > 1) {
                buffer.append(separator);
            }
            if (i2 >= 0 && i7 > i2) {
                break;
            }
            P5.l.appendElement(buffer, t6, lVar);
        }
        if (i2 >= 0 && i7 > i2) {
            buffer.append(truncated);
        }
        buffer.append(postfix);
        return buffer;
    }

    public static final <T> String joinToString(Iterable<? extends T> iterable, CharSequence separator, CharSequence prefix, CharSequence postfix, int i2, CharSequence truncated, H5.l lVar) {
        kotlin.jvm.internal.j.checkNotNullParameter(iterable, "<this>");
        kotlin.jvm.internal.j.checkNotNullParameter(separator, "separator");
        kotlin.jvm.internal.j.checkNotNullParameter(prefix, "prefix");
        kotlin.jvm.internal.j.checkNotNullParameter(postfix, "postfix");
        kotlin.jvm.internal.j.checkNotNullParameter(truncated, "truncated");
        String sb = ((StringBuilder) joinTo(iterable, new StringBuilder(), separator, prefix, postfix, i2, truncated, lVar)).toString();
        kotlin.jvm.internal.j.checkNotNullExpressionValue(sb, "toString(...)");
        return sb;
    }

    public static /* synthetic */ String joinToString$default(Iterable iterable, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i2, CharSequence charSequence4, H5.l lVar, int i7, Object obj) {
        if ((i7 & 1) != 0) {
            charSequence = ", ";
        }
        if ((i7 & 2) != 0) {
            charSequence2 = "";
        }
        if ((i7 & 4) != 0) {
            charSequence3 = "";
        }
        if ((i7 & 8) != 0) {
            i2 = -1;
        }
        if ((i7 & 16) != 0) {
            charSequence4 = "...";
        }
        if ((i7 & 32) != 0) {
            lVar = null;
        }
        CharSequence charSequence5 = charSequence4;
        H5.l lVar2 = lVar;
        return joinToString(iterable, charSequence, charSequence2, charSequence3, i2, charSequence5, lVar2);
    }

    public static <T> T last(List<? extends T> list) {
        kotlin.jvm.internal.j.checkNotNullParameter(list, "<this>");
        if (list.isEmpty()) {
            throw new NoSuchElementException("List is empty.");
        }
        return list.get(p.getLastIndex(list));
    }

    public static <T extends Comparable<? super T>> T minOrNull(Iterable<? extends T> iterable) {
        kotlin.jvm.internal.j.checkNotNullParameter(iterable, "<this>");
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            return null;
        }
        T next = it.next();
        while (it.hasNext()) {
            T next2 = it.next();
            if (next.compareTo(next2) > 0) {
                next = next2;
            }
        }
        return next;
    }

    public static <T> List<T> plus(Collection<? extends T> collection, T t6) {
        kotlin.jvm.internal.j.checkNotNullParameter(collection, "<this>");
        ArrayList arrayList = new ArrayList(collection.size() + 1);
        arrayList.addAll(collection);
        arrayList.add(t6);
        return arrayList;
    }

    public static <T> T single(Iterable<? extends T> iterable) {
        kotlin.jvm.internal.j.checkNotNullParameter(iterable, "<this>");
        if (iterable instanceof List) {
            return (T) single((List) iterable);
        }
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException("Collection is empty.");
        }
        T next = it.next();
        if (it.hasNext()) {
            throw new IllegalArgumentException("Collection has more than one element.");
        }
        return next;
    }

    public static <T extends Comparable<? super T>> List<T> sorted(Iterable<? extends T> iterable) {
        kotlin.jvm.internal.j.checkNotNullParameter(iterable, "<this>");
        if (!(iterable instanceof Collection)) {
            List<T> mutableList = toMutableList(iterable);
            r.sort(mutableList);
            return mutableList;
        }
        Collection collection = (Collection) iterable;
        if (collection.size() <= 1) {
            return toList(iterable);
        }
        Object[] array = collection.toArray(new Comparable[0]);
        m.sort((Comparable[]) array);
        return m.asList(array);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> List<T> sortedWith(Iterable<? extends T> iterable, Comparator<? super T> comparator) {
        kotlin.jvm.internal.j.checkNotNullParameter(iterable, "<this>");
        kotlin.jvm.internal.j.checkNotNullParameter(comparator, "comparator");
        if (!(iterable instanceof Collection)) {
            List<T> mutableList = toMutableList(iterable);
            r.sortWith(mutableList, comparator);
            return mutableList;
        }
        Collection collection = (Collection) iterable;
        if (collection.size() <= 1) {
            return toList(iterable);
        }
        Object[] array = collection.toArray(new Object[0]);
        m.sortWith(array, comparator);
        return m.asList(array);
    }

    public static <T> List<T> take(Iterable<? extends T> iterable, int i2) {
        kotlin.jvm.internal.j.checkNotNullParameter(iterable, "<this>");
        if (i2 < 0) {
            throw new IllegalArgumentException(A.i.g(i2, "Requested element count ", " is less than zero.").toString());
        }
        if (i2 == 0) {
            return p.emptyList();
        }
        if (iterable instanceof Collection) {
            if (i2 >= ((Collection) iterable).size()) {
                return toList(iterable);
            }
            if (i2 == 1) {
                return o.listOf(first(iterable));
            }
        }
        ArrayList arrayList = new ArrayList(i2);
        Iterator<? extends T> it = iterable.iterator();
        int i7 = 0;
        while (it.hasNext()) {
            arrayList.add(it.next());
            i7++;
            if (i7 == i2) {
                break;
            }
        }
        return p.optimizeReadOnlyList(arrayList);
    }

    public static final <T, C extends Collection<? super T>> C toCollection(Iterable<? extends T> iterable, C destination) {
        kotlin.jvm.internal.j.checkNotNullParameter(iterable, "<this>");
        kotlin.jvm.internal.j.checkNotNullParameter(destination, "destination");
        Iterator<? extends T> it = iterable.iterator();
        while (it.hasNext()) {
            destination.add(it.next());
        }
        return destination;
    }

    public static int[] toIntArray(Collection<Integer> collection) {
        kotlin.jvm.internal.j.checkNotNullParameter(collection, "<this>");
        int[] iArr = new int[collection.size()];
        Iterator<Integer> it = collection.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            iArr[i2] = it.next().intValue();
            i2++;
        }
        return iArr;
    }

    public static <T> List<T> toList(Iterable<? extends T> iterable) {
        kotlin.jvm.internal.j.checkNotNullParameter(iterable, "<this>");
        if (!(iterable instanceof Collection)) {
            return p.optimizeReadOnlyList(toMutableList(iterable));
        }
        Collection collection = (Collection) iterable;
        int size = collection.size();
        if (size == 0) {
            return p.emptyList();
        }
        if (size != 1) {
            return toMutableList(collection);
        }
        return o.listOf(iterable instanceof List ? ((List) iterable).get(0) : iterable.iterator().next());
    }

    public static final <T> List<T> toMutableList(Iterable<? extends T> iterable) {
        kotlin.jvm.internal.j.checkNotNullParameter(iterable, "<this>");
        return iterable instanceof Collection ? toMutableList((Collection) iterable) : (List) toCollection(iterable, new ArrayList());
    }

    public static <T> Set<T> toSet(Iterable<? extends T> iterable) {
        kotlin.jvm.internal.j.checkNotNullParameter(iterable, "<this>");
        if (!(iterable instanceof Collection)) {
            return AbstractC1764B.optimizeReadOnlySet((Set) toCollection(iterable, new LinkedHashSet()));
        }
        Collection collection = (Collection) iterable;
        int size = collection.size();
        if (size == 0) {
            return AbstractC1764B.emptySet();
        }
        if (size != 1) {
            return (Set) toCollection(iterable, new LinkedHashSet(z.mapCapacity(collection.size())));
        }
        return AbstractC1763A.setOf(iterable instanceof List ? ((List) iterable).get(0) : iterable.iterator().next());
    }

    public static <T, R> List<Pair<T, R>> zip(Iterable<? extends T> iterable, Iterable<? extends R> other) {
        kotlin.jvm.internal.j.checkNotNullParameter(iterable, "<this>");
        kotlin.jvm.internal.j.checkNotNullParameter(other, "other");
        Iterator<? extends T> it = iterable.iterator();
        Iterator<? extends R> it2 = other.iterator();
        ArrayList arrayList = new ArrayList(Math.min(q.collectionSizeOrDefault(iterable, 10), q.collectionSizeOrDefault(other, 10)));
        while (it.hasNext() && it2.hasNext()) {
            arrayList.add(AbstractC1709h.to(it.next(), it2.next()));
        }
        return arrayList;
    }

    public static <T> List<T> plus(Collection<? extends T> collection, Iterable<? extends T> elements) {
        kotlin.jvm.internal.j.checkNotNullParameter(collection, "<this>");
        kotlin.jvm.internal.j.checkNotNullParameter(elements, "elements");
        if (elements instanceof Collection) {
            Collection collection2 = (Collection) elements;
            ArrayList arrayList = new ArrayList(collection2.size() + collection.size());
            arrayList.addAll(collection);
            arrayList.addAll(collection2);
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList(collection);
        s.addAll(arrayList2, elements);
        return arrayList2;
    }

    public static <T> List<T> toMutableList(Collection<? extends T> collection) {
        kotlin.jvm.internal.j.checkNotNullParameter(collection, "<this>");
        return new ArrayList(collection);
    }

    public static <T> T first(List<? extends T> list) {
        kotlin.jvm.internal.j.checkNotNullParameter(list, "<this>");
        if (!list.isEmpty()) {
            return list.get(0);
        }
        throw new NoSuchElementException("List is empty.");
    }

    public static <T> T firstOrNull(List<? extends T> list) {
        kotlin.jvm.internal.j.checkNotNullParameter(list, "<this>");
        if (list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    public static final <T> T single(List<? extends T> list) {
        kotlin.jvm.internal.j.checkNotNullParameter(list, "<this>");
        int size = list.size();
        if (size == 0) {
            throw new NoSuchElementException("List is empty.");
        }
        if (size == 1) {
            return list.get(0);
        }
        throw new IllegalArgumentException("List has more than one element.");
    }
}
