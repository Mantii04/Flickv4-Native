package com.google.common.collect;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
final class Iterators$EmptyModifiableIterator implements Iterator<Object> {

    /* renamed from: b, reason: collision with root package name */
    public static final Iterators$EmptyModifiableIterator f13084b;

    /* renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ Iterators$EmptyModifiableIterator[] f13085e;

    static {
        Iterators$EmptyModifiableIterator iterators$EmptyModifiableIterator = new Iterators$EmptyModifiableIterator("INSTANCE", 0);
        f13084b = iterators$EmptyModifiableIterator;
        f13085e = new Iterators$EmptyModifiableIterator[]{iterators$EmptyModifiableIterator};
    }

    public static Iterators$EmptyModifiableIterator valueOf(String str) {
        return (Iterators$EmptyModifiableIterator) Enum.valueOf(Iterators$EmptyModifiableIterator.class, str);
    }

    public static Iterators$EmptyModifiableIterator[] values() {
        return (Iterators$EmptyModifiableIterator[]) f13085e.clone();
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return false;
    }

    @Override // java.util.Iterator
    public Object next() {
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public void remove() {
        P3.v.checkState(false, "no calls to next() since the last call to remove()");
    }
}
