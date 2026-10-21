package v5;

import java.util.ListIterator;
import java.util.NoSuchElementException;

/* renamed from: v5.c, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1767c extends C1766b implements ListIterator {

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ AbstractC1769e f20633f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1767c(AbstractC1769e abstractC1769e, int i2) {
        super(abstractC1769e);
        this.f20633f = abstractC1769e;
        AbstractC1769e.f20637b.checkPositionIndex$kotlin_stdlib(i2, abstractC1769e.size());
        setIndex(i2);
    }

    @Override // java.util.ListIterator
    public void add(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.ListIterator
    public boolean hasPrevious() {
        return getIndex() > 0;
    }

    @Override // java.util.ListIterator
    public int nextIndex() {
        return getIndex();
    }

    @Override // java.util.ListIterator
    public Object previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        setIndex(getIndex() - 1);
        return this.f20633f.get(getIndex());
    }

    @Override // java.util.ListIterator
    public int previousIndex() {
        return getIndex() - 1;
    }

    @Override // java.util.ListIterator
    public void set(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
