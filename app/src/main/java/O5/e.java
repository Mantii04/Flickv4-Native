package O5;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Result;
import kotlin.coroutines.EmptyCoroutineContext;
import u5.C1711j;
import y5.InterfaceC1944c;
import y5.InterfaceC1952k;
import z5.AbstractC2008a;

/* loaded from: classes2.dex */
public final class e extends f implements Iterator, InterfaceC1944c, I5.a {

    /* renamed from: b, reason: collision with root package name */
    public int f2448b;

    /* renamed from: e, reason: collision with root package name */
    public Object f2449e;

    /* renamed from: f, reason: collision with root package name */
    public Iterator f2450f;

    /* renamed from: j, reason: collision with root package name */
    public InterfaceC1944c f2451j;

    public final RuntimeException a() {
        int i2 = this.f2448b;
        if (i2 == 4) {
            return new NoSuchElementException();
        }
        if (i2 == 5) {
            return new IllegalStateException("Iterator has failed.");
        }
        return new IllegalStateException("Unexpected state of the iterator: " + this.f2448b);
    }

    @Override // y5.InterfaceC1944c
    public InterfaceC1952k getContext() {
        return EmptyCoroutineContext.f17433b;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        while (true) {
            int i2 = this.f2448b;
            if (i2 != 0) {
                if (i2 != 1) {
                    if (i2 == 2 || i2 == 3) {
                        return true;
                    }
                    if (i2 == 4) {
                        return false;
                    }
                    throw a();
                }
                Iterator it = this.f2450f;
                kotlin.jvm.internal.j.checkNotNull(it);
                if (it.hasNext()) {
                    this.f2448b = 2;
                    return true;
                }
                this.f2450f = null;
            }
            this.f2448b = 5;
            InterfaceC1944c interfaceC1944c = this.f2451j;
            kotlin.jvm.internal.j.checkNotNull(interfaceC1944c);
            this.f2451j = null;
            int i7 = Result.f17390b;
            interfaceC1944c.resumeWith(Result.m103constructorimpl(C1711j.f20329a));
        }
    }

    @Override // java.util.Iterator
    public Object next() {
        int i2 = this.f2448b;
        if (i2 == 0 || i2 == 1) {
            if (hasNext()) {
                return next();
            }
            throw new NoSuchElementException();
        }
        if (i2 == 2) {
            this.f2448b = 1;
            Iterator it = this.f2450f;
            kotlin.jvm.internal.j.checkNotNull(it);
            return it.next();
        }
        if (i2 != 3) {
            throw a();
        }
        this.f2448b = 0;
        Object obj = this.f2449e;
        this.f2449e = null;
        return obj;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // y5.InterfaceC1944c
    public void resumeWith(Object obj) {
        kotlin.b.throwOnFailure(obj);
        this.f2448b = 4;
    }

    public final void setNextStep(InterfaceC1944c interfaceC1944c) {
        this.f2451j = interfaceC1944c;
    }

    @Override // O5.f
    public Object yield(Object obj, InterfaceC1944c interfaceC1944c) {
        this.f2449e = obj;
        this.f2448b = 3;
        this.f2451j = interfaceC1944c;
        Object coroutine_suspended = AbstractC2008a.getCOROUTINE_SUSPENDED();
        if (coroutine_suspended == AbstractC2008a.getCOROUTINE_SUSPENDED()) {
            A5.f.probeCoroutineSuspended(interfaceC1944c);
        }
        return coroutine_suspended == AbstractC2008a.getCOROUTINE_SUSPENDED() ? coroutine_suspended : C1711j.f20329a;
    }

    @Override // O5.f
    public Object yieldAll(Iterator<Object> it, InterfaceC1944c interfaceC1944c) {
        boolean hasNext = it.hasNext();
        C1711j c1711j = C1711j.f20329a;
        if (!hasNext) {
            return c1711j;
        }
        this.f2450f = it;
        this.f2448b = 2;
        this.f2451j = interfaceC1944c;
        Object coroutine_suspended = AbstractC2008a.getCOROUTINE_SUSPENDED();
        if (coroutine_suspended == AbstractC2008a.getCOROUTINE_SUSPENDED()) {
            A5.f.probeCoroutineSuspended(interfaceC1944c);
        }
        return coroutine_suspended == AbstractC2008a.getCOROUTINE_SUSPENDED() ? coroutine_suspended : c1711j;
    }
}
