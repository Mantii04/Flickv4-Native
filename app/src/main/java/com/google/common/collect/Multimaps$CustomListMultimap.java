package com.google.common.collect;

import java.util.List;
import java.util.Map;
import java.util.NavigableMap;
import java.util.Set;
import java.util.SortedMap;

/* loaded from: classes2.dex */
class Multimaps$CustomListMultimap<K, V> extends AbstractListMultimap<K, V> {
    private static final long serialVersionUID = 0;

    /* renamed from: p, reason: collision with root package name */
    public transient P3.C f13091p;

    @Override // com.google.common.collect.AbstractMapBasedMultimap, Q3.AbstractC0237g
    public final Map a() {
        Map map = this.f13036m;
        return map instanceof NavigableMap ? new C0769h(this, (NavigableMap) map) : map instanceof SortedMap ? new j(this, (SortedMap) map) : new C0765d(this, map);
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap, Q3.AbstractC0237g
    public final Set c() {
        Map map = this.f13036m;
        return map instanceof NavigableMap ? new i(this, (NavigableMap) map) : map instanceof SortedMap ? new k(this, (SortedMap) map) : new C0768g(this, map);
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap
    public List<V> createCollection() {
        return (List) this.f13091p.get();
    }
}
