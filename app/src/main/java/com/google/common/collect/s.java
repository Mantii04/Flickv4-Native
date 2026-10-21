package com.google.common.collect;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes2.dex */
public abstract class s implements Iterator {

    /* renamed from: b, reason: collision with root package name */
    public int f13163b;

    /* renamed from: e, reason: collision with root package name */
    public int f13164e;

    /* renamed from: f, reason: collision with root package name */
    public int f13165f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ CompactHashMap f13166j;

    public s(CompactHashMap compactHashMap) {
        this.f13166j = compactHashMap;
        this.f13163b = compactHashMap.f13046m;
        this.f13164e = compactHashMap.isEmpty() ? -1 : 0;
        this.f13165f = -1;
    }

    public abstract Object a(int i2);

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f13164e >= 0;
    }

    @Override // java.util.Iterator
    public Object next() {
        CompactHashMap compactHashMap = this.f13166j;
        if (compactHashMap.f13046m != this.f13163b) {
            throw new ConcurrentModificationException();
        }
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i2 = this.f13164e;
        this.f13165f = i2;
        Object a7 = a(i2);
        int i7 = this.f13164e + 1;
        if (i7 >= compactHashMap.f13047n) {
            i7 = -1;
        }
        this.f13164e = i7;
        return a7;
    }

    @Override // java.util.Iterator
    public void remove() {
        CompactHashMap compactHashMap = this.f13166j;
        if (compactHashMap.f13046m != this.f13163b) {
            throw new ConcurrentModificationException();
        }
        P3.v.checkState(this.f13165f >= 0, "no calls to next() since the last call to remove()");
        this.f13163b += 32;
        compactHashMap.remove(compactHashMap.i()[this.f13165f]);
        this.f13164e--;
        this.f13165f = -1;
    }
}
