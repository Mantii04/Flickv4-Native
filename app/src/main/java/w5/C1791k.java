package w5;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import kotlin.collections.builders.MapBuilder;

/* renamed from: w5.k, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1791k extends AbstractC1781a {

    /* renamed from: b, reason: collision with root package name */
    public final MapBuilder f20691b;

    public C1791k(MapBuilder<Object, Object> backing) {
        kotlin.jvm.internal.j.checkNotNullParameter(backing, "backing");
        this.f20691b = backing;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean addAll(Collection<? extends Map.Entry<Object, Object>> elements) {
        kotlin.jvm.internal.j.checkNotNullParameter(elements, "elements");
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        this.f20691b.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean containsAll(Collection<? extends Object> elements) {
        kotlin.jvm.internal.j.checkNotNullParameter(elements, "elements");
        return this.f20691b.containsAllEntries$kotlin_stdlib(elements);
    }

    @Override // w5.AbstractC1781a
    public boolean containsEntry(Map.Entry<Object, Object> element) {
        kotlin.jvm.internal.j.checkNotNullParameter(element, "element");
        return this.f20691b.containsEntry$kotlin_stdlib(element);
    }

    @Override // v5.h
    public int getSize() {
        return this.f20691b.size();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.f20691b.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<Map.Entry<Object, Object>> iterator() {
        return this.f20691b.entriesIterator$kotlin_stdlib();
    }

    @Override // w5.AbstractC1781a
    public boolean remove(Map.Entry element) {
        kotlin.jvm.internal.j.checkNotNullParameter(element, "element");
        return this.f20691b.removeEntry$kotlin_stdlib(element);
    }

    @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean removeAll(Collection<? extends Object> elements) {
        kotlin.jvm.internal.j.checkNotNullParameter(elements, "elements");
        this.f20691b.checkIsMutable$kotlin_stdlib();
        return super.removeAll(elements);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean retainAll(Collection<? extends Object> elements) {
        kotlin.jvm.internal.j.checkNotNullParameter(elements, "elements");
        this.f20691b.checkIsMutable$kotlin_stdlib();
        return super.retainAll(elements);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean add(Map.Entry<Object, Object> element) {
        kotlin.jvm.internal.j.checkNotNullParameter(element, "element");
        throw new UnsupportedOperationException();
    }
}
