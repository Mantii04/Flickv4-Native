package O5;

import java.util.Iterator;

/* loaded from: classes2.dex */
public final class m implements Iterator, I5.a {

    /* renamed from: b, reason: collision with root package name */
    public final Iterator f2455b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ n f2456e;

    public m(n nVar) {
        d dVar;
        this.f2456e = nVar;
        dVar = nVar.f2457a;
        this.f2455b = dVar.iterator();
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f2455b.hasNext();
    }

    @Override // java.util.Iterator
    public Object next() {
        H5.l lVar;
        lVar = this.f2456e.f2458b;
        return lVar.invoke(this.f2455b.next());
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
