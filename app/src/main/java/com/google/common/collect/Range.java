package com.google.common.collect;

import com.google.common.collect.Cut;
import java.io.Serializable;
import java.lang.Comparable;

/* loaded from: classes2.dex */
public final class Range<C extends Comparable> extends RangeGwtSerializationDependencies implements P3.w, Serializable {

    /* renamed from: f, reason: collision with root package name */
    public static final Range f13093f = new Range(Cut.BelowAll.f13055e, Cut.AboveAll.f13054e);
    private static final long serialVersionUID = 0;

    /* renamed from: b, reason: collision with root package name */
    public final Cut f13094b;

    /* renamed from: e, reason: collision with root package name */
    public final Cut f13095e;

    public Range(Cut cut, Cut cut2) {
        this.f13094b = (Cut) P3.v.checkNotNull(cut);
        this.f13095e = (Cut) P3.v.checkNotNull(cut2);
        if (cut.compareTo(cut2) > 0 || cut == Cut.AboveAll.f13054e || cut2 == Cut.BelowAll.f13055e) {
            StringBuilder sb = new StringBuilder("Invalid range: ");
            StringBuilder sb2 = new StringBuilder(16);
            cut.b(sb2);
            sb2.append("..");
            cut2.d(sb2);
            sb.append(sb2.toString());
            throw new IllegalArgumentException(sb.toString());
        }
    }

    public static <C extends Comparable<?>> Range<C> all() {
        return f13093f;
    }

    public static <C extends Comparable<?>> Range<C> closedOpen(C c7, C c8) {
        return new Range<>(new Cut.BelowValue((Comparable) P3.v.checkNotNull(c7)), new Cut.BelowValue((Comparable) P3.v.checkNotNull(c8)));
    }

    public boolean contains(C c7) {
        P3.v.checkNotNull(c7);
        return this.f13094b.f(c7) && !this.f13095e.f(c7);
    }

    public boolean equals(Object obj) {
        if (obj instanceof Range) {
            Range range = (Range) obj;
            if (this.f13094b.equals(range.f13094b) && this.f13095e.equals(range.f13095e)) {
                return true;
            }
        }
        return false;
    }

    public boolean hasUpperBound() {
        return this.f13095e != Cut.AboveAll.f13054e;
    }

    public int hashCode() {
        return (this.f13094b.hashCode() * 31) + this.f13095e.hashCode();
    }

    public boolean isEmpty() {
        return this.f13094b.equals(this.f13095e);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(16);
        this.f13094b.b(sb);
        sb.append("..");
        this.f13095e.d(sb);
        return sb.toString();
    }

    public C upperEndpoint() {
        return (C) this.f13095e.e();
    }

    @Override // P3.w
    @Deprecated
    public boolean apply(C c7) {
        return contains(c7);
    }
}
