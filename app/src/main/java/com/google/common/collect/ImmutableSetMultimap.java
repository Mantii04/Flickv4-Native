package com.google.common.collect;

import Q3.C0252w;
import Q3.l0;
import Q3.x0;
import java.util.Collection;
import java.util.Map;

/* loaded from: classes2.dex */
public class ImmutableSetMultimap<K, V> extends ImmutableMultimap<K, V> implements l0 {
    private static final long serialVersionUID = 0;

    /* renamed from: p, reason: collision with root package name */
    public final transient ImmutableSet f13080p;

    /* renamed from: q, reason: collision with root package name */
    public transient ImmutableSet f13081q;

    public static final class EntrySet<K, V> extends ImmutableSet<Map.Entry<K, V>> {

        /* renamed from: f, reason: collision with root package name */
        public final transient ImmutableSetMultimap f13082f;

        public EntrySet(ImmutableSetMultimap immutableSetMultimap) {
            this.f13082f = immutableSetMultimap;
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return this.f13082f.containsEntry(entry.getKey(), entry.getValue());
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final boolean isPartialView() {
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.f13082f.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public x0 iterator() {
            ImmutableSetMultimap immutableSetMultimap = this.f13082f;
            immutableSetMultimap.getClass();
            return new C0252w(immutableSetMultimap);
        }
    }

    public ImmutableSetMultimap(ImmutableMap immutableMap, int i2) {
        super(immutableMap, i2);
        this.f13080p = ImmutableSet.of();
    }

    public static <K, V> ImmutableSetMultimap<K, V> of() {
        return EmptyImmutableSetMultimap.f13060r;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // Q3.W
    public /* bridge */ /* synthetic */ Collection get(Object obj) {
        return get((ImmutableSetMultimap<K, V>) obj);
    }

    @Override // Q3.W
    public ImmutableSet<V> get(K k7) {
        return (ImmutableSet) P3.t.firstNonNull((ImmutableSet) this.f13072m.get(k7), this.f13080p);
    }

    @Override // com.google.common.collect.ImmutableMultimap, Q3.AbstractC0237g, Q3.W
    public ImmutableSet<Map.Entry<K, V>> entries() {
        ImmutableSet<Map.Entry<K, V>> immutableSet = this.f13081q;
        if (immutableSet != null) {
            return immutableSet;
        }
        EntrySet entrySet = new EntrySet(this);
        this.f13081q = entrySet;
        return entrySet;
    }
}
