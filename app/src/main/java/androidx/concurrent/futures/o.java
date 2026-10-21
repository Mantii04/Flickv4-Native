package androidx.concurrent.futures;

import V3.F;

/* loaded from: classes.dex */
public final class o extends i {
    public static <V> o create() {
        return new o();
    }

    @Override // androidx.concurrent.futures.i
    public boolean set(Object obj) {
        return super.set(obj);
    }

    @Override // androidx.concurrent.futures.i
    public boolean setException(Throwable th) {
        return super.setException(th);
    }

    @Override // androidx.concurrent.futures.i
    public boolean setFuture(F f3) {
        return super.setFuture(f3);
    }
}
