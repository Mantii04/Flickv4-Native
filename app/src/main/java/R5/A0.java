package R5;

import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CompletionHandlerException;
import kotlinx.coroutines.JobCancellationException;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.internal.LockFreeLinkedListNode;
import u5.AbstractC1702a;
import y5.InterfaceC1944c;
import y5.InterfaceC1950i;
import y5.InterfaceC1951j;
import y5.InterfaceC1952k;
import z5.AbstractC2008a;

/* loaded from: classes2.dex */
public class A0 implements InterfaceC0294q0, InterfaceC0300u, I0 {

    /* renamed from: b, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f3132b = AtomicReferenceFieldUpdater.newUpdater(A0.class, Object.class, "_state");

    /* renamed from: e, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f3133e = AtomicReferenceFieldUpdater.newUpdater(A0.class, Object.class, "_parentHandle");
    private volatile Object _parentHandle;
    private volatile Object _state;

    public A0(boolean z6) {
        this._state = z6 ? B0.f3142g : B0.f3141f;
    }

    public static final void access$continueCompleting(A0 a02, y0 y0Var, C0298t c0298t, Object obj) {
        a02.getClass();
        C0298t g7 = g(c0298t);
        if (g7 != null) {
            while (AbstractC0292p0.invokeOnCompletion$default(g7.f3194m, false, false, new x0(a02, y0Var, g7, obj), 1, null) == G0.f3148b) {
                g7 = g(g7);
                if (g7 == null) {
                }
            }
            return;
        }
        a02.afterCompletion(a02.d(y0Var, obj));
    }

    public static C0298t g(LockFreeLinkedListNode lockFreeLinkedListNode) {
        while (lockFreeLinkedListNode.isRemoved()) {
            lockFreeLinkedListNode = lockFreeLinkedListNode.getPrevNode();
        }
        while (true) {
            lockFreeLinkedListNode = lockFreeLinkedListNode.getNextNode();
            if (!lockFreeLinkedListNode.isRemoved()) {
                if (lockFreeLinkedListNode instanceof C0298t) {
                    return (C0298t) lockFreeLinkedListNode;
                }
                if (lockFreeLinkedListNode instanceof F0) {
                    return null;
                }
            }
        }
    }

    public static String j(Object obj) {
        if (!(obj instanceof y0)) {
            return obj instanceof InterfaceC0282k0 ? ((InterfaceC0282k0) obj).isActive() ? "Active" : "New" : obj instanceof A ? "Cancelled" : "Completed";
        }
        y0 y0Var = (y0) obj;
        return y0Var.isCancelling() ? "Cancelling" : y0Var.isCompleting() ? "Completing" : "Active";
    }

    public static /* synthetic */ CancellationException toCancellationException$default(A0 a02, Throwable th, String str, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: toCancellationException");
        }
        if ((i2 & 1) != 0) {
            str = null;
        }
        return a02.toCancellationException(th, str);
    }

    public final boolean a(Throwable th) {
        if (isScopedCoroutine()) {
            return true;
        }
        boolean z6 = th instanceof CancellationException;
        InterfaceC0296s parentHandle$kotlinx_coroutines_core = getParentHandle$kotlinx_coroutines_core();
        return (parentHandle$kotlinx_coroutines_core == null || parentHandle$kotlinx_coroutines_core == G0.f3148b) ? z6 : parentHandle$kotlinx_coroutines_core.childCancelled(th) || z6;
    }

    public final InterfaceC0296s attachChild(InterfaceC0300u interfaceC0300u) {
        V invokeOnCompletion$default = AbstractC0292p0.invokeOnCompletion$default(this, true, false, new C0298t(interfaceC0300u), 2, null);
        kotlin.jvm.internal.j.checkNotNull(invokeOnCompletion$default, "null cannot be cast to non-null type kotlinx.coroutines.ChildHandle");
        return (InterfaceC0296s) invokeOnCompletion$default;
    }

    public final Object awaitInternal(InterfaceC1944c interfaceC1944c) {
        Object state$kotlinx_coroutines_core;
        do {
            state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
            if (!(state$kotlinx_coroutines_core instanceof InterfaceC0282k0)) {
                if (state$kotlinx_coroutines_core instanceof A) {
                    throw ((A) state$kotlinx_coroutines_core).f3131a;
                }
                return B0.unboxState(state$kotlinx_coroutines_core);
            }
        } while (i(state$kotlinx_coroutines_core) < 0);
        w0 w0Var = new w0(IntrinsicsKt__IntrinsicsJvmKt.intercepted(interfaceC1944c), this);
        w0Var.initCancellability();
        AbstractC0291p.disposeOnCancellation(w0Var, invokeOnCompletion(new J0(w0Var)));
        Object result = w0Var.getResult();
        if (result == AbstractC2008a.getCOROUTINE_SUSPENDED()) {
            A5.f.probeCoroutineSuspended(interfaceC1944c);
        }
        return result;
    }

    public final void b(InterfaceC0282k0 interfaceC0282k0, Object obj) {
        InterfaceC0296s parentHandle$kotlinx_coroutines_core = getParentHandle$kotlinx_coroutines_core();
        if (parentHandle$kotlinx_coroutines_core != null) {
            parentHandle$kotlinx_coroutines_core.dispose();
            setParentHandle$kotlinx_coroutines_core(G0.f3148b);
        }
        CompletionHandlerException completionHandlerException = null;
        A a7 = obj instanceof A ? (A) obj : null;
        Throwable th = a7 != null ? a7.f3131a : null;
        if (interfaceC0282k0 instanceof v0) {
            try {
                ((v0) interfaceC0282k0).invoke(th);
                return;
            } catch (Throwable th2) {
                handleOnCompletionException$kotlinx_coroutines_core(new CompletionHandlerException("Exception in completion handler " + interfaceC0282k0 + " for " + this, th2));
                return;
            }
        }
        F0 list = interfaceC0282k0.getList();
        if (list != null) {
            Object next = list.getNext();
            kotlin.jvm.internal.j.checkNotNull(next, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
            for (LockFreeLinkedListNode lockFreeLinkedListNode = (LockFreeLinkedListNode) next; !kotlin.jvm.internal.j.areEqual(lockFreeLinkedListNode, list); lockFreeLinkedListNode = lockFreeLinkedListNode.getNextNode()) {
                if (lockFreeLinkedListNode instanceof v0) {
                    v0 v0Var = (v0) lockFreeLinkedListNode;
                    try {
                        v0Var.invoke(th);
                    } catch (Throwable th3) {
                        if (completionHandlerException != null) {
                            AbstractC1702a.addSuppressed(completionHandlerException, th3);
                        } else {
                            completionHandlerException = new CompletionHandlerException("Exception in completion handler " + v0Var + " for " + this, th3);
                        }
                    }
                }
            }
            if (completionHandlerException != null) {
                handleOnCompletionException$kotlinx_coroutines_core(completionHandlerException);
            }
        }
    }

    public final Throwable c(Object obj) {
        if (obj == null ? true : obj instanceof Throwable) {
            Throwable th = (Throwable) obj;
            return th == null ? new JobCancellationException(cancellationExceptionMessage(), null, this) : th;
        }
        kotlin.jvm.internal.j.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.ParentJob");
        return ((A0) ((I0) obj)).getChildJobCancellationCause();
    }

    @Override // R5.InterfaceC0294q0
    public void cancel(CancellationException cancellationException) {
        if (cancellationException == null) {
            cancellationException = new JobCancellationException(cancellationExceptionMessage(), null, this);
        }
        cancelInternal(cancellationException);
    }

    public final boolean cancelCoroutine(Throwable th) {
        return cancelImpl$kotlinx_coroutines_core(th);
    }

    public final boolean cancelImpl$kotlinx_coroutines_core(Object obj) {
        Object obj2;
        W5.G g7;
        W5.G g8;
        W5.G g9;
        W5.G g10;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        W5.G g11;
        W5.G g12;
        W5.G g13;
        obj2 = B0.f3136a;
        if (getOnCancelComplete$kotlinx_coroutines_core()) {
            do {
                Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
                if (!(state$kotlinx_coroutines_core instanceof InterfaceC0282k0) || ((state$kotlinx_coroutines_core instanceof y0) && ((y0) state$kotlinx_coroutines_core).isCompleting())) {
                    obj2 = B0.f3136a;
                    break;
                }
                obj2 = k(state$kotlinx_coroutines_core, new A(c(obj), false, 2, null));
                g13 = B0.f3138c;
            } while (obj2 == g13);
            if (obj2 == B0.f3137b) {
                return true;
            }
        }
        g7 = B0.f3136a;
        if (obj2 == g7) {
            Throwable th = null;
            loop1: while (true) {
                Object state$kotlinx_coroutines_core2 = getState$kotlinx_coroutines_core();
                if (!(state$kotlinx_coroutines_core2 instanceof y0)) {
                    if (!(state$kotlinx_coroutines_core2 instanceof InterfaceC0282k0)) {
                        g10 = B0.f3139d;
                        break;
                    }
                    if (th == null) {
                        th = c(obj);
                    }
                    InterfaceC0282k0 interfaceC0282k0 = (InterfaceC0282k0) state$kotlinx_coroutines_core2;
                    if (interfaceC0282k0.isActive()) {
                        F0 f3 = f(interfaceC0282k0);
                        if (f3 == null) {
                            continue;
                        } else {
                            y0 y0Var = new y0(f3, false, th);
                            do {
                                atomicReferenceFieldUpdater = f3132b;
                                if (atomicReferenceFieldUpdater.compareAndSet(this, interfaceC0282k0, y0Var)) {
                                    h(f3, th);
                                    g10 = B0.f3136a;
                                    break loop1;
                                }
                            } while (atomicReferenceFieldUpdater.get(this) == interfaceC0282k0);
                        }
                    } else {
                        Object k7 = k(state$kotlinx_coroutines_core2, new A(th, false, 2, null));
                        g11 = B0.f3136a;
                        if (k7 == g11) {
                            throw new IllegalStateException(("Cannot happen in " + state$kotlinx_coroutines_core2).toString());
                        }
                        g12 = B0.f3138c;
                        if (k7 != g12) {
                            obj2 = k7;
                            break;
                        }
                    }
                } else {
                    synchronized (state$kotlinx_coroutines_core2) {
                        if (((y0) state$kotlinx_coroutines_core2).isSealed()) {
                            g10 = B0.f3139d;
                        } else {
                            boolean isCancelling = ((y0) state$kotlinx_coroutines_core2).isCancelling();
                            if (obj != null || !isCancelling) {
                                if (th == null) {
                                    th = c(obj);
                                }
                                ((y0) state$kotlinx_coroutines_core2).addExceptionLocked(th);
                            }
                            Throwable rootCause = isCancelling ? null : ((y0) state$kotlinx_coroutines_core2).getRootCause();
                            if (rootCause != null) {
                                h(((y0) state$kotlinx_coroutines_core2).getList(), rootCause);
                            }
                            g10 = B0.f3136a;
                        }
                    }
                }
            }
            obj2 = g10;
        }
        g8 = B0.f3136a;
        if (obj2 == g8 || obj2 == B0.f3137b) {
            return true;
        }
        g9 = B0.f3139d;
        if (obj2 == g9) {
            return false;
        }
        afterCompletion(obj2);
        return true;
    }

    public void cancelInternal(Throwable th) {
        cancelImpl$kotlinx_coroutines_core(th);
    }

    public String cancellationExceptionMessage() {
        return "Job was cancelled";
    }

    public boolean childCancelled(Throwable th) {
        if (th instanceof CancellationException) {
            return true;
        }
        return cancelImpl$kotlinx_coroutines_core(th) && getHandlesException$kotlinx_coroutines_core();
    }

    public final Object d(y0 y0Var, Object obj) {
        boolean isCancelling;
        Throwable e3;
        A a7 = obj instanceof A ? (A) obj : null;
        Throwable th = a7 != null ? a7.f3131a : null;
        synchronized (y0Var) {
            isCancelling = y0Var.isCancelling();
            List<Throwable> sealLocked = y0Var.sealLocked(th);
            e3 = e(y0Var, sealLocked);
            if (e3 != null && sealLocked.size() > 1) {
                Set newSetFromMap = Collections.newSetFromMap(new IdentityHashMap(sealLocked.size()));
                for (Throwable th2 : sealLocked) {
                    if (th2 != e3 && th2 != e3 && !(th2 instanceof CancellationException) && newSetFromMap.add(th2)) {
                        AbstractC1702a.addSuppressed(e3, th2);
                    }
                }
            }
        }
        if (e3 != null && e3 != th) {
            obj = new A(e3, false, 2, null);
        }
        if (e3 != null && (a(e3) || handleJobException(e3))) {
            kotlin.jvm.internal.j.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally");
            ((A) obj).makeHandled();
        }
        if (!isCancelling) {
            onCancelling(e3);
        }
        onCompletionInternal(obj);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f3132b;
        Object boxIncomplete = B0.boxIncomplete(obj);
        while (!atomicReferenceFieldUpdater.compareAndSet(this, y0Var, boxIncomplete) && atomicReferenceFieldUpdater.get(this) == y0Var) {
        }
        b(y0Var, obj);
        return obj;
    }

    public final Throwable e(y0 y0Var, List list) {
        Object obj;
        Object obj2 = null;
        if (list.isEmpty()) {
            if (y0Var.isCancelling()) {
                return new JobCancellationException(cancellationExceptionMessage(), null, this);
            }
            return null;
        }
        List list2 = list;
        Iterator it = list2.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (!(((Throwable) obj) instanceof CancellationException)) {
                break;
            }
        }
        Throwable th = (Throwable) obj;
        if (th != null) {
            return th;
        }
        Throwable th2 = (Throwable) list.get(0);
        if (th2 instanceof TimeoutCancellationException) {
            Iterator it2 = list2.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                Object next = it2.next();
                Throwable th3 = (Throwable) next;
                if (th3 != th2 && (th3 instanceof TimeoutCancellationException)) {
                    obj2 = next;
                    break;
                }
            }
            Throwable th4 = (Throwable) obj2;
            if (th4 != null) {
                return th4;
            }
        }
        return th2;
    }

    public final F0 f(InterfaceC0282k0 interfaceC0282k0) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        F0 list = interfaceC0282k0.getList();
        if (list != null) {
            return list;
        }
        if (interfaceC0282k0 instanceof X) {
            return new F0();
        }
        if (!(interfaceC0282k0 instanceof v0)) {
            throw new IllegalStateException(("State should have list: " + interfaceC0282k0).toString());
        }
        v0 v0Var = (v0) interfaceC0282k0;
        v0Var.addOneIfEmpty(new F0());
        LockFreeLinkedListNode nextNode = v0Var.getNextNode();
        do {
            atomicReferenceFieldUpdater = f3132b;
            if (atomicReferenceFieldUpdater.compareAndSet(this, v0Var, nextNode)) {
                return null;
            }
        } while (atomicReferenceFieldUpdater.get(this) == v0Var);
        return null;
    }

    @Override // y5.InterfaceC1952k
    public <R> R fold(R r6, H5.p pVar) {
        return (R) AbstractC0292p0.fold(this, r6, pVar);
    }

    @Override // y5.InterfaceC1950i, y5.InterfaceC1952k
    public <E extends InterfaceC1950i> E get(InterfaceC1951j interfaceC1951j) {
        return (E) AbstractC0292p0.get(this, interfaceC1951j);
    }

    public final CancellationException getCancellationException() {
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        if (!(state$kotlinx_coroutines_core instanceof y0)) {
            if (state$kotlinx_coroutines_core instanceof InterfaceC0282k0) {
                throw new IllegalStateException(("Job is still new or active: " + this).toString());
            }
            if (state$kotlinx_coroutines_core instanceof A) {
                return toCancellationException$default(this, ((A) state$kotlinx_coroutines_core).f3131a, null, 1, null);
            }
            return new JobCancellationException(K.getClassSimpleName(this) + " has completed normally", null, this);
        }
        Throwable rootCause = ((y0) state$kotlinx_coroutines_core).getRootCause();
        if (rootCause != null) {
            CancellationException cancellationException = toCancellationException(rootCause, K.getClassSimpleName(this) + " is cancelling");
            if (cancellationException != null) {
                return cancellationException;
            }
        }
        throw new IllegalStateException(("Job is still new or active: " + this).toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v11, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r1v7, types: [java.lang.Throwable] */
    public CancellationException getChildJobCancellationCause() {
        CancellationException cancellationException;
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        if (state$kotlinx_coroutines_core instanceof y0) {
            cancellationException = ((y0) state$kotlinx_coroutines_core).getRootCause();
        } else if (state$kotlinx_coroutines_core instanceof A) {
            cancellationException = ((A) state$kotlinx_coroutines_core).f3131a;
        } else {
            if (state$kotlinx_coroutines_core instanceof InterfaceC0282k0) {
                throw new IllegalStateException(("Cannot be cancelling child in this state: " + state$kotlinx_coroutines_core).toString());
            }
            cancellationException = null;
        }
        CancellationException cancellationException2 = cancellationException instanceof CancellationException ? cancellationException : null;
        return cancellationException2 == null ? new JobCancellationException("Parent job is ".concat(j(state$kotlinx_coroutines_core)), cancellationException, this) : cancellationException2;
    }

    public final Object getCompletedInternal$kotlinx_coroutines_core() {
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        if (state$kotlinx_coroutines_core instanceof InterfaceC0282k0) {
            throw new IllegalStateException("This job has not completed yet");
        }
        if (state$kotlinx_coroutines_core instanceof A) {
            throw ((A) state$kotlinx_coroutines_core).f3131a;
        }
        return B0.unboxState(state$kotlinx_coroutines_core);
    }

    public boolean getHandlesException$kotlinx_coroutines_core() {
        return true;
    }

    @Override // y5.InterfaceC1950i
    public final InterfaceC1951j getKey() {
        return F.f3147e;
    }

    public boolean getOnCancelComplete$kotlinx_coroutines_core() {
        return false;
    }

    public InterfaceC0294q0 getParent() {
        InterfaceC0296s parentHandle$kotlinx_coroutines_core = getParentHandle$kotlinx_coroutines_core();
        if (parentHandle$kotlinx_coroutines_core != null) {
            return parentHandle$kotlinx_coroutines_core.getParent();
        }
        return null;
    }

    public final InterfaceC0296s getParentHandle$kotlinx_coroutines_core() {
        return (InterfaceC0296s) f3133e.get(this);
    }

    public final Object getState$kotlinx_coroutines_core() {
        while (true) {
            Object obj = f3132b.get(this);
            if (!(obj instanceof W5.z)) {
                return obj;
            }
            ((W5.z) obj).perform(this);
        }
    }

    public final void h(F0 f02, Throwable th) {
        onCancelling(th);
        Object next = f02.getNext();
        kotlin.jvm.internal.j.checkNotNull(next, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
        CompletionHandlerException completionHandlerException = null;
        for (LockFreeLinkedListNode lockFreeLinkedListNode = (LockFreeLinkedListNode) next; !kotlin.jvm.internal.j.areEqual(lockFreeLinkedListNode, f02); lockFreeLinkedListNode = lockFreeLinkedListNode.getNextNode()) {
            if (lockFreeLinkedListNode instanceof AbstractC0295r0) {
                v0 v0Var = (v0) lockFreeLinkedListNode;
                try {
                    v0Var.invoke(th);
                } catch (Throwable th2) {
                    if (completionHandlerException != null) {
                        AbstractC1702a.addSuppressed(completionHandlerException, th2);
                    } else {
                        completionHandlerException = new CompletionHandlerException("Exception in completion handler " + v0Var + " for " + this, th2);
                    }
                }
            }
        }
        if (completionHandlerException != null) {
            handleOnCompletionException$kotlinx_coroutines_core(completionHandlerException);
        }
        a(th);
    }

    public boolean handleJobException(Throwable th) {
        return false;
    }

    public final int i(Object obj) {
        X x6;
        boolean z6 = obj instanceof X;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f3132b;
        if (z6) {
            if (((X) obj).isActive()) {
                return 0;
            }
            x6 = B0.f3142g;
            while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, x6)) {
                if (atomicReferenceFieldUpdater.get(this) != obj) {
                    return -1;
                }
            }
            onStart();
            return 1;
        }
        if (!(obj instanceof C0280j0)) {
            return 0;
        }
        F0 list = ((C0280j0) obj).getList();
        while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, list)) {
            if (atomicReferenceFieldUpdater.get(this) != obj) {
                return -1;
            }
        }
        onStart();
        return 1;
    }

    public final void initParentJob(InterfaceC0294q0 interfaceC0294q0) {
        G0 g02 = G0.f3148b;
        if (interfaceC0294q0 == null) {
            setParentHandle$kotlinx_coroutines_core(g02);
            return;
        }
        A0 a02 = (A0) interfaceC0294q0;
        a02.start();
        InterfaceC0296s attachChild = a02.attachChild(this);
        setParentHandle$kotlinx_coroutines_core(attachChild);
        if (isCompleted()) {
            attachChild.dispose();
            setParentHandle$kotlinx_coroutines_core(g02);
        }
    }

    public final V invokeOnCompletion(H5.l lVar) {
        return invokeOnCompletion(false, true, lVar);
    }

    @Override // R5.InterfaceC0294q0
    public boolean isActive() {
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        return (state$kotlinx_coroutines_core instanceof InterfaceC0282k0) && ((InterfaceC0282k0) state$kotlinx_coroutines_core).isActive();
    }

    public final boolean isCancelled() {
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        if (state$kotlinx_coroutines_core instanceof A) {
            return true;
        }
        return (state$kotlinx_coroutines_core instanceof y0) && ((y0) state$kotlinx_coroutines_core).isCancelling();
    }

    public final boolean isCompleted() {
        return !(getState$kotlinx_coroutines_core() instanceof InterfaceC0282k0);
    }

    public boolean isScopedCoroutine() {
        return false;
    }

    public final Object k(Object obj, Object obj2) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        W5.G g7;
        W5.G g8;
        W5.G g9;
        W5.G g10;
        W5.G g11;
        if (!(obj instanceof InterfaceC0282k0)) {
            g11 = B0.f3136a;
            return g11;
        }
        C0298t c0298t = null;
        if (((obj instanceof X) || (obj instanceof v0)) && !(obj instanceof C0298t) && !(obj2 instanceof A)) {
            InterfaceC0282k0 interfaceC0282k0 = (InterfaceC0282k0) obj;
            Object boxIncomplete = B0.boxIncomplete(obj2);
            do {
                atomicReferenceFieldUpdater = f3132b;
                if (atomicReferenceFieldUpdater.compareAndSet(this, interfaceC0282k0, boxIncomplete)) {
                    onCancelling(null);
                    onCompletionInternal(obj2);
                    b(interfaceC0282k0, obj2);
                    return obj2;
                }
            } while (atomicReferenceFieldUpdater.get(this) == interfaceC0282k0);
            g7 = B0.f3138c;
            return g7;
        }
        InterfaceC0282k0 interfaceC0282k02 = (InterfaceC0282k0) obj;
        F0 f3 = f(interfaceC0282k02);
        if (f3 == null) {
            g10 = B0.f3138c;
            return g10;
        }
        y0 y0Var = interfaceC0282k02 instanceof y0 ? (y0) interfaceC0282k02 : null;
        if (y0Var == null) {
            y0Var = new y0(f3, false, null);
        }
        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        synchronized (y0Var) {
            if (y0Var.isCompleting()) {
                g9 = B0.f3136a;
                return g9;
            }
            y0Var.setCompleting(true);
            if (y0Var != interfaceC0282k02) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f3132b;
                while (!atomicReferenceFieldUpdater2.compareAndSet(this, interfaceC0282k02, y0Var)) {
                    if (atomicReferenceFieldUpdater2.get(this) != interfaceC0282k02) {
                        g8 = B0.f3138c;
                        return g8;
                    }
                }
            }
            boolean isCancelling = y0Var.isCancelling();
            A a7 = obj2 instanceof A ? (A) obj2 : null;
            if (a7 != null) {
                y0Var.addExceptionLocked(a7.f3131a);
            }
            Throwable rootCause = y0Var.getRootCause();
            if (isCancelling) {
                rootCause = null;
            }
            ref$ObjectRef.f17447b = rootCause;
            if (rootCause != null) {
                h(f3, rootCause);
            }
            C0298t c0298t2 = interfaceC0282k02 instanceof C0298t ? (C0298t) interfaceC0282k02 : null;
            if (c0298t2 == null) {
                F0 list = interfaceC0282k02.getList();
                if (list != null) {
                    c0298t = g(list);
                }
            } else {
                c0298t = c0298t2;
            }
            if (c0298t != null) {
                while (AbstractC0292p0.invokeOnCompletion$default(c0298t.f3194m, false, false, new x0(this, y0Var, c0298t, obj2), 1, null) == G0.f3148b) {
                    c0298t = g(c0298t);
                    if (c0298t == null) {
                    }
                }
                return B0.f3137b;
            }
            return d(y0Var, obj2);
        }
    }

    public final boolean makeCompleting$kotlinx_coroutines_core(Object obj) {
        Object k7;
        W5.G g7;
        W5.G g8;
        do {
            k7 = k(getState$kotlinx_coroutines_core(), obj);
            g7 = B0.f3136a;
            if (k7 == g7) {
                return false;
            }
            if (k7 == B0.f3137b) {
                return true;
            }
            g8 = B0.f3138c;
        } while (k7 == g8);
        afterCompletion(k7);
        return true;
    }

    public final Object makeCompletingOnce$kotlinx_coroutines_core(Object obj) {
        Object k7;
        W5.G g7;
        W5.G g8;
        do {
            k7 = k(getState$kotlinx_coroutines_core(), obj);
            g7 = B0.f3136a;
            if (k7 == g7) {
                String str = "Job " + this + " is already complete or completing, but is being completed with " + obj;
                A a7 = obj instanceof A ? (A) obj : null;
                throw new IllegalStateException(str, a7 != null ? a7.f3131a : null);
            }
            g8 = B0.f3138c;
        } while (k7 == g8);
        return k7;
    }

    @Override // y5.InterfaceC1952k
    public InterfaceC1952k minusKey(InterfaceC1951j interfaceC1951j) {
        return AbstractC0292p0.minusKey(this, interfaceC1951j);
    }

    public String nameString$kotlinx_coroutines_core() {
        return K.getClassSimpleName(this);
    }

    public final void parentCancelled(I0 i02) {
        cancelImpl$kotlinx_coroutines_core(i02);
    }

    @Override // y5.InterfaceC1952k
    public InterfaceC1952k plus(InterfaceC1952k interfaceC1952k) {
        return AbstractC0292p0.plus(this, interfaceC1952k);
    }

    public final void removeNode$kotlinx_coroutines_core(v0 v0Var) {
        X x6;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        while (true) {
            Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
            if (!(state$kotlinx_coroutines_core instanceof v0)) {
                if (!(state$kotlinx_coroutines_core instanceof InterfaceC0282k0) || ((InterfaceC0282k0) state$kotlinx_coroutines_core).getList() == null) {
                    return;
                }
                v0Var.remove();
                return;
            }
            if (state$kotlinx_coroutines_core != v0Var) {
                return;
            }
            x6 = B0.f3142g;
            do {
                atomicReferenceFieldUpdater = f3132b;
                if (atomicReferenceFieldUpdater.compareAndSet(this, state$kotlinx_coroutines_core, x6)) {
                    return;
                }
            } while (atomicReferenceFieldUpdater.get(this) == state$kotlinx_coroutines_core);
        }
    }

    public final void setParentHandle$kotlinx_coroutines_core(InterfaceC0296s interfaceC0296s) {
        f3133e.set(this, interfaceC0296s);
    }

    public final boolean start() {
        int i2;
        do {
            i2 = i(getState$kotlinx_coroutines_core());
            if (i2 == 0) {
                return false;
            }
        } while (i2 != 1);
        return true;
    }

    public final CancellationException toCancellationException(Throwable th, String str) {
        CancellationException cancellationException = th instanceof CancellationException ? (CancellationException) th : null;
        if (cancellationException == null) {
            if (str == null) {
                str = cancellationExceptionMessage();
            }
            cancellationException = new JobCancellationException(str, th, this);
        }
        return cancellationException;
    }

    public final String toDebugString() {
        return nameString$kotlinx_coroutines_core() + '{' + j(getState$kotlinx_coroutines_core()) + '}';
    }

    public String toString() {
        return toDebugString() + '@' + K.getHexAddress(this);
    }

    public final V invokeOnCompletion(boolean z6, boolean z7, H5.l lVar) {
        v0 v0Var;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2;
        Throwable th;
        int tryCondAddNext;
        boolean z8;
        if (z6) {
            v0Var = lVar instanceof AbstractC0295r0 ? (AbstractC0295r0) lVar : null;
            if (v0Var == null) {
                v0Var = new C0288n0(lVar);
            }
        } else {
            v0Var = lVar instanceof v0 ? (v0) lVar : null;
            if (v0Var == null) {
                v0Var = new C0290o0(lVar);
            }
        }
        v0Var.setJob(this);
        loop0: while (true) {
            Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
            if (state$kotlinx_coroutines_core instanceof X) {
                X x6 = (X) state$kotlinx_coroutines_core;
                if (x6.isActive()) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3 = f3132b;
                    while (!atomicReferenceFieldUpdater3.compareAndSet(this, state$kotlinx_coroutines_core, v0Var)) {
                        if (atomicReferenceFieldUpdater3.get(this) != state$kotlinx_coroutines_core) {
                            break;
                        }
                    }
                    break loop0;
                }
                F0 f02 = new F0();
                Object c0280j0 = x6.isActive() ? f02 : new C0280j0(f02);
                do {
                    atomicReferenceFieldUpdater = f3132b;
                    if (atomicReferenceFieldUpdater.compareAndSet(this, x6, c0280j0)) {
                        break;
                    }
                } while (atomicReferenceFieldUpdater.get(this) == x6);
            } else {
                if (!(state$kotlinx_coroutines_core instanceof InterfaceC0282k0)) {
                    if (z7) {
                        A a7 = state$kotlinx_coroutines_core instanceof A ? (A) state$kotlinx_coroutines_core : null;
                        lVar.invoke(a7 != null ? a7.f3131a : null);
                    }
                    return G0.f3148b;
                }
                F0 list = ((InterfaceC0282k0) state$kotlinx_coroutines_core).getList();
                if (list != null) {
                    V v6 = G0.f3148b;
                    if (z6 && (state$kotlinx_coroutines_core instanceof y0)) {
                        synchronized (state$kotlinx_coroutines_core) {
                            try {
                                th = ((y0) state$kotlinx_coroutines_core).getRootCause();
                                if (th != null) {
                                    if ((lVar instanceof C0298t) && !((y0) state$kotlinx_coroutines_core).isCompleting()) {
                                    }
                                }
                                z0 z0Var = new z0(v0Var, this, (InterfaceC0282k0) state$kotlinx_coroutines_core);
                                while (true) {
                                    int tryCondAddNext2 = list.getPrevNode().tryCondAddNext(v0Var, list, z0Var);
                                    if (tryCondAddNext2 == 1) {
                                        z8 = true;
                                        break;
                                    }
                                    if (tryCondAddNext2 == 2) {
                                        z8 = false;
                                        break;
                                    }
                                }
                                if (z8) {
                                    if (th == null) {
                                        return v0Var;
                                    }
                                    v6 = v0Var;
                                }
                            } catch (Throwable th2) {
                                throw th2;
                            }
                        }
                    } else {
                        th = null;
                    }
                    if (th == null) {
                        z0 z0Var2 = new z0(v0Var, this, (InterfaceC0282k0) state$kotlinx_coroutines_core);
                        do {
                            tryCondAddNext = list.getPrevNode().tryCondAddNext(v0Var, list, z0Var2);
                            if (tryCondAddNext == 1) {
                                break loop0;
                            }
                        } while (tryCondAddNext != 2);
                    } else {
                        if (z7) {
                            lVar.invoke(th);
                        }
                        return v6;
                    }
                } else {
                    kotlin.jvm.internal.j.checkNotNull(state$kotlinx_coroutines_core, "null cannot be cast to non-null type kotlinx.coroutines.JobNode");
                    v0 v0Var2 = (v0) state$kotlinx_coroutines_core;
                    v0Var2.addOneIfEmpty(new F0());
                    LockFreeLinkedListNode nextNode = v0Var2.getNextNode();
                    do {
                        atomicReferenceFieldUpdater2 = f3132b;
                        if (atomicReferenceFieldUpdater2.compareAndSet(this, v0Var2, nextNode)) {
                            break;
                        }
                    } while (atomicReferenceFieldUpdater2.get(this) == v0Var2);
                }
            }
        }
        return v0Var;
    }

    public void onStart() {
    }

    public void afterCompletion(Object obj) {
    }

    public void handleOnCompletionException$kotlinx_coroutines_core(Throwable th) {
        throw th;
    }

    public void onCancelling(Throwable th) {
    }

    public void onCompletionInternal(Object obj) {
    }
}
