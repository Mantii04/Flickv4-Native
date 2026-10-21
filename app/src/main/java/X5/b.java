package X5;

import A5.f;
import H5.p;
import R5.A;
import R5.B0;
import W5.C;
import kotlin.Result;
import kotlin.jvm.internal.o;
import y5.InterfaceC1944c;
import y5.InterfaceC1952k;
import z5.AbstractC2008a;

/* loaded from: classes2.dex */
public abstract class b {
    public static final <R, T> void startCoroutineUndispatched(p pVar, R r6, InterfaceC1944c interfaceC1944c) {
        InterfaceC1944c probeCoroutineCreated = f.probeCoroutineCreated(interfaceC1944c);
        try {
            InterfaceC1952k context = interfaceC1944c.getContext();
            Object updateThreadContext = kotlinx.coroutines.internal.a.updateThreadContext(context, null);
            try {
                Object invoke = ((p) o.beforeCheckcastToFunctionOfArity(pVar, 2)).invoke(r6, probeCoroutineCreated);
                if (invoke != AbstractC2008a.getCOROUTINE_SUSPENDED()) {
                    probeCoroutineCreated.resumeWith(Result.m103constructorimpl(invoke));
                }
            } finally {
                kotlinx.coroutines.internal.a.restoreThreadContext(context, updateThreadContext);
            }
        } catch (Throwable th) {
            int i2 = Result.f17390b;
            probeCoroutineCreated.resumeWith(Result.m103constructorimpl(kotlin.b.createFailure(th)));
        }
    }

    public static final <T, R> Object startUndispatchedOrReturn(C c7, R r6, p pVar) {
        Object a7;
        try {
            a7 = ((p) o.beforeCheckcastToFunctionOfArity(pVar, 2)).invoke(r6, c7);
        } catch (Throwable th) {
            a7 = new A(th, false, 2, null);
        }
        if (a7 == AbstractC2008a.getCOROUTINE_SUSPENDED()) {
            return AbstractC2008a.getCOROUTINE_SUSPENDED();
        }
        Object makeCompletingOnce$kotlinx_coroutines_core = c7.makeCompletingOnce$kotlinx_coroutines_core(a7);
        if (makeCompletingOnce$kotlinx_coroutines_core == B0.f3137b) {
            return AbstractC2008a.getCOROUTINE_SUSPENDED();
        }
        if (makeCompletingOnce$kotlinx_coroutines_core instanceof A) {
            throw ((A) makeCompletingOnce$kotlinx_coroutines_core).f3131a;
        }
        return B0.unboxState(makeCompletingOnce$kotlinx_coroutines_core);
    }
}
