package com.google.common.collect;

import java.util.Comparator;

/* loaded from: classes2.dex */
public abstract class G implements Comparator {
    public static <T> G from(Comparator<T> comparator) {
        return comparator instanceof G ? (G) comparator : new ComparatorOrdering(comparator);
    }

    public static <C extends Comparable> G natural() {
        return NaturalOrdering.f13092b;
    }

    @Override // java.util.Comparator
    public abstract int compare(Object obj, Object obj2);

    public <U> G compound(Comparator<? super U> comparator) {
        return new CompoundOrdering(this, (Comparator) P3.v.checkNotNull(comparator));
    }

    public <F> G onResultOf(P3.p pVar) {
        return new ByFunctionOrdering(pVar, this);
    }

    public <S> G reverse() {
        return new ReverseOrdering(this);
    }
}
