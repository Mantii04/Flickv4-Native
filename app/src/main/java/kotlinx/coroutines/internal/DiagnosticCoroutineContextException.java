package kotlinx.coroutines.internal;

import y5.InterfaceC1952k;

/* loaded from: classes2.dex */
public final class DiagnosticCoroutineContextException extends RuntimeException {

    /* renamed from: b, reason: collision with root package name */
    public final transient InterfaceC1952k f17604b;

    public DiagnosticCoroutineContextException(InterfaceC1952k interfaceC1952k) {
        this.f17604b = interfaceC1952k;
    }

    @Override // java.lang.Throwable
    public Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }

    @Override // java.lang.Throwable
    public String getLocalizedMessage() {
        return this.f17604b.toString();
    }
}
