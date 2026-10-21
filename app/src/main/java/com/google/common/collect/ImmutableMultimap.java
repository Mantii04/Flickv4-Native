package com.google.common.collect;

import Q3.AbstractC0238h;
import Q3.C0252w;
import Q3.C0253x;
import Q3.x0;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* loaded from: classes2.dex */
public abstract class ImmutableMultimap<K, V> extends AbstractC0238h implements Serializable {
    private static final long serialVersionUID = 0;

    /* renamed from: m, reason: collision with root package name */
    public final transient ImmutableMap f13072m;

    /* renamed from: n, reason: collision with root package name */
    public final transient int f13073n;

    public static class EntryCollection<K, V> extends ImmutableCollection<Map.Entry<K, V>> {
        private static final long serialVersionUID = 0;

        /* renamed from: e, reason: collision with root package name */
        public final ImmutableMultimap f13074e;

        public EntryCollection(ImmutableMultimap immutableMultimap) {
            this.f13074e = immutableMultimap;
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return this.f13074e.containsEntry(entry.getKey(), entry.getValue());
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return this.f13074e.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public x0 iterator() {
            ImmutableMultimap immutableMultimap = this.f13074e;
            immutableMultimap.getClass();
            return new C0252w(immutableMultimap);
        }
    }

    public static final class Values<K, V> extends ImmutableCollection<V> {
        private static final long serialVersionUID = 0;

        /* renamed from: e, reason: collision with root package name */
        public final transient ImmutableMultimap f13075e;

        public Values(ImmutableMultimap immutableMultimap) {
            this.f13075e = immutableMultimap;
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final int a(int i2, Object[] objArr) {
            x0 it = this.f13075e.f13072m.values().iterator();
            while (it.hasNext()) {
                i2 = ((ImmutableCollection) it.next()).a(i2, objArr);
            }
            return i2;
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return this.f13075e.containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return this.f13075e.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public x0 iterator() {
            ImmutableMultimap immutableMultimap = this.f13075e;
            immutableMultimap.getClass();
            return new C0253x(immutableMultimap);
        }
    }

    public ImmutableMultimap(ImmutableMap immutableMap, int i2) {
        this.f13072m = immutableMap;
        this.f13073n = i2;
    }

    @Override // Q3.AbstractC0237g
    public final Map a() {
        throw new AssertionError("should never be called");
    }

    @Override // Q3.AbstractC0237g
    public final Collection b() {
        return new EntryCollection(this);
    }

    @Override // Q3.AbstractC0237g
    public final Set c() {
        throw new AssertionError("unreachable");
    }

    @Override // Q3.W
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // Q3.AbstractC0237g, Q3.W
    public /* bridge */ /* synthetic */ boolean containsEntry(Object obj, Object obj2) {
        return super.containsEntry(obj, obj2);
    }

    public boolean containsKey(Object obj) {
        return this.f13072m.containsKey(obj);
    }

    @Override // Q3.AbstractC0237g
    public boolean containsValue(Object obj) {
        return obj != null && super.containsValue(obj);
    }

    @Override // Q3.AbstractC0237g
    public final Collection d() {
        return new Values(this);
    }

    @Override // Q3.AbstractC0237g
    public final Iterator e() {
        return new C0252w(this);
    }

    @Override // Q3.AbstractC0237g
    public /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // Q3.AbstractC0237g
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // Q3.AbstractC0237g, Q3.W
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Override // Q3.W
    @Deprecated
    public final boolean put(K k7, V v6) {
        throw new UnsupportedOperationException();
    }

    @Override // Q3.AbstractC0237g, Q3.W
    @Deprecated
    public final boolean remove(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override // Q3.W
    public int size() {
        return this.f13073n;
    }

    @Override // Q3.AbstractC0237g
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    @Override // Q3.AbstractC0237g, Q3.W
    public ImmutableMap<K, Collection<V>> asMap() {
        return this.f13072m;
    }

    @Override // Q3.AbstractC0237g, Q3.W
    public ImmutableCollection<Map.Entry<K, V>> entries() {
        return (ImmutableCollection) super.entries();
    }

    @Override // Q3.AbstractC0237g, Q3.W
    public ImmutableSet<K> keySet() {
        return this.f13072m.keySet();
    }

    @Override // Q3.AbstractC0237g, Q3.W
    public ImmutableCollection<V> values() {
        return (ImmutableCollection) super.values();
    }
}
