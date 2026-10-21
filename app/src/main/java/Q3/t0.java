package Q3;

import java.util.Iterator;

/* loaded from: classes2.dex */
public abstract class t0 implements Iterator {

    /* renamed from: b, reason: collision with root package name */
    public final Iterator f2912b;

    public t0(Iterator it) {
        this.f2912b = (Iterator) P3.v.checkNotNull(it);
    }

    public abstract Object a(Object obj);

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f2912b.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        return a(this.f2912b.next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f2912b.remove();
    }
}
