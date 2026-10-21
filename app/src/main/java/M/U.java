package M;

import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class U implements Iterator, I5.a {

    /* renamed from: b, reason: collision with root package name */
    public final H5.l f1976b;

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f1977e = new ArrayList();

    /* renamed from: f, reason: collision with root package name */
    public Iterator f1978f;

    public U(Iterator<Object> it, H5.l lVar) {
        this.f1976b = lVar;
        this.f1978f = it;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f1978f.hasNext();
    }

    @Override // java.util.Iterator
    public Object next() {
        Object next = this.f1978f.next();
        Iterator it = (Iterator) this.f1976b.invoke(next);
        ArrayList arrayList = this.f1977e;
        if (it != null && it.hasNext()) {
            arrayList.add(this.f1978f);
            this.f1978f = it;
            return next;
        }
        while (!this.f1978f.hasNext() && !arrayList.isEmpty()) {
            this.f1978f = (Iterator) v5.u.last(arrayList);
            v5.s.removeLast(arrayList);
        }
        return next;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
