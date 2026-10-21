package R5;

import W5.C0362i;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlinx.coroutines.CompletionHandlerException;
import y5.InterfaceC1944c;
import y5.InterfaceC1952k;
import z5.AbstractC2008a;

/* renamed from: R5.n, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0287n extends S implements InterfaceC0285m, A5.c, S0 {

    /* renamed from: n, reason: collision with root package name */
    public static final AtomicIntegerFieldUpdater f3182n = AtomicIntegerFieldUpdater.newUpdater(C0287n.class, "_decisionAndIndex");

    /* renamed from: p, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f3183p = AtomicReferenceFieldUpdater.newUpdater(C0287n.class, Object.class, "_state");

    /* renamed from: q, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f3184q = AtomicReferenceFieldUpdater.newUpdater(C0287n.class, Object.class, "_parentHandle");
    private volatile int _decisionAndIndex;
    private volatile Object _parentHandle;
    private volatile Object _state;

    /* renamed from: j, reason: collision with root package name */
    public final InterfaceC1944c f3185j;

    /* renamed from: m, reason: collision with root package name */
    public final InterfaceC1952k f3186m;

    public C0287n(InterfaceC1944c interfaceC1944c, int i2) {
        super(i2);
        this.f3185j = interfaceC1944c;
        this.f3186m = interfaceC1944c.getContext();
        this._decisionAndIndex = 536870911;
        this._state = C0267d.f3172b;
    }

    public static void f(H0 h02, Object obj) {
        throw new IllegalStateException(("It's prohibited to register multiple handlers, tried to register " + h02 + ", already has " + obj).toString());
    }

    public static Object h(H0 h02, Object obj, int i2, H5.l lVar, Object obj2) {
        if (obj instanceof A) {
            return obj;
        }
        if ((T.isCancellableMode(i2) || obj2 != null) && !(lVar == null && !(h02 instanceof AbstractC0279j) && obj2 == null)) {
            return new C0306z(obj, h02 instanceof AbstractC0279j ? (AbstractC0279j) h02 : null, lVar, obj2, null, 16, null);
        }
        return obj;
    }

    public final void a(W5.D d7, Throwable th) {
        int i2 = f3182n.get(this) & 536870911;
        if (i2 == 536870911) {
            throw new IllegalStateException("The index for Segment.onCancellation(..) is broken");
        }
        try {
            d7.onCancellation(i2, th, getContext());
        } catch (Throwable th2) {
            G.handleCoroutineException(getContext(), new CompletionHandlerException("Exception in invokeOnCancellation handler for " + this, th2));
        }
    }

    public final void b(int i2) {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        int i7;
        do {
            atomicIntegerFieldUpdater = f3182n;
            i7 = atomicIntegerFieldUpdater.get(this);
            int i8 = i7 >> 29;
            if (i8 != 0) {
                if (i8 != 1) {
                    throw new IllegalStateException("Already resumed");
                }
                T.dispatch(this, i2);
                return;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i7, 1073741824 + (536870911 & i7)));
    }

    public final V c() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        InterfaceC0294q0 interfaceC0294q0 = (InterfaceC0294q0) getContext().get(F.f3147e);
        if (interfaceC0294q0 == null) {
            return null;
        }
        V invokeOnCompletion$default = AbstractC0292p0.invokeOnCompletion$default(interfaceC0294q0, true, false, new r(this), 2, null);
        do {
            atomicReferenceFieldUpdater = f3184q;
            if (atomicReferenceFieldUpdater.compareAndSet(this, null, invokeOnCompletion$default)) {
                break;
            }
        } while (atomicReferenceFieldUpdater.get(this) == null);
        return invokeOnCompletion$default;
    }

    public final void callCancelHandler(AbstractC0279j abstractC0279j, Throwable th) {
        try {
            abstractC0279j.invoke(th);
        } catch (Throwable th2) {
            G.handleCoroutineException(getContext(), new CompletionHandlerException("Exception in invokeOnCancellation handler for " + this, th2));
        }
    }

    public final void callOnCancellation(H5.l lVar, Throwable th) {
        try {
            lVar.invoke(th);
        } catch (Throwable th2) {
            G.handleCoroutineException(getContext(), new CompletionHandlerException("Exception in resume onCancellation handler for " + this, th2));
        }
    }

    @Override // R5.InterfaceC0285m
    public boolean cancel(Throwable th) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f3183p;
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (!(obj instanceof H0)) {
                return false;
            }
            C0293q c0293q = new C0293q(this, th, (obj instanceof AbstractC0279j) || (obj instanceof W5.D));
            while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, c0293q)) {
                if (atomicReferenceFieldUpdater.get(this) != obj) {
                    break;
                }
            }
            H0 h02 = (H0) obj;
            if (h02 instanceof AbstractC0279j) {
                callCancelHandler((AbstractC0279j) obj, th);
            } else if (h02 instanceof W5.D) {
                a((W5.D) obj, th);
            }
            if (!e()) {
                detachChild$kotlinx_coroutines_core();
            }
            b(this.f3159f);
            return true;
        }
    }

    @Override // R5.S
    public void cancelCompletedResult$kotlinx_coroutines_core(Object obj, Throwable th) {
        Throwable th2;
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f3183p;
            Object obj2 = atomicReferenceFieldUpdater.get(this);
            if (obj2 instanceof H0) {
                throw new IllegalStateException("Not completed");
            }
            if (obj2 instanceof A) {
                return;
            }
            if (!(obj2 instanceof C0306z)) {
                th2 = th;
                C0306z c0306z = new C0306z(obj2, null, null, null, th2, 14, null);
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj2, c0306z)) {
                    if (atomicReferenceFieldUpdater.get(this) != obj2) {
                        break;
                    }
                }
                return;
            }
            C0306z c0306z2 = (C0306z) obj2;
            if (c0306z2.getCancelled()) {
                throw new IllegalStateException("Must be called at most once");
            }
            Throwable th3 = th;
            C0306z copy$default = C0306z.copy$default(c0306z2, null, null, null, null, th3, 15, null);
            th2 = th3;
            while (!atomicReferenceFieldUpdater.compareAndSet(this, obj2, copy$default)) {
                if (atomicReferenceFieldUpdater.get(this) != obj2) {
                    break;
                }
            }
            c0306z2.invokeHandlers(this, th2);
            return;
            th = th2;
        }
    }

    @Override // R5.InterfaceC0285m
    public void completeResume(Object obj) {
        b(this.f3159f);
    }

    public final void d(H0 h02) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f3183p;
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj instanceof C0267d) {
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, h02)) {
                    if (atomicReferenceFieldUpdater.get(this) != obj) {
                        break;
                    }
                }
                return;
            }
            if (obj instanceof AbstractC0279j ? true : obj instanceof W5.D) {
                f(h02, obj);
                throw null;
            }
            if (obj instanceof A) {
                A a7 = (A) obj;
                if (!a7.makeHandled()) {
                    f(h02, obj);
                    throw null;
                }
                if (obj instanceof C0293q) {
                    if (!(obj instanceof A)) {
                        a7 = null;
                    }
                    Throwable th = a7 != null ? a7.f3131a : null;
                    if (h02 instanceof AbstractC0279j) {
                        callCancelHandler((AbstractC0279j) h02, th);
                        return;
                    } else {
                        kotlin.jvm.internal.j.checkNotNull(h02, "null cannot be cast to non-null type kotlinx.coroutines.internal.Segment<*>");
                        a((W5.D) h02, th);
                        return;
                    }
                }
                return;
            }
            if (!(obj instanceof C0306z)) {
                if (h02 instanceof W5.D) {
                    return;
                }
                kotlin.jvm.internal.j.checkNotNull(h02, "null cannot be cast to non-null type kotlinx.coroutines.CancelHandler");
                C0306z c0306z = new C0306z(obj, (AbstractC0279j) h02, null, null, null, 28, null);
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, c0306z)) {
                    if (atomicReferenceFieldUpdater.get(this) != obj) {
                        break;
                    }
                }
                return;
            }
            C0306z c0306z2 = (C0306z) obj;
            if (c0306z2.f3206b != null) {
                f(h02, obj);
                throw null;
            }
            if (h02 instanceof W5.D) {
                return;
            }
            kotlin.jvm.internal.j.checkNotNull(h02, "null cannot be cast to non-null type kotlinx.coroutines.CancelHandler");
            AbstractC0279j abstractC0279j = (AbstractC0279j) h02;
            if (c0306z2.getCancelled()) {
                callCancelHandler(abstractC0279j, c0306z2.f3209e);
                return;
            }
            C0306z copy$default = C0306z.copy$default(c0306z2, null, abstractC0279j, null, null, null, 29, null);
            while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, copy$default)) {
                if (atomicReferenceFieldUpdater.get(this) != obj) {
                    break;
                }
            }
            return;
        }
    }

    public final void detachChild$kotlinx_coroutines_core() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f3184q;
        V v6 = (V) atomicReferenceFieldUpdater.get(this);
        if (v6 == null) {
            return;
        }
        v6.dispose();
        atomicReferenceFieldUpdater.set(this, G0.f3148b);
    }

    public final boolean e() {
        if (!T.isReusableMode(this.f3159f)) {
            return false;
        }
        InterfaceC1944c interfaceC1944c = this.f3185j;
        kotlin.jvm.internal.j.checkNotNull(interfaceC1944c, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>");
        return ((C0362i) interfaceC1944c).isReusable();
    }

    public final void g(Object obj, int i2, H5.l lVar) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f3183p;
            Object obj2 = atomicReferenceFieldUpdater.get(this);
            if (obj2 instanceof H0) {
                Object h7 = h((H0) obj2, obj, i2, lVar, null);
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj2, h7)) {
                    if (atomicReferenceFieldUpdater.get(this) != obj2) {
                        break;
                    }
                }
                if (!e()) {
                    detachChild$kotlinx_coroutines_core();
                }
                b(i2);
                return;
            }
            if (obj2 instanceof C0293q) {
                C0293q c0293q = (C0293q) obj2;
                if (c0293q.makeResumed()) {
                    if (lVar != null) {
                        callOnCancellation(lVar, c0293q.f3131a);
                        return;
                    }
                    return;
                }
            }
            throw new IllegalStateException(("Already resumed, but proposed with update " + obj).toString());
        }
    }

    @Override // A5.c
    public A5.c getCallerFrame() {
        InterfaceC1944c interfaceC1944c = this.f3185j;
        if (interfaceC1944c instanceof A5.c) {
            return (A5.c) interfaceC1944c;
        }
        return null;
    }

    @Override // y5.InterfaceC1944c
    public InterfaceC1952k getContext() {
        return this.f3186m;
    }

    public Throwable getContinuationCancellationCause(InterfaceC0294q0 interfaceC0294q0) {
        return ((A0) interfaceC0294q0).getCancellationException();
    }

    @Override // R5.S
    public final InterfaceC1944c getDelegate$kotlinx_coroutines_core() {
        return this.f3185j;
    }

    @Override // R5.S
    public Throwable getExceptionalResult$kotlinx_coroutines_core(Object obj) {
        Throwable exceptionalResult$kotlinx_coroutines_core = super.getExceptionalResult$kotlinx_coroutines_core(obj);
        if (exceptionalResult$kotlinx_coroutines_core != null) {
            return exceptionalResult$kotlinx_coroutines_core;
        }
        return null;
    }

    public final Object getResult() {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        int i2;
        InterfaceC0294q0 interfaceC0294q0;
        boolean e3 = e();
        do {
            atomicIntegerFieldUpdater = f3182n;
            i2 = atomicIntegerFieldUpdater.get(this);
            int i7 = i2 >> 29;
            if (i7 != 0) {
                if (i7 != 2) {
                    throw new IllegalStateException("Already suspended");
                }
                if (e3) {
                    releaseClaimedReusableContinuation$kotlinx_coroutines_core();
                }
                Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
                if (state$kotlinx_coroutines_core instanceof A) {
                    throw ((A) state$kotlinx_coroutines_core).f3131a;
                }
                if (!T.isCancellableMode(this.f3159f) || (interfaceC0294q0 = (InterfaceC0294q0) getContext().get(F.f3147e)) == null || interfaceC0294q0.isActive()) {
                    return getSuccessfulResult$kotlinx_coroutines_core(state$kotlinx_coroutines_core);
                }
                CancellationException cancellationException = ((A0) interfaceC0294q0).getCancellationException();
                cancelCompletedResult$kotlinx_coroutines_core(state$kotlinx_coroutines_core, cancellationException);
                throw cancellationException;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i2, androidx.media3.common.C.BUFFER_FLAG_LAST_SAMPLE + (536870911 & i2)));
        if (((V) f3184q.get(this)) == null) {
            c();
        }
        if (e3) {
            releaseClaimedReusableContinuation$kotlinx_coroutines_core();
        }
        return AbstractC2008a.getCOROUTINE_SUSPENDED();
    }

    public final Object getState$kotlinx_coroutines_core() {
        return f3183p.get(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // R5.S
    public <T> T getSuccessfulResult$kotlinx_coroutines_core(Object obj) {
        return obj instanceof C0306z ? (T) ((C0306z) obj).f3205a : obj;
    }

    public void initCancellability() {
        V c7 = c();
        if (c7 != null && isCompleted()) {
            c7.dispose();
            f3184q.set(this, G0.f3148b);
        }
    }

    @Override // R5.S0
    public void invokeOnCancellation(W5.D d7, int i2) {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        int i7;
        do {
            atomicIntegerFieldUpdater = f3182n;
            i7 = atomicIntegerFieldUpdater.get(this);
            if ((i7 & 536870911) != 536870911) {
                throw new IllegalStateException("invokeOnCancellation should be called at most once");
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i7, ((i7 >> 29) << 29) + i2));
        d(d7);
    }

    public boolean isCompleted() {
        return !(getState$kotlinx_coroutines_core() instanceof H0);
    }

    public String nameString() {
        return "CancellableContinuation";
    }

    public final void parentCancelled$kotlinx_coroutines_core(Throwable th) {
        boolean postponeCancellation;
        if (e()) {
            InterfaceC1944c interfaceC1944c = this.f3185j;
            kotlin.jvm.internal.j.checkNotNull(interfaceC1944c, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>");
            postponeCancellation = ((C0362i) interfaceC1944c).postponeCancellation(th);
        } else {
            postponeCancellation = false;
        }
        if (postponeCancellation) {
            return;
        }
        cancel(th);
        if (e()) {
            return;
        }
        detachChild$kotlinx_coroutines_core();
    }

    public final void releaseClaimedReusableContinuation$kotlinx_coroutines_core() {
        Throwable tryReleaseClaimedContinuation;
        InterfaceC1944c interfaceC1944c = this.f3185j;
        C0362i c0362i = interfaceC1944c instanceof C0362i ? (C0362i) interfaceC1944c : null;
        if (c0362i == null || (tryReleaseClaimedContinuation = c0362i.tryReleaseClaimedContinuation(this)) == null) {
            return;
        }
        detachChild$kotlinx_coroutines_core();
        cancel(tryReleaseClaimedContinuation);
    }

    public final boolean resetStateReusable() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f3183p;
        Object obj = atomicReferenceFieldUpdater.get(this);
        if ((obj instanceof C0306z) && ((C0306z) obj).f3208d != null) {
            detachChild$kotlinx_coroutines_core();
            return false;
        }
        f3182n.set(this, 536870911);
        atomicReferenceFieldUpdater.set(this, C0267d.f3172b);
        return true;
    }

    @Override // R5.InterfaceC0285m
    public void resume(Object obj, H5.l lVar) {
        g(obj, this.f3159f, lVar);
    }

    @Override // y5.InterfaceC1944c
    public void resumeWith(Object obj) {
        g(D.toState(obj, this), this.f3159f, null);
    }

    @Override // R5.S
    public Object takeState$kotlinx_coroutines_core() {
        return getState$kotlinx_coroutines_core();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(nameString());
        sb.append('(');
        sb.append(K.toDebugString(this.f3185j));
        sb.append("){");
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        sb.append(state$kotlinx_coroutines_core instanceof H0 ? "Active" : state$kotlinx_coroutines_core instanceof C0293q ? "Cancelled" : "Completed");
        sb.append("}@");
        sb.append(K.getHexAddress(this));
        return sb.toString();
    }

    @Override // R5.InterfaceC0285m
    public Object tryResume(Object obj, Object obj2, H5.l lVar) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f3183p;
            Object obj3 = atomicReferenceFieldUpdater.get(this);
            if (!(obj3 instanceof H0)) {
                if ((obj3 instanceof C0306z) && obj2 != null && ((C0306z) obj3).f3208d == obj2) {
                    return AbstractC0289o.f3189a;
                }
                return null;
            }
            Object h7 = h((H0) obj3, obj, this.f3159f, lVar, obj2);
            while (!atomicReferenceFieldUpdater.compareAndSet(this, obj3, h7)) {
                if (atomicReferenceFieldUpdater.get(this) != obj3) {
                    break;
                }
            }
            if (!e()) {
                detachChild$kotlinx_coroutines_core();
            }
            return AbstractC0289o.f3189a;
        }
    }

    @Override // R5.InterfaceC0285m
    public void invokeOnCancellation(H5.l lVar) {
        d(lVar instanceof AbstractC0279j ? (AbstractC0279j) lVar : new C0286m0(lVar));
    }
}
