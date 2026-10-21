package com.google.common.collect;

import java.io.Serializable;

/* loaded from: classes2.dex */
final class ByFunctionOrdering<F, T> extends G implements Serializable {
    private static final long serialVersionUID = 0;

    /* renamed from: b, reason: collision with root package name */
    public final P3.p f13039b;

    /* renamed from: e, reason: collision with root package name */
    public final G f13040e;

    public ByFunctionOrdering(P3.p pVar, G g7) {
        this.f13039b = (P3.p) P3.v.checkNotNull(pVar);
        this.f13040e = (G) P3.v.checkNotNull(g7);
    }

    @Override // com.google.common.collect.G, java.util.Comparator
    public int compare(F f3, F f7) {
        P3.p pVar = this.f13039b;
        return this.f13040e.compare(pVar.apply(f3), pVar.apply(f7));
    }

    @Override // java.util.Comparator
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ByFunctionOrdering) {
            ByFunctionOrdering byFunctionOrdering = (ByFunctionOrdering) obj;
            if (this.f13039b.equals(byFunctionOrdering.f13039b) && this.f13040e.equals(byFunctionOrdering.f13040e)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return P3.u.hashCode(this.f13039b, this.f13040e);
    }

    public String toString() {
        return this.f13040e + ".onResultOf(" + this.f13039b + ")";
    }
}
