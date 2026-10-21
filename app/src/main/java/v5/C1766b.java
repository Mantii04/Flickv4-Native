package v5;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* renamed from: v5.b, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C1766b implements Iterator, I5.a {

    /* renamed from: b, reason: collision with root package name */
    public int f20631b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ AbstractC1769e f20632e;

    public C1766b(AbstractC1769e abstractC1769e) {
        this.f20632e = abstractC1769e;
    }

    public final int getIndex() {
        return this.f20631b;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f20631b < this.f20632e.size();
    }

    @Override // java.util.Iterator
    public Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i2 = this.f20631b;
        this.f20631b = i2 + 1;
        return this.f20632e.get(i2);
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final void setIndex(int i2) {
        this.f20631b = i2;
    }
}
