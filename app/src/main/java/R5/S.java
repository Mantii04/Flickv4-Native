package R5;

import W5.C0362i;
import java.util.concurrent.CancellationException;
import kotlin.Result;
import kotlinx.coroutines.CoroutinesInternalError;
import u5.AbstractC1702a;
import u5.C1711j;
import y5.InterfaceC1944c;
import y5.InterfaceC1952k;

/* loaded from: classes2.dex */
public abstract class S extends Y5.j {

    /* renamed from: f, reason: collision with root package name */
    public int f3159f;

    public S(int i2) {
        this.f3159f = i2;
    }

    public abstract void cancelCompletedResult$kotlinx_coroutines_core(Object obj, Throwable th);

    public abstract InterfaceC1944c getDelegate$kotlinx_coroutines_core();

    public Throwable getExceptionalResult$kotlinx_coroutines_core(Object obj) {
        A a7 = obj instanceof A ? (A) obj : null;
        if (a7 != null) {
            return a7.f3131a;
        }
        return null;
    }

    public final void handleFatalException(Throwable th, Throwable th2) {
        if (th == null && th2 == null) {
            return;
        }
        if (th != null && th2 != null) {
            AbstractC1702a.addSuppressed(th, th2);
        }
        if (th == null) {
            th = th2;
        }
        kotlin.jvm.internal.j.checkNotNull(th);
        G.handleCoroutineException(getDelegate$kotlinx_coroutines_core().getContext(), new CoroutinesInternalError("Fatal exception in coroutines machinery for " + this + ". Please read KDoc to 'handleFatalException' method and report this incident to maintainers", th));
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object m103constructorimpl;
        Object m103constructorimpl2;
        C1711j c1711j = C1711j.f20329a;
        Y5.k kVar = this.f4424e;
        try {
            InterfaceC1944c delegate$kotlinx_coroutines_core = getDelegate$kotlinx_coroutines_core();
            kotlin.jvm.internal.j.checkNotNull(delegate$kotlinx_coroutines_core, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTask>");
            C0362i c0362i = (C0362i) delegate$kotlinx_coroutines_core;
            InterfaceC1944c interfaceC1944c = c0362i.f4194m;
            Object obj = c0362i.f4196p;
            InterfaceC1952k context = interfaceC1944c.getContext();
            Object updateThreadContext = kotlinx.coroutines.internal.a.updateThreadContext(context, obj);
            Q0 updateUndispatchedCompletion = updateThreadContext != kotlinx.coroutines.internal.a.f17614a ? kotlinx.coroutines.a.updateUndispatchedCompletion(interfaceC1944c, context, updateThreadContext) : null;
            try {
                InterfaceC1952k context2 = interfaceC1944c.getContext();
                Object takeState$kotlinx_coroutines_core = takeState$kotlinx_coroutines_core();
                Throwable exceptionalResult$kotlinx_coroutines_core = getExceptionalResult$kotlinx_coroutines_core(takeState$kotlinx_coroutines_core);
                InterfaceC0294q0 interfaceC0294q0 = (exceptionalResult$kotlinx_coroutines_core == null && T.isCancellableMode(this.f3159f)) ? (InterfaceC0294q0) context2.get(F.f3147e) : null;
                if (interfaceC0294q0 != null && !interfaceC0294q0.isActive()) {
                    CancellationException cancellationException = ((A0) interfaceC0294q0).getCancellationException();
                    cancelCompletedResult$kotlinx_coroutines_core(takeState$kotlinx_coroutines_core, cancellationException);
                    int i2 = Result.f17390b;
                    interfaceC1944c.resumeWith(Result.m103constructorimpl(kotlin.b.createFailure(cancellationException)));
                } else if (exceptionalResult$kotlinx_coroutines_core != null) {
                    int i7 = Result.f17390b;
                    interfaceC1944c.resumeWith(Result.m103constructorimpl(kotlin.b.createFailure(exceptionalResult$kotlinx_coroutines_core)));
                } else {
                    int i8 = Result.f17390b;
                    interfaceC1944c.resumeWith(Result.m103constructorimpl(getSuccessfulResult$kotlinx_coroutines_core(takeState$kotlinx_coroutines_core)));
                }
                if (updateUndispatchedCompletion == null || updateUndispatchedCompletion.clearThreadContext()) {
                    kotlinx.coroutines.internal.a.restoreThreadContext(context, updateThreadContext);
                }
                try {
                    ((Y5.l) kVar).afterTask();
                    m103constructorimpl2 = Result.m103constructorimpl(c1711j);
                } catch (Throwable th) {
                    int i9 = Result.f17390b;
                    m103constructorimpl2 = Result.m103constructorimpl(kotlin.b.createFailure(th));
                }
                handleFatalException(null, Result.m104exceptionOrNullimpl(m103constructorimpl2));
            } catch (Throwable th2) {
                if (updateUndispatchedCompletion == null || updateUndispatchedCompletion.clearThreadContext()) {
                    kotlinx.coroutines.internal.a.restoreThreadContext(context, updateThreadContext);
                }
                throw th2;
            }
        } catch (Throwable th3) {
            try {
                int i10 = Result.f17390b;
                ((Y5.l) kVar).afterTask();
                m103constructorimpl = Result.m103constructorimpl(c1711j);
            } catch (Throwable th4) {
                int i11 = Result.f17390b;
                m103constructorimpl = Result.m103constructorimpl(kotlin.b.createFailure(th4));
            }
            handleFatalException(th3, Result.m104exceptionOrNullimpl(m103constructorimpl));
        }
    }

    public abstract Object takeState$kotlinx_coroutines_core();

    /* JADX WARN: Multi-variable type inference failed */
    public <T> T getSuccessfulResult$kotlinx_coroutines_core(Object obj) {
        return obj;
    }
}
