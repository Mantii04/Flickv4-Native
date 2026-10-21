package com.google.common.collect;

import Q3.C0248s;
import java.util.Map;
import java.util.Set;

/* loaded from: classes2.dex */
public abstract class x {

    /* renamed from: a, reason: collision with root package name */
    public Map f13175a;

    public Q3.r a() {
        return ImmutableList.builderWithExpectedSize(4);
    }

    public ImmutableMultimap<Object, Object> build() {
        Map map = this.f13175a;
        if (map == null) {
            return ImmutableListMultimap.of();
        }
        Set<Map.Entry> entrySet = map.entrySet();
        if (entrySet.isEmpty()) {
            return ImmutableListMultimap.of();
        }
        w wVar = new w(entrySet.size());
        int i2 = 0;
        for (Map.Entry entry : entrySet) {
            Object key = entry.getKey();
            ImmutableList<Object> build = ((C0248s) entry.getValue()).build();
            wVar.put(key, build);
            i2 += build.size();
        }
        return new ImmutableListMultimap(wVar.buildOrThrow(), i2);
    }

    public x put(Object obj, Object obj2) {
        V3.r.a(obj, obj2);
        Map map = this.f13175a;
        if (map == null) {
            map = CompactHashMap.create();
            this.f13175a = map;
        }
        Q3.r rVar = (Q3.r) map.get(obj);
        if (rVar == null) {
            rVar = a();
            Map map2 = this.f13175a;
            if (map2 == null) {
                map2 = CompactHashMap.create();
                this.f13175a = map2;
            }
            map2.put(obj, rVar);
        }
        rVar.add(obj2);
        return this;
    }
}
