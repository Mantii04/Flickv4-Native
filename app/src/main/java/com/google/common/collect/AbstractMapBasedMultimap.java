package com.google.common.collect;

import Q3.AbstractC0237g;
import Q3.C0232b;
import Q3.C0233c;
import Q3.C0235e;
import Q3.C0236f;
import Q3.l0;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.RandomAccess;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class AbstractMapBasedMultimap<K, V> extends AbstractC0237g implements Serializable {
    private static final long serialVersionUID = 2447537837011683357L;

    /* renamed from: m, reason: collision with root package name */
    public final transient Map f13036m;

    /* renamed from: n, reason: collision with root package name */
    public transient int f13037n;

    public AbstractMapBasedMultimap(Map<K, Collection<V>> map) {
        P3.v.checkArgument(map.isEmpty());
        this.f13036m = map;
    }

    @Override // Q3.AbstractC0237g
    public Map a() {
        return new C0765d(this, this.f13036m);
    }

    @Override // Q3.AbstractC0237g
    public final Collection b() {
        return this instanceof l0 ? new C0236f(this) : new C0235e(this);
    }

    @Override // Q3.AbstractC0237g
    public Set c() {
        return new C0768g(this, this.f13036m);
    }

    @Override // Q3.W
    public void clear() {
        Map map = this.f13036m;
        Iterator<V> it = map.values().iterator();
        while (it.hasNext()) {
            ((Collection) it.next()).clear();
        }
        map.clear();
        this.f13037n = 0;
    }

    public abstract Collection createCollection();

    @Override // Q3.AbstractC0237g
    public final Collection d() {
        return new p(this);
    }

    @Override // Q3.AbstractC0237g
    public final Iterator e() {
        return new C0232b(this, 1);
    }

    @Override // Q3.AbstractC0237g, Q3.W
    public Collection<Map.Entry<K, V>> entries() {
        return (Collection<Map.Entry<K, V>>) super.entries();
    }

    @Override // Q3.W
    public Collection<V> get(K k7) {
        Collection collection = (Collection) this.f13036m.get(k7);
        if (collection == null) {
            collection = createCollection();
        }
        AbstractListMultimap abstractListMultimap = (AbstractListMultimap) this;
        List list = (List) collection;
        return list instanceof RandomAccess ? new C0233c(abstractListMultimap, k7, list, null) : new o(abstractListMultimap, k7, list, null);
    }

    @Override // Q3.W
    public boolean put(K k7, V v6) {
        Map map = this.f13036m;
        Collection collection = (Collection) map.get(k7);
        if (collection != null) {
            if (!collection.add(v6)) {
                return false;
            }
            this.f13037n++;
            return true;
        }
        Collection createCollection = createCollection();
        if (!createCollection.add(v6)) {
            throw new AssertionError("New Collection violated the Collection spec");
        }
        this.f13037n++;
        map.put(k7, createCollection);
        return true;
    }

    @Override // Q3.W
    public int size() {
        return this.f13037n;
    }

    @Override // Q3.AbstractC0237g, Q3.W
    public Collection<V> values() {
        return (Collection<V>) super.values();
    }
}
