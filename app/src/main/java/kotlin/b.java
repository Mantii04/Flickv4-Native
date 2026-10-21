package kotlin;

import kotlin.Result;
import kotlin.jvm.internal.j;

/* loaded from: classes2.dex */
public abstract class b {
    public static final Object createFailure(Throwable exception) {
        j.checkNotNullParameter(exception, "exception");
        return new Result.Failure(exception);
    }

    public static final void throwOnFailure(Object obj) {
        if (obj instanceof Result.Failure) {
            throw ((Result.Failure) obj).f17391b;
        }
    }
}
