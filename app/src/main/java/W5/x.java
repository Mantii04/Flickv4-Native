package W5;

import R5.E0;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class x {
    public static final boolean isMissing(E0 e02) {
        return e02.getImmediate() instanceof y;
    }

    public static final Void throwMissingMainDispatcherException() {
        throw new IllegalStateException("Module with the Main dispatcher is missing. Add dependency providing the Main dispatcher, e.g. 'kotlinx-coroutines-android' and ensure it has the same version as 'kotlinx-coroutines-core'");
    }

    public static final E0 tryCreateDispatcher(v vVar, List<? extends v> list) {
        try {
            return vVar.createDispatcher(list);
        } catch (Throwable th) {
            vVar.hintOnError();
            throw th;
        }
    }
}
