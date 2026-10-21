package com.google.common.collect;

import Q3.x0;
import java.util.NoSuchElementException;

/* renamed from: com.google.common.collect.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0762a extends x0 {

    /* renamed from: b, reason: collision with root package name */
    public AbstractIterator$State f13127b = AbstractIterator$State.f13032e;

    /* renamed from: e, reason: collision with root package name */
    public Object f13128e;

    public abstract Object computeNext();

    public final Object endOfData() {
        this.f13127b = AbstractIterator$State.f13033f;
        return null;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        AbstractIterator$State abstractIterator$State = this.f13127b;
        AbstractIterator$State abstractIterator$State2 = AbstractIterator$State.f13034j;
        P3.v.checkState(abstractIterator$State != abstractIterator$State2);
        int ordinal = this.f13127b.ordinal();
        if (ordinal == 0) {
            return true;
        }
        if (ordinal != 2) {
            this.f13127b = abstractIterator$State2;
            this.f13128e = computeNext();
            if (this.f13127b != AbstractIterator$State.f13033f) {
                this.f13127b = AbstractIterator$State.f13031b;
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
        this.f13127b = AbstractIterator$State.f13032e;
        Object obj = this.f13128e;
        this.f13128e = null;
        return obj;
    }
}
