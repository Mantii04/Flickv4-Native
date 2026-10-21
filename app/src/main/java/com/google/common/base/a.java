package com.google.common.base;

import P3.v;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes2.dex */
public abstract class a implements Iterator {

    /* renamed from: b, reason: collision with root package name */
    public AbstractIterator$State f13027b = AbstractIterator$State.f13014e;

    /* renamed from: e, reason: collision with root package name */
    public Object f13028e;

    public abstract Object computeNext();

    public final Object endOfData() {
        this.f13027b = AbstractIterator$State.f13015f;
        return null;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        AbstractIterator$State abstractIterator$State = this.f13027b;
        AbstractIterator$State abstractIterator$State2 = AbstractIterator$State.f13016j;
        v.checkState(abstractIterator$State != abstractIterator$State2);
        int ordinal = this.f13027b.ordinal();
        if (ordinal == 0) {
            return true;
        }
        if (ordinal != 2) {
            this.f13027b = abstractIterator$State2;
            this.f13028e = computeNext();
            if (this.f13027b != AbstractIterator$State.f13015f) {
                this.f13027b = AbstractIterator$State.f13013b;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f13027b = AbstractIterator$State.f13014e;
        Object obj = this.f13028e;
        this.f13028e = null;
        return obj;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
