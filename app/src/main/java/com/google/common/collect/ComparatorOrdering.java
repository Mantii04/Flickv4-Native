package com.google.common.collect;

import java.io.Serializable;
import java.util.Comparator;

/* loaded from: classes2.dex */
final class ComparatorOrdering<T> extends G implements Serializable {
    private static final long serialVersionUID = 0;

    /* renamed from: b, reason: collision with root package name */
    public final Comparator f13051b;

    public ComparatorOrdering(Comparator comparator) {
        this.f13051b = (Comparator) P3.v.checkNotNull(comparator);
    }

    @Override // com.google.common.collect.G, java.util.Comparator
    public int compare(T t6, T t7) {
        return this.f13051b.compare(t6, t7);
    }

    @Override // java.util.Comparator
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ComparatorOrdering) {
            return this.f13051b.equals(((ComparatorOrdering) obj).f13051b);
        }
        return false;
    }

    public int hashCode() {
        return this.f13051b.hashCode();
    }

    public String toString() {
        return this.f13051b.toString();
    }
}
