package Q3;

import com.google.common.collect.ImmutableCollection;
import com.google.common.collect.ImmutableMultimap;

/* renamed from: Q3.x, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0253x extends x0 {

    /* renamed from: b, reason: collision with root package name */
    public final x0 f2923b;

    /* renamed from: e, reason: collision with root package name */
    public x0 f2924e = D.f2855j;

    public C0253x(ImmutableMultimap immutableMultimap) {
        this.f2923b = immutableMultimap.f13072m.values().iterator();
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f2924e.hasNext() || this.f2923b.hasNext();
    }

    @Override // java.util.Iterator
    public Object next() {
        if (!this.f2924e.hasNext()) {
            this.f2924e = ((ImmutableCollection) this.f2923b.next()).iterator();
        }
        return this.f2924e.next();
    }
}
