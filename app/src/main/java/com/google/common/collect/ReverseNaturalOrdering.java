package com.google.common.collect;

import java.io.Serializable;

/* loaded from: classes2.dex */
final class ReverseNaturalOrdering extends G implements Serializable {

    /* renamed from: b, reason: collision with root package name */
    public static final ReverseNaturalOrdering f13124b = new ReverseNaturalOrdering();
    private static final long serialVersionUID = 0;

    private ReverseNaturalOrdering() {
    }

    @Override // com.google.common.collect.G
    public <S extends Comparable<?>> G reverse() {
        return G.natural();
    }

    public String toString() {
        return "Ordering.natural().reverse()";
    }

    @Override // com.google.common.collect.G, java.util.Comparator
    public int compare(Comparable<?> comparable, Comparable<?> comparable2) {
        P3.v.checkNotNull(comparable);
        if (comparable == comparable2) {
            return 0;
        }
        return comparable2.compareTo(comparable);
    }
}
