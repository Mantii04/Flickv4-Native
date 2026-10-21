package w5;

import java.util.Collection;
import java.util.Iterator;
import kotlin.collections.builders.MapBuilder;
import v5.AbstractC1770f;

/* renamed from: w5.m, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1793m extends AbstractC1770f {

    /* renamed from: b, reason: collision with root package name */
    public final MapBuilder f20693b;

    public C1793m(MapBuilder<?, Object> backing) {
        kotlin.jvm.internal.j.checkNotNullParameter(backing, "backing");
        this.f20693b = backing;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean addAll(Collection<Object> elements) {
        kotlin.jvm.internal.j.checkNotNullParameter(elements, "elements");
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public void clear() {
        this.f20693b.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        return this.f20693b.containsValue(obj);
    }

    @Override // v5.AbstractC1770f
    public int getSize() {
        return this.f20693b.size();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return this.f20693b.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator<Object> iterator() {
        return this.f20693b.valuesIterator$kotlin_stdlib();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean remove(Object obj) {
        return this.f20693b.removeValue$kotlin_stdlib(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean removeAll(Collection<? extends Object> elements) {
        kotlin.jvm.internal.j.checkNotNullParameter(elements, "elements");
        this.f20693b.checkIsMutable$kotlin_stdlib();
        return super.removeAll(elements);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean retainAll(Collection<? extends Object> elements) {
        kotlin.jvm.internal.j.checkNotNullParameter(elements, "elements");
        this.f20693b.checkIsMutable$kotlin_stdlib();
        return super.retainAll(elements);
    }
}
