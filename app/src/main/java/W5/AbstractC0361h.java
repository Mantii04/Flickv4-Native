package W5;

import java.util.Iterator;
import kotlinx.coroutines.internal.DiagnosticCoroutineContextException;
import kotlinx.coroutines.internal.ExceptionSuccessfullyProcessed;
import u5.AbstractC1702a;
import y5.InterfaceC1952k;

/* renamed from: W5.h, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0361h {
    public static final void handleUncaughtCoroutineException(InterfaceC1952k interfaceC1952k, Throwable th) {
        Iterator<S5.b> it = AbstractC0360g.getPlatformExceptionHandlers().iterator();
        while (it.hasNext()) {
            try {
                it.next().handleException(interfaceC1952k, th);
            } catch (ExceptionSuccessfullyProcessed unused) {
                return;
            } catch (Throwable th2) {
                AbstractC0360g.propagateExceptionFinalResort(R5.G.handlerException(th, th2));
            }
        }
        try {
            AbstractC1702a.addSuppressed(th, new DiagnosticCoroutineContextException(interfaceC1952k));
        } catch (Throwable unused2) {
        }
        AbstractC0360g.propagateExceptionFinalResort(th);
    }
}
