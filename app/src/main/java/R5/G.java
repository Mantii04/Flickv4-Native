package R5;

import W5.AbstractC0361h;
import u5.AbstractC1702a;
import y5.InterfaceC1952k;

/* loaded from: classes2.dex */
public abstract class G {
    public static final void handleCoroutineException(InterfaceC1952k interfaceC1952k, Throwable th) {
        try {
            S5.b bVar = (S5.b) interfaceC1952k.get(F.f3146b);
            if (bVar != null) {
                bVar.handleException(interfaceC1952k, th);
            } else {
                AbstractC0361h.handleUncaughtCoroutineException(interfaceC1952k, th);
            }
        } catch (Throwable th2) {
            AbstractC0361h.handleUncaughtCoroutineException(interfaceC1952k, handlerException(th, th2));
        }
    }

    public static final Throwable handlerException(Throwable th, Throwable th2) {
        if (th == th2) {
            return th;
        }
        RuntimeException runtimeException = new RuntimeException("Exception while trying to handle coroutine exception", th2);
        AbstractC1702a.addSuppressed(runtimeException, th);
        return runtimeException;
    }
}
