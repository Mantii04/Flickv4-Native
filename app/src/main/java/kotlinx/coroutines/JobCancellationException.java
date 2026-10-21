package kotlinx.coroutines;

import R5.InterfaceC0294q0;
import java.util.concurrent.CancellationException;
import kotlin.jvm.internal.j;

/* loaded from: classes2.dex */
public final class JobCancellationException extends CancellationException {

    /* renamed from: b, reason: collision with root package name */
    public final transient InterfaceC0294q0 f17485b;

    public JobCancellationException(String str, Throwable th, InterfaceC0294q0 interfaceC0294q0) {
        super(str);
        this.f17485b = interfaceC0294q0;
        if (th != null) {
            initCause(th);
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof JobCancellationException)) {
            return false;
        }
        JobCancellationException jobCancellationException = (JobCancellationException) obj;
        return j.areEqual(jobCancellationException.getMessage(), getMessage()) && j.areEqual(jobCancellationException.f17485b, this.f17485b) && j.areEqual(jobCancellationException.getCause(), getCause());
    }

    @Override // java.lang.Throwable
    public Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }

    public int hashCode() {
        String message = getMessage();
        j.checkNotNull(message);
        int hashCode = (this.f17485b.hashCode() + (message.hashCode() * 31)) * 31;
        Throwable cause = getCause();
        return hashCode + (cause != null ? cause.hashCode() : 0);
    }

    @Override // java.lang.Throwable
    public String toString() {
        return super.toString() + "; job=" + this.f17485b;
    }
}
