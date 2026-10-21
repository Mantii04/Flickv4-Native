package v5;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

/* loaded from: classes2.dex */
public abstract class s extends r {
    public static <T> boolean addAll(Collection<? super T> collection, Iterable<? extends T> elements) {
        kotlin.jvm.internal.j.checkNotNullParameter(collection, "<this>");
        kotlin.jvm.internal.j.checkNotNullParameter(elements, "elements");
        if (elements instanceof Collection) {
            return collection.addAll((Collection) elements);
        }
        Iterator<? extends T> it = elements.iterator();
        boolean z6 = false;
        while (it.hasNext()) {
            if (collection.add(it.next())) {
                z6 = true;
            }
        }
        return z6;
    }

    public static <T> T removeLast(List<T> list) {
        kotlin.jvm.internal.j.checkNotNullParameter(list, "<this>");
        if (list.isEmpty()) {
            throw new NoSuchElementException("List is empty.");
        }
        return list.remove(p.getLastIndex(list));
    }

    public static <T> boolean addAll(Collection<? super T> collection, T[] elements) {
        kotlin.jvm.internal.j.checkNotNullParameter(collection, "<this>");
        kotlin.jvm.internal.j.checkNotNullParameter(elements, "elements");
        return collection.addAll(m.asList(elements));
    }
}
