package com.google.common.collect;

import Q3.M;
import Q3.O;
import Q3.c0;
import java.util.Collection;
import java.util.Map;

/* loaded from: classes2.dex */
public abstract class F {
    public static <K, V> Q3.G newListMultimap(Map<K, Collection<V>> map, P3.C c7) {
        Multimaps$CustomListMultimap multimaps$CustomListMultimap = new Multimaps$CustomListMultimap(map);
        multimaps$CustomListMultimap.f13091p = (P3.C) P3.v.checkNotNull(c7);
        return multimaps$CustomListMultimap;
    }

    public static <K, V1, V2> Q3.G transformEntries(Q3.G g7, O o6) {
        return new c0(g7, o6);
    }

    public static <K, V1, V2> Q3.G transformValues(Q3.G g7, P3.p pVar) {
        P3.v.checkNotNull(pVar);
        P3.v.checkNotNull(pVar);
        return transformEntries(g7, new M(pVar));
    }
}
