package w5;

import java.util.Collection;
import java.util.Iterator;
import kotlin.collections.builders.MapBuilder;

/* renamed from: w5.l, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1792l extends v5.h {

    /* renamed from: b, reason: collision with root package name */
    public final MapBuilder f20692b;

    public C1792l(MapBuilder<Object, ?> backing) {
        kotlin.jvm.internal.j.checkNotNullParameter(backing, "backing");
        this.f20692b = backing;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean addAll(Collection<Object> elements) {
        kotlin.jvm.internal.j.checkNotNullParameter(elements, "elements");
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        this.f20692b.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return this.f20692b.containsKey(obj);
    }

    @Override // v5.h
    public int getSize() {
        return this.f20692b.size();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.f20692b.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<Object> iterator() {
        return this.f20692b.keysIterator$kotlin_stdlib();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        return this.f20692b.removeKey$kotlin_stdlib(obj);
    }

    @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean removeAll(Collection<? extends Object> elements) {
        kotlin.jvm.internal.j.checkNotNullParameter(elements, "elements");
        this.f20692b.checkIsMutable$kotlin_stdlib();
        return super.removeAll(elements);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean retainAll(Collection<? extends Object> elements) {
        kotlin.jvm.internal.j.checkNotNullParameter(elements, "elements");
        this.f20692b.checkIsMutable$kotlin_stdlib();
        return super.retainAll(elements);
    }
}
