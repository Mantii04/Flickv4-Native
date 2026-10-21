package com.google.common.base;

import P3.w;
import java.io.Serializable;
import java.util.List;

/* loaded from: classes2.dex */
class Predicates$AndPredicate<T> implements w, Serializable {
    private static final long serialVersionUID = 0;

    /* renamed from: b, reason: collision with root package name */
    public final List f13018b;

    public Predicates$AndPredicate(List list) {
        this.f13018b = list;
    }

    @Override // P3.w
    public boolean apply(T t6) {
        int i2 = 0;
        while (true) {
            List list = this.f13018b;
            if (i2 >= list.size()) {
                return true;
            }
            if (!((w) list.get(i2)).apply(t6)) {
                return false;
            }
            i2++;
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof Predicates$AndPredicate) {
            return this.f13018b.equals(((Predicates$AndPredicate) obj).f13018b);
        }
        return false;
    }

    public int hashCode() {
        return this.f13018b.hashCode() + 306654252;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Predicates.and(");
        boolean z6 = true;
        for (T t6 : this.f13018b) {
            if (!z6) {
                sb.append(',');
            }
            sb.append(t6);
            z6 = false;
        }
        sb.append(')');
        return sb.toString();
    }
}
