package Q3;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;

/* renamed from: Q3.j, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0240j extends AbstractCollection {

    /* renamed from: b, reason: collision with root package name */
    public final Collection f2891b;

    /* renamed from: e, reason: collision with root package name */
    public final P3.p f2892e;

    public C0240j(Collection collection, P3.p pVar) {
        this.f2891b = (Collection) P3.v.checkNotNull(collection);
        this.f2892e = (P3.p) P3.v.checkNotNull(pVar);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public void clear() {
        this.f2891b.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return this.f2891b.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator<Object> iterator() {
        return F.transform(this.f2891b.iterator(), this.f2892e);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public int size() {
        return this.f2891b.size();
    }
}
