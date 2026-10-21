package com.google.common.collect;

import java.io.Serializable;

/* loaded from: classes2.dex */
final class ReverseOrdering<T> extends G implements Serializable {
    private static final long serialVersionUID = 0;

    /* renamed from: b, reason: collision with root package name */
    public final G f13125b;

    public ReverseOrdering(G g7) {
        this.f13125b = (G) P3.v.checkNotNull(g7);
    }

    @Override // com.google.common.collect.G, java.util.Comparator
    public int compare(T t6, T t7) {
        return this.f13125b.compare(t7, t6);
    }

    @Override // java.util.Comparator
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ReverseOrdering) {
            return this.f13125b.equals(((ReverseOrdering) obj).f13125b);
        }
        return false;
    }

    public int hashCode() {
        return -this.f13125b.hashCode();
    }

    @Override // com.google.common.collect.G
    public <S extends T> G reverse() {
        return this.f13125b;
    }

    public String toString() {
        return this.f13125b + ".reverse()";
    }
}
