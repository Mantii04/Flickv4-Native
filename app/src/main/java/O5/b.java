package O5;

import java.util.Iterator;

/* loaded from: classes2.dex */
public final class b implements Iterator, I5.a {

    /* renamed from: b, reason: collision with root package name */
    public final Iterator f2444b;

    /* renamed from: e, reason: collision with root package name */
    public int f2445e;

    public b(c cVar) {
        d dVar;
        int i2;
        dVar = cVar.f2446a;
        this.f2444b = dVar.iterator();
        i2 = cVar.f2447b;
        this.f2445e = i2;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        Iterator it;
        while (true) {
            int i2 = this.f2445e;
            it = this.f2444b;
            if (i2 <= 0 || !it.hasNext()) {
                break;
            }
            it.next();
            this.f2445e--;
        }
        return it.hasNext();
    }

    @Override // java.util.Iterator
    public Object next() {
        Iterator it;
        while (true) {
            int i2 = this.f2445e;
            it = this.f2444b;
            if (i2 <= 0 || !it.hasNext()) {
                break;
            }
            it.next();
            this.f2445e--;
        }
        return it.next();
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
