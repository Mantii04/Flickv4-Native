package F5;

import java.io.Closeable;
import u5.AbstractC1702a;

/* loaded from: classes2.dex */
public abstract class a {
    public static final void closeFinally(Closeable closeable, Throwable th) {
        if (closeable != null) {
            if (th == null) {
                closeable.close();
                return;
            }
            try {
                closeable.close();
            } catch (Throwable th2) {
                AbstractC1702a.addSuppressed(th, th2);
            }
        }
    }
}
