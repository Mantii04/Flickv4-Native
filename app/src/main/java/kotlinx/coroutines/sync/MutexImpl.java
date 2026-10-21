package kotlinx.coroutines.sync;

import A5.f;
import H5.l;
import H5.q;
import R5.AbstractC0291p;
import R5.C0287n;
import R5.InterfaceC0285m;
import R5.K;
import R5.S0;
import W5.D;
import W5.G;
import Z5.a;
import a6.b;
import a6.c;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlinx.coroutines.sync.MutexImpl;
import u5.C1711j;
import y5.InterfaceC1944c;
import y5.InterfaceC1952k;
import z5.AbstractC2008a;

/* loaded from: classes2.dex */
public final class MutexImpl extends SemaphoreImpl implements b {

    /* renamed from: h, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f17624h = AtomicReferenceFieldUpdater.newUpdater(MutexImpl.class, Object.class, "owner");
    private volatile Object owner;

    public final class CancellableContinuationWithOwner implements InterfaceC0285m, S0 {

        /* renamed from: b, reason: collision with root package name */
        public final C0287n f17625b;

        /* renamed from: e, reason: collision with root package name */
        public final Object f17626e;

        public CancellableContinuationWithOwner(C0287n c0287n, Object obj) {
            this.f17625b = c0287n;
            this.f17626e = obj;
        }

        @Override // R5.InterfaceC0285m
        public boolean cancel(Throwable th) {
            return this.f17625b.cancel(th);
        }

        @Override // R5.InterfaceC0285m
        public void completeResume(Object obj) {
            this.f17625b.completeResume(obj);
        }

        @Override // y5.InterfaceC1944c
        public InterfaceC1952k getContext() {
            return this.f17625b.getContext();
        }

        @Override // R5.InterfaceC0285m
        public void invokeOnCancellation(l lVar) {
            this.f17625b.invokeOnCancellation(lVar);
        }

        @Override // y5.InterfaceC1944c
        public void resumeWith(Object obj) {
            this.f17625b.resumeWith(obj);
        }

        @Override // R5.S0
        public void invokeOnCancellation(D d7, int i2) {
            this.f17625b.invokeOnCancellation(d7, i2);
        }

        @Override // R5.InterfaceC0285m
        public void resume(C1711j c1711j, l lVar) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = MutexImpl.f17624h;
            final MutexImpl mutexImpl = MutexImpl.this;
            atomicReferenceFieldUpdater.set(mutexImpl, this.f17626e);
            this.f17625b.resume(c1711j, new l() { // from class: kotlinx.coroutines.sync.MutexImpl$CancellableContinuationWithOwner$resume$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // H5.l
                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    invoke((Throwable) obj);
                    return C1711j.f20329a;
                }

                public final void invoke(Throwable th) {
                    MutexImpl.this.unlock(this.f17626e);
                }
            });
        }

        @Override // R5.InterfaceC0285m
        public Object tryResume(C1711j c1711j, Object obj, l lVar) {
            final MutexImpl mutexImpl = MutexImpl.this;
            Object tryResume = this.f17625b.tryResume(c1711j, obj, new l() { // from class: kotlinx.coroutines.sync.MutexImpl$CancellableContinuationWithOwner$tryResume$token$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // H5.l
                public /* bridge */ /* synthetic */ Object invoke(Object obj2) {
                    invoke((Throwable) obj2);
                    return C1711j.f20329a;
                }

                public final void invoke(Throwable th) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = MutexImpl.f17624h;
                    MutexImpl.CancellableContinuationWithOwner cancellableContinuationWithOwner = this;
                    Object obj2 = cancellableContinuationWithOwner.f17626e;
                    MutexImpl mutexImpl2 = MutexImpl.this;
                    atomicReferenceFieldUpdater.set(mutexImpl2, obj2);
                    mutexImpl2.unlock(cancellableContinuationWithOwner.f17626e);
                }
            });
            if (tryResume != null) {
                MutexImpl.f17624h.set(mutexImpl, this.f17626e);
            }
            return tryResume;
        }
    }

    public MutexImpl(boolean z6) {
        super(1, z6 ? 1 : 0);
        this.owner = z6 ? null : c.f4826a;
        new q() { // from class: kotlinx.coroutines.sync.MutexImpl$onSelectCancellationUnlockConstructor$1
            {
                super(3);
            }

            @Override // H5.q
            public /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
                if (obj == null) {
                    return invoke((a) null, obj2, obj3);
                }
                throw new ClassCastException();
            }

            public final l invoke(a aVar, final Object obj, Object obj2) {
                final MutexImpl mutexImpl = MutexImpl.this;
                return new l() { // from class: kotlinx.coroutines.sync.MutexImpl$onSelectCancellationUnlockConstructor$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // H5.l
                    public /* bridge */ /* synthetic */ Object invoke(Object obj3) {
                        invoke((Throwable) obj3);
                        return C1711j.f20329a;
                    }

                    public final void invoke(Throwable th) {
                        MutexImpl.this.unlock(obj);
                    }
                };
            }
        };
    }

    public boolean holdsLock(Object obj) {
        G g7;
        while (isLocked()) {
            Object obj2 = f17624h.get(this);
            g7 = c.f4826a;
            if (obj2 != g7) {
                return obj2 == obj;
            }
        }
        return false;
    }

    public boolean isLocked() {
        return getAvailablePermits() == 0;
    }

    public Object lock(Object obj, InterfaceC1944c interfaceC1944c) {
        boolean tryLock = tryLock(obj);
        C1711j c1711j = C1711j.f20329a;
        if (!tryLock) {
            C0287n orCreateCancellableContinuation = AbstractC0291p.getOrCreateCancellableContinuation(IntrinsicsKt__IntrinsicsJvmKt.intercepted(interfaceC1944c));
            try {
                acquire(new CancellableContinuationWithOwner(orCreateCancellableContinuation, obj));
                Object result = orCreateCancellableContinuation.getResult();
                if (result == AbstractC2008a.getCOROUTINE_SUSPENDED()) {
                    f.probeCoroutineSuspended(interfaceC1944c);
                }
                if (result != AbstractC2008a.getCOROUTINE_SUSPENDED()) {
                    result = c1711j;
                }
                if (result == AbstractC2008a.getCOROUTINE_SUSPENDED()) {
                    return result;
                }
            } catch (Throwable th) {
                orCreateCancellableContinuation.releaseClaimedReusableContinuation$kotlinx_coroutines_core();
                throw th;
            }
        }
        return c1711j;
    }

    public String toString() {
        return "Mutex@" + K.getHexAddress(this) + "[isLocked=" + isLocked() + ",owner=" + f17624h.get(this) + ']';
    }

    public boolean tryLock(Object obj) {
        char c7;
        do {
            if (tryAcquire()) {
                f17624h.set(this, obj);
                c7 = 0;
                break;
            }
            if (obj == null) {
                break;
            }
            if (holdsLock(obj)) {
                c7 = 2;
                break;
            }
        } while (!isLocked());
        c7 = 1;
        if (c7 == 0) {
            return true;
        }
        if (c7 == 1) {
            return false;
        }
        if (c7 != 2) {
            throw new IllegalStateException("unexpected");
        }
        throw new IllegalStateException(("This mutex is already locked by the specified owner: " + obj).toString());
    }

    public void unlock(Object obj) {
        G g7;
        G g8;
        while (isLocked()) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f17624h;
            Object obj2 = atomicReferenceFieldUpdater.get(this);
            g7 = c.f4826a;
            if (obj2 != g7) {
                if (obj2 == obj || obj == null) {
                    g8 = c.f4826a;
                    while (!atomicReferenceFieldUpdater.compareAndSet(this, obj2, g8)) {
                        if (atomicReferenceFieldUpdater.get(this) != obj2) {
                            break;
                        }
                    }
                    release();
                    return;
                }
                throw new IllegalStateException(("This mutex is locked by " + obj2 + ", but " + obj + " is expected").toString());
            }
        }
        throw new IllegalStateException("This mutex is not locked");
    }
}
