package kotlin.coroutines.jvm.internal;

import A5.c;
import A5.e;
import A5.f;
import java.io.Serializable;
import kotlin.Result;
import kotlin.b;
import kotlin.jvm.internal.j;
import y5.InterfaceC1944c;
import z5.AbstractC2008a;

/* loaded from: classes2.dex */
public abstract class BaseContinuationImpl implements InterfaceC1944c, c, Serializable {
    private final InterfaceC1944c completion;

    public BaseContinuationImpl(InterfaceC1944c interfaceC1944c) {
        this.completion = interfaceC1944c;
    }

    public InterfaceC1944c create(InterfaceC1944c completion) {
        j.checkNotNullParameter(completion, "completion");
        throw new UnsupportedOperationException("create(Continuation) has not been overridden");
    }

    @Override // A5.c
    public c getCallerFrame() {
        InterfaceC1944c interfaceC1944c = this.completion;
        if (interfaceC1944c instanceof c) {
            return (c) interfaceC1944c;
        }
        return null;
    }

    public final InterfaceC1944c getCompletion() {
        return this.completion;
    }

    public StackTraceElement getStackTraceElement() {
        return e.getStackTraceElement(this);
    }

    public abstract Object invokeSuspend(Object obj);

    public void releaseIntercepted() {
    }

    @Override // y5.InterfaceC1944c
    public final void resumeWith(Object obj) {
        Object invokeSuspend;
        InterfaceC1944c interfaceC1944c = this;
        while (true) {
            f.probeCoroutineResumed(interfaceC1944c);
            BaseContinuationImpl baseContinuationImpl = (BaseContinuationImpl) interfaceC1944c;
            InterfaceC1944c interfaceC1944c2 = baseContinuationImpl.completion;
            j.checkNotNull(interfaceC1944c2);
            try {
                invokeSuspend = baseContinuationImpl.invokeSuspend(obj);
            } catch (Throwable th) {
                int i2 = Result.f17390b;
                obj = Result.m103constructorimpl(b.createFailure(th));
            }
            if (invokeSuspend == AbstractC2008a.getCOROUTINE_SUSPENDED()) {
                return;
            }
            obj = Result.m103constructorimpl(invokeSuspend);
            baseContinuationImpl.releaseIntercepted();
            if (!(interfaceC1944c2 instanceof BaseContinuationImpl)) {
                interfaceC1944c2.resumeWith(obj);
                return;
            }
            interfaceC1944c = interfaceC1944c2;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Continuation at ");
        Object stackTraceElement = getStackTraceElement();
        if (stackTraceElement == null) {
            stackTraceElement = getClass().getName();
        }
        sb.append(stackTraceElement);
        return sb.toString();
    }

    public InterfaceC1944c create(Object obj, InterfaceC1944c completion) {
        j.checkNotNullParameter(completion, "completion");
        throw new UnsupportedOperationException("create(Any?;Continuation) has not been overridden");
    }
}
