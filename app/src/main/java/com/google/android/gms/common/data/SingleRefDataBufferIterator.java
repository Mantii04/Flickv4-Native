package com.google.android.gms.common.data;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import java.util.NoSuchElementException;

@KeepForSdk
/* loaded from: classes.dex */
public class SingleRefDataBufferIterator<T> extends DataBufferIterator<T> {

    /* renamed from: f, reason: collision with root package name */
    public Object f10834f;

    @Override // com.google.android.gms.common.data.DataBufferIterator, java.util.Iterator
    public final T next() {
        if (!hasNext()) {
            int i2 = this.f10822e;
            StringBuilder sb = new StringBuilder(46);
            sb.append("Cannot advance the iterator beyond ");
            sb.append(i2);
            throw new NoSuchElementException(sb.toString());
        }
        int i7 = this.f10822e + 1;
        this.f10822e = i7;
        if (i7 == 0) {
            Object checkNotNull = Preconditions.checkNotNull(this.f10821b.get(0));
            this.f10834f = checkNotNull;
            if (!(checkNotNull instanceof DataBufferRef)) {
                String valueOf = String.valueOf(checkNotNull.getClass());
                StringBuilder sb2 = new StringBuilder(valueOf.length() + 44);
                sb2.append("DataBuffer reference of type ");
                sb2.append(valueOf);
                sb2.append(" is not movable");
                throw new IllegalStateException(sb2.toString());
            }
        } else {
            ((DataBufferRef) Preconditions.checkNotNull(this.f10834f)).zaa(this.f10822e);
        }
        return (T) this.f10834f;
    }
}
