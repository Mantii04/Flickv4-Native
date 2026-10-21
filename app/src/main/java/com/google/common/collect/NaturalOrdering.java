package com.google.common.collect;

import java.io.Serializable;

/* loaded from: classes2.dex */
final class NaturalOrdering extends G implements Serializable {

    /* renamed from: b, reason: collision with root package name */
    public static final NaturalOrdering f13092b = new NaturalOrdering();
    private static final long serialVersionUID = 0;

    private NaturalOrdering() {
    }

    @Override // com.google.common.collect.G
    public <S extends Comparable<?>> G reverse() {
        return ReverseNaturalOrdering.f13124b;
    }

    public String toString() {
        return "Ordering.natural()";
    }

    @Override // com.google.common.collect.G, java.util.Comparator
    public int compare(Comparable<?> comparable, Comparable<?> comparable2) {
        P3.v.checkNotNull(comparable);
        P3.v.checkNotNull(comparable2);
        return comparable.compareTo(comparable2);
    }
}
