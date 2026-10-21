package W5;

import R5.A0;
import R5.InterfaceC0294q0;
import R5.O0;
import R5.Q0;
import R5.Y;
import java.util.concurrent.CancellationException;
import kotlin.Result;
import y5.InterfaceC1944c;
import y5.InterfaceC1952k;

/* renamed from: W5.j, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0363j {

    /* renamed from: a, reason: collision with root package name */
    public static final G f4197a = new G("UNDEFINED");

    /* renamed from: b, reason: collision with root package name */
    public static final G f4198b = new G("REUSABLE_CLAIMED");

    public static final <T> void resumeCancellableWith(InterfaceC1944c interfaceC1944c, Object obj, H5.l lVar) {
        if (!(interfaceC1944c instanceof C0362i)) {
            interfaceC1944c.resumeWith(obj);
            return;
        }
        C0362i c0362i = (C0362i) interfaceC1944c;
        Object state = R5.D.toState(obj, lVar);
        R5.E e3 = c0362i.f4193j;
        InterfaceC1944c interfaceC1944c2 = c0362i.f4194m;
        if (e3.isDispatchNeeded(c0362i.getContext())) {
            c0362i.f4195n = state;
            c0362i.f3159f = 1;
            c0362i.f4193j.dispatch(c0362i.getContext(), c0362i);
            return;
        }
        Y eventLoop$kotlinx_coroutines_core = O0.f3153a.getEventLoop$kotlinx_coroutines_core();
        if (eventLoop$kotlinx_coroutines_core.isUnconfinedLoopActive()) {
            c0362i.f4195n = state;
            c0362i.f3159f = 1;
            eventLoop$kotlinx_coroutines_core.dispatchUnconfined(c0362i);
            return;
        }
        eventLoop$kotlinx_coroutines_core.incrementUseCount(true);
        try {
            InterfaceC0294q0 interfaceC0294q0 = (InterfaceC0294q0) c0362i.getContext().get(R5.F.f3147e);
            if (interfaceC0294q0 == null || interfaceC0294q0.isActive()) {
                Object obj2 = c0362i.f4196p;
                InterfaceC1952k context = interfaceC1944c2.getContext();
                Object updateThreadContext = kotlinx.coroutines.internal.a.updateThreadContext(context, obj2);
                Q0 updateUndispatchedCompletion = updateThreadContext != kotlinx.coroutines.internal.a.f17614a ? kotlinx.coroutines.a.updateUndispatchedCompletion(interfaceC1944c2, context, updateThreadContext) : null;
                try {
                    interfaceC1944c2.resumeWith(obj);
                } finally {
                    if (updateUndispatchedCompletion == null || updateUndispatchedCompletion.clearThreadContext()) {
                        kotlinx.coroutines.internal.a.restoreThreadContext(context, updateThreadContext);
                    }
                }
            } else {
                CancellationException cancellationException = ((A0) interfaceC0294q0).getCancellationException();
                c0362i.cancelCompletedResult$kotlinx_coroutines_core(state, cancellationException);
                int i2 = Result.f17390b;
                c0362i.resumeWith(Result.m103constructorimpl(kotlin.b.createFailure(cancellationException)));
            }
            while (eventLoop$kotlinx_coroutines_core.processUnconfinedEvent()) {
            }
        } finally {
            try {
            } finally {
            }
        }
    }

    public static /* synthetic */ void resumeCancellableWith$default(InterfaceC1944c interfaceC1944c, Object obj, H5.l lVar, int i2, Object obj2) {
        if ((i2 & 2) != 0) {
            lVar = null;
        }
        resumeCancellableWith(interfaceC1944c, obj, lVar);
    }
}
