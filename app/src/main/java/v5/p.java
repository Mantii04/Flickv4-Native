package v5;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.collections.EmptyList;
import x5.AbstractC1855a;

/* loaded from: classes2.dex */
public abstract class p extends o {
    public static final <T> Collection<T> asCollection(T[] tArr) {
        kotlin.jvm.internal.j.checkNotNullParameter(tArr, "<this>");
        return new i(tArr, false);
    }

    public static final <T extends Comparable<? super T>> int binarySearch(List<? extends T> list, T t6, int i2, int i7) {
        kotlin.jvm.internal.j.checkNotNullParameter(list, "<this>");
        int size = list.size();
        if (i2 > i7) {
            throw new IllegalArgumentException("fromIndex (" + i2 + ") is greater than toIndex (" + i7 + ").");
        }
        if (i2 < 0) {
            throw new IndexOutOfBoundsException(A.i.g(i2, "fromIndex (", ") is less than zero."));
        }
        if (i7 > size) {
            throw new IndexOutOfBoundsException("toIndex (" + i7 + ") is greater than size (" + size + ").");
        }
        int i8 = i7 - 1;
        while (i2 <= i8) {
            int i9 = (i2 + i8) >>> 1;
            int compareValues = AbstractC1855a.compareValues(list.get(i9), t6);
            if (compareValues < 0) {
                i2 = i9 + 1;
            } else {
                if (compareValues <= 0) {
                    return i9;
                }
                i8 = i9 - 1;
            }
        }
        return -(i2 + 1);
    }

    public static /* synthetic */ int binarySearch$default(List list, Comparable comparable, int i2, int i7, int i8, Object obj) {
        if ((i8 & 2) != 0) {
            i2 = 0;
        }
        if ((i8 & 4) != 0) {
            i7 = list.size();
        }
        return binarySearch(list, comparable, i2, i7);
    }

    public static <T> List<T> emptyList() {
        return EmptyList.f17396b;
    }

    public static M5.e getIndices(Collection<?> collection) {
        kotlin.jvm.internal.j.checkNotNullParameter(collection, "<this>");
        return new M5.e(0, collection.size() - 1);
    }

    public static <T> int getLastIndex(List<? extends T> list) {
        kotlin.jvm.internal.j.checkNotNullParameter(list, "<this>");
        return list.size() - 1;
    }

    public static <T> List<T> listOf(T... elements) {
        kotlin.jvm.internal.j.checkNotNullParameter(elements, "elements");
        return elements.length > 0 ? m.asList(elements) : emptyList();
    }

    public static <T> List<T> listOfNotNull(T... elements) {
        kotlin.jvm.internal.j.checkNotNullParameter(elements, "elements");
        return n.filterNotNull(elements);
    }

    public static <T> List<T> mutableListOf(T... elements) {
        kotlin.jvm.internal.j.checkNotNullParameter(elements, "elements");
        return elements.length == 0 ? new ArrayList() : new ArrayList(new i(elements, true));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> List<T> optimizeReadOnlyList(List<? extends T> list) {
        kotlin.jvm.internal.j.checkNotNullParameter(list, "<this>");
        int size = list.size();
        return size != 0 ? size != 1 ? list : o.listOf(list.get(0)) : emptyList();
    }

    public static void throwCountOverflow() {
        throw new ArithmeticException("Count overflow has happened.");
    }

    public static void throwIndexOverflow() {
        throw new ArithmeticException("Index overflow has happened.");
    }
}
