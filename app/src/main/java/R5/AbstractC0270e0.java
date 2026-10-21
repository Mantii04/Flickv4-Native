package R5;

import java.util.concurrent.CancellationException;

/* renamed from: R5.e0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0270e0 {
    public static final CancellationException CancellationException(String str, Throwable th) {
        CancellationException cancellationException = new CancellationException(str);
        cancellationException.initCause(th);
        return cancellationException;
    }
}
