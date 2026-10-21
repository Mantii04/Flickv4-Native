package kotlin.collections.builders;

import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import kotlin.jvm.internal.j;
import v5.h;
import w5.C1794n;

/* loaded from: classes2.dex */
public final class SetBuilder<E> extends h implements Set<E>, Serializable {

    /* renamed from: e, reason: collision with root package name */
    public static final SetBuilder f17423e;

    /* renamed from: b, reason: collision with root package name */
    public final MapBuilder f17424b;

    static {
        new C1794n(null);
        f17423e = new SetBuilder(MapBuilder.f17408w.getEmpty$kotlin_stdlib());
    }

    public SetBuilder(MapBuilder<E, ?> backing) {
        j.checkNotNullParameter(backing, "backing");
        this.f17424b = backing;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean add(E e3) {
        return this.f17424b.addKey$kotlin_stdlib(e3) >= 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean addAll(Collection<? extends E> elements) {
        j.checkNotNullParameter(elements, "elements");
        this.f17424b.checkIsMutable$kotlin_stdlib();
        return super.addAll(elements);
    }

    public final Set<E> build() {
        this.f17424b.build();
        return size() > 0 ? this : f17423e;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        this.f17424b.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return this.f17424b.containsKey(obj);
    }

    @Override // v5.h
    public int getSize() {
        return this.f17424b.size();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.f17424b.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<E> iterator() {
        return this.f17424b.keysIterator$kotlin_stdlib();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        return this.f17424b.removeKey$kotlin_stdlib(obj);
    }

    @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean removeAll(Collection<? extends Object> elements) {
        j.checkNotNullParameter(elements, "elements");
        this.f17424b.checkIsMutable$kotlin_stdlib();
        return super.removeAll(elements);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean retainAll(Collection<? extends Object> elements) {
        j.checkNotNullParameter(elements, "elements");
        this.f17424b.checkIsMutable$kotlin_stdlib();
        return super.retainAll(elements);
    }

    public SetBuilder() {
        this(new MapBuilder());
    }
}
