package W5;

import R5.C0287n;
import R5.InterfaceC0285m;
import R5.O0;
import R5.S;
import R5.Y;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import y5.InterfaceC1944c;
import y5.InterfaceC1952k;

/* renamed from: W5.i, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0362i extends S implements A5.c, InterfaceC1944c {

    /* renamed from: q, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f4192q = AtomicReferenceFieldUpdater.newUpdater(C0362i.class, Object.class, "_reusableCancellableContinuation");
    private volatile Object _reusableCancellableContinuation;

    /* renamed from: j, reason: collision with root package name */
    public final R5.E f4193j;

    /* renamed from: m, reason: collision with root package name */
    public final InterfaceC1944c f4194m;

    /* renamed from: n, reason: collision with root package name */
    public Object f4195n;

    /* renamed from: p, reason: collision with root package name */
    public final Object f4196p;

    public C0362i(R5.E e3, InterfaceC1944c interfaceC1944c) {
        super(-1);
        G g7;
        this.f4193j = e3;
        this.f4194m = interfaceC1944c;
        g7 = AbstractC0363j.f4197a;
        this.f4195n = g7;
        this.f4196p = kotlinx.coroutines.internal.a.threadContextElements(getContext());
    }

    public final void awaitReusability() {
        while (f4192q.get(this) == AbstractC0363j.f4198b) {
        }
    }

    @Override // R5.S
    public void cancelCompletedResult$kotlinx_coroutines_core(Object obj, Throwable th) {
        if (obj instanceof R5.B) {
            ((R5.B) obj).f3135b.invoke(th);
        }
    }

    public final C0287n claimReusableCancellableContinuation() {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f4192q;
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj == null) {
                atomicReferenceFieldUpdater.set(this, AbstractC0363j.f4198b);
                return null;
            }
            if (obj instanceof C0287n) {
                G g7 = AbstractC0363j.f4198b;
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, g7)) {
                    if (atomicReferenceFieldUpdater.get(this) != obj) {
                        break;
                    }
                }
                return (C0287n) obj;
            }
            if (obj != AbstractC0363j.f4198b && !(obj instanceof Throwable)) {
                throw new IllegalStateException(("Inconsistent state " + obj).toString());
            }
        }
    }

    @Override // A5.c
    public A5.c getCallerFrame() {
        InterfaceC1944c interfaceC1944c = this.f4194m;
        if (interfaceC1944c instanceof A5.c) {
            return (A5.c) interfaceC1944c;
        }
        return null;
    }

    @Override // y5.InterfaceC1944c
    public InterfaceC1952k getContext() {
        return this.f4194m.getContext();
    }

    public final boolean isReusable() {
        return f4192q.get(this) != null;
    }

    public final boolean postponeCancellation(Throwable th) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f4192q;
            Object obj = atomicReferenceFieldUpdater.get(this);
            G g7 = AbstractC0363j.f4198b;
            if (kotlin.jvm.internal.j.areEqual(obj, g7)) {
                while (!atomicReferenceFieldUpdater.compareAndSet(this, g7, th)) {
                    if (atomicReferenceFieldUpdater.get(this) != g7) {
                        break;
                    }
                }
                return true;
            }
            if (obj instanceof Throwable) {
                return true;
            }
            while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, null)) {
                if (atomicReferenceFieldUpdater.get(this) != obj) {
                    break;
                }
            }
            return false;
        }
    }

    public final void release() {
        awaitReusability();
        Object obj = f4192q.get(this);
        C0287n c0287n = obj instanceof C0287n ? (C0287n) obj : null;
        if (c0287n != null) {
            c0287n.detachChild$kotlinx_coroutines_core();
        }
    }

    @Override // y5.InterfaceC1944c
    public void resumeWith(Object obj) {
        InterfaceC1944c interfaceC1944c = this.f4194m;
        InterfaceC1952k context = interfaceC1944c.getContext();
        Object state$default = R5.D.toState$default(obj, null, 1, null);
        R5.E e3 = this.f4193j;
        if (e3.isDispatchNeeded(context)) {
            this.f4195n = state$default;
            this.f3159f = 0;
            e3.dispatch(context, this);
            return;
        }
        Y eventLoop$kotlinx_coroutines_core = O0.f3153a.getEventLoop$kotlinx_coroutines_core();
        if (eventLoop$kotlinx_coroutines_core.isUnconfinedLoopActive()) {
            this.f4195n = state$default;
            this.f3159f = 0;
            eventLoop$kotlinx_coroutines_core.dispatchUnconfined(this);
            return;
        }
        eventLoop$kotlinx_coroutines_core.incrementUseCount(true);
        try {
            InterfaceC1952k context2 = getContext();
            Object updateThreadContext = kotlinx.coroutines.internal.a.updateThreadContext(context2, this.f4196p);
            try {
                interfaceC1944c.resumeWith(obj);
                while (eventLoop$kotlinx_coroutines_core.processUnconfinedEvent()) {
                }
            } finally {
                kotlinx.coroutines.internal.a.restoreThreadContext(context2, updateThreadContext);
            }
        } finally {
            try {
            } finally {
            }
        }
    }

    @Override // R5.S
    public Object takeState$kotlinx_coroutines_core() {
        G g7;
        Object obj = this.f4195n;
        g7 = AbstractC0363j.f4197a;
        this.f4195n = g7;
        return obj;
    }

    public String toString() {
        return "DispatchedContinuation[" + this.f4193j + ", " + R5.K.toDebugString(this.f4194m) + ']';
    }

    public final Throwable tryReleaseClaimedContinuation(InterfaceC0285m interfaceC0285m) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f4192q;
            Object obj = atomicReferenceFieldUpdater.get(this);
            G g7 = AbstractC0363j.f4198b;
            if (obj == g7) {
                while (!atomicReferenceFieldUpdater.compareAndSet(this, g7, interfaceC0285m)) {
                    if (atomicReferenceFieldUpdater.get(this) != g7) {
                        break;
                    }
                }
                return null;
            }
            if (!(obj instanceof Throwable)) {
                throw new IllegalStateException(("Inconsistent state " + obj).toString());
            }
            while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, null)) {
                if (atomicReferenceFieldUpdater.get(this) != obj) {
                    throw new IllegalArgumentException("Failed requirement.");
                }
            }
            return (Throwable) obj;
        }
    }

    @Override // R5.S
    public InterfaceC1944c getDelegate$kotlinx_coroutines_core() {
        return this;
    }
}
