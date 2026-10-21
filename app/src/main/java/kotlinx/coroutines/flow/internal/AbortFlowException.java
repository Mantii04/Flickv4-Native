package kotlinx.coroutines.flow.internal;

import U5.c;
import java.util.concurrent.CancellationException;

/* loaded from: classes2.dex */
public final class AbortFlowException extends CancellationException {

    /* renamed from: b, reason: collision with root package name */
    public final transient c f17584b;

    public AbortFlowException(c cVar) {
        super("Flow was aborted, no more elements needed");
        this.f17584b = cVar;
    }

    @Override // java.lang.Throwable
    public Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }
}
