package C5;

import java.lang.reflect.Method;
import kotlin.jvm.internal.j;

/* loaded from: classes2.dex */
public abstract class b {
    public void addSuppressed(Throwable cause, Throwable exception) {
        j.checkNotNullParameter(cause, "cause");
        j.checkNotNullParameter(exception, "exception");
        Method method = a.f804a;
        if (method != null) {
            method.invoke(cause, exception);
        }
    }

    public K5.d defaultPlatformRandom() {
        return new K5.c();
    }
}
