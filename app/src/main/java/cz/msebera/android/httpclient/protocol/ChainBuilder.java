package cz.msebera.android.httpclient.protocol;

import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;

/* loaded from: classes2.dex */
final class ChainBuilder<E> {
    private final LinkedList<E> list = new LinkedList<>();
    private final Map<Class<?>, E> uniqueClasses = new HashMap();

    private void ensureUnique(E e3) {
        E remove = this.uniqueClasses.remove(e3.getClass());
        if (remove != null) {
            this.list.remove(remove);
        }
        this.uniqueClasses.put(e3.getClass(), e3);
    }

    public ChainBuilder<E> addAllFirst(Collection<E> collection) {
        if (collection != null) {
            Iterator<E> it = collection.iterator();
            while (it.hasNext()) {
                addFirst(it.next());
            }
        }
        return this;
    }

    public ChainBuilder<E> addAllLast(Collection<E> collection) {
        if (collection != null) {
            Iterator<E> it = collection.iterator();
            while (it.hasNext()) {
                addLast(it.next());
            }
        }
        return this;
    }

    public ChainBuilder<E> addFirst(E e3) {
        if (e3 == null) {
            return this;
        }
        ensureUnique(e3);
        this.list.addFirst(e3);
        return this;
    }

    public ChainBuilder<E> addLast(E e3) {
        if (e3 == null) {
            return this;
        }
        ensureUnique(e3);
        this.list.addLast(e3);
        return this;
    }

    public LinkedList<E> build() {
        return new LinkedList<>(this.list);
    }

    public ChainBuilder<E> addAllFirst(E... eArr) {
        if (eArr != null) {
            for (E e3 : eArr) {
                addFirst(e3);
            }
        }
        return this;
    }

    public ChainBuilder<E> addAllLast(E... eArr) {
        if (eArr != null) {
            for (E e3 : eArr) {
                addLast(e3);
            }
        }
        return this;
    }
}
