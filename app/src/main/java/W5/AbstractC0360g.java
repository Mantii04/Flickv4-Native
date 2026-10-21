package W5;

import java.util.Arrays;
import java.util.Collection;
import java.util.ServiceConfigurationError;

/* renamed from: W5.g, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0360g {

    /* renamed from: a, reason: collision with root package name */
    public static final Collection f4191a;

    static {
        try {
            f4191a = O5.l.toList(O5.j.asSequence(Arrays.asList(new S5.b()).iterator()));
        } catch (Throwable th) {
            throw new ServiceConfigurationError(th.getMessage(), th);
        }
    }

    public static final Collection<S5.b> getPlatformExceptionHandlers() {
        return f4191a;
    }

    public static final void propagateExceptionFinalResort(Throwable th) {
        Thread currentThread = Thread.currentThread();
        currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, th);
    }
}
