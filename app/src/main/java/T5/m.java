package T5;

import R5.AbstractC0270e0;
import java.util.concurrent.CancellationException;

/* loaded from: classes2.dex */
public abstract /* synthetic */ class m {
    public static final void cancelConsumed(q qVar, Throwable th) {
        if (th != null) {
            r0 = th instanceof CancellationException ? (CancellationException) th : null;
            if (r0 == null) {
                r0 = AbstractC0270e0.CancellationException("Channel was consumed, consumer had failed", th);
            }
        }
        qVar.cancel(r0);
    }
}
