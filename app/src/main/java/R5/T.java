package R5;

import W5.C0362i;
import kotlin.Result;
import y5.InterfaceC1944c;
import y5.InterfaceC1952k;

/* loaded from: classes2.dex */
public abstract class T {
    public static final <T> void dispatch(S s6, int i2) {
        InterfaceC1944c delegate$kotlinx_coroutines_core = s6.getDelegate$kotlinx_coroutines_core();
        boolean z6 = i2 == 4;
        if (z6 || !(delegate$kotlinx_coroutines_core instanceof C0362i) || isCancellableMode(i2) != isCancellableMode(s6.f3159f)) {
            resume(s6, delegate$kotlinx_coroutines_core, z6);
            return;
        }
        E e3 = ((C0362i) delegate$kotlinx_coroutines_core).f4193j;
        InterfaceC1952k context = delegate$kotlinx_coroutines_core.getContext();
        if (e3.isDispatchNeeded(context)) {
            e3.dispatch(context, s6);
            return;
        }
        Y eventLoop$kotlinx_coroutines_core = O0.f3153a.getEventLoop$kotlinx_coroutines_core();
        if (eventLoop$kotlinx_coroutines_core.isUnconfinedLoopActive()) {
            eventLoop$kotlinx_coroutines_core.dispatchUnconfined(s6);
            return;
        }
        eventLoop$kotlinx_coroutines_core.incrementUseCount(true);
        try {
            resume(s6, s6.getDelegate$kotlinx_coroutines_core(), true);
            do {
            } while (eventLoop$kotlinx_coroutines_core.processUnconfinedEvent());
        } finally {
            try {
            } finally {
            }
        }
    }

    public static final boolean isCancellableMode(int i2) {
        return i2 == 1 || i2 == 2;
    }

    public static final boolean isReusableMode(int i2) {
        return i2 == 2;
    }

    public static final <T> void resume(S s6, InterfaceC1944c interfaceC1944c, boolean z6) {
        Object successfulResult$kotlinx_coroutines_core;
        Object takeState$kotlinx_coroutines_core = s6.takeState$kotlinx_coroutines_core();
        Throwable exceptionalResult$kotlinx_coroutines_core = s6.getExceptionalResult$kotlinx_coroutines_core(takeState$kotlinx_coroutines_core);
        if (exceptionalResult$kotlinx_coroutines_core != null) {
            int i2 = Result.f17390b;
            successfulResult$kotlinx_coroutines_core = kotlin.b.createFailure(exceptionalResult$kotlinx_coroutines_core);
        } else {
            int i7 = Result.f17390b;
            successfulResult$kotlinx_coroutines_core = s6.getSuccessfulResult$kotlinx_coroutines_core(takeState$kotlinx_coroutines_core);
        }
        Object m103constructorimpl = Result.m103constructorimpl(successfulResult$kotlinx_coroutines_core);
        if (!z6) {
            interfaceC1944c.resumeWith(m103constructorimpl);
            return;
        }
        kotlin.jvm.internal.j.checkNotNull(interfaceC1944c, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTaskKt.resume>");
        C0362i c0362i = (C0362i) interfaceC1944c;
        InterfaceC1944c interfaceC1944c2 = c0362i.f4194m;
        InterfaceC1952k context = interfaceC1944c2.getContext();
        Object updateThreadContext = kotlinx.coroutines.internal.a.updateThreadContext(context, c0362i.f4196p);
        Q0 updateUndispatchedCompletion = updateThreadContext != kotlinx.coroutines.internal.a.f17614a ? kotlinx.coroutines.a.updateUndispatchedCompletion(interfaceC1944c2, context, updateThreadContext) : null;
        try {
            c0362i.f4194m.resumeWith(m103constructorimpl);
            if (updateUndispatchedCompletion == null || updateUndispatchedCompletion.clearThreadContext()) {
                kotlinx.coroutines.internal.a.restoreThreadContext(context, updateThreadContext);
            }
        } catch (Throwable th) {
            if (updateUndispatchedCompletion == null || updateUndispatchedCompletion.clearThreadContext()) {
                kotlinx.coroutines.internal.a.restoreThreadContext(context, updateThreadContext);
            }
            throw th;
        }
    }
}
