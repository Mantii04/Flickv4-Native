package com.google.android.gms.common.data;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Iterator;
import java.util.NoSuchElementException;

@KeepForSdk
/* loaded from: classes.dex */
public class DataBufferIterator<T> implements Iterator<T> {

    /* renamed from: b, reason: collision with root package name */
    public final DataBuffer f10821b;

    /* renamed from: e, reason: collision with root package name */
    public int f10822e = -1;

    public DataBufferIterator(DataBuffer<T> dataBuffer) {
        this.f10821b = (DataBuffer) Preconditions.checkNotNull(dataBuffer);
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f10822e < this.f10821b.getCount() + (-1);
    }

    @Override // java.util.Iterator
    public T next() {
        if (hasNext()) {
            int i2 = this.f10822e + 1;
            this.f10822e = i2;
            return (T) this.f10821b.get(i2);
        }
        int i7 = this.f10822e;
        StringBuilder sb = new StringBuilder(46);
        sb.append("Cannot advance the iterator beyond ");
        sb.append(i7);
        throw new NoSuchElementException(sb.toString());
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Cannot remove elements from a DataBufferIterator");
    }
}
