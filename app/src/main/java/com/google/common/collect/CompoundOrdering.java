package com.google.common.collect;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Comparator;

/* loaded from: classes2.dex */
final class CompoundOrdering<T> extends G implements Serializable {
    private static final long serialVersionUID = 0;

    /* renamed from: b, reason: collision with root package name */
    public final Comparator[] f13052b;

    public CompoundOrdering(G g7, Comparator comparator) {
        this.f13052b = new Comparator[]{g7, comparator};
    }

    @Override // com.google.common.collect.G, java.util.Comparator
    public int compare(T t6, T t7) {
        int i2 = 0;
        while (true) {
            Comparator[] comparatorArr = this.f13052b;
            if (i2 >= comparatorArr.length) {
                return 0;
            }
            int compare = comparatorArr[i2].compare(t6, t7);
            if (compare != 0) {
                return compare;
            }
            i2++;
        }
    }

    @Override // java.util.Comparator
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof CompoundOrdering) {
            return Arrays.equals(this.f13052b, ((CompoundOrdering) obj).f13052b);
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(this.f13052b);
    }

    public String toString() {
        return A.i.o(new StringBuilder("Ordering.compound("), Arrays.toString(this.f13052b), ")");
    }
}
