package W5;

import a.C0371a;
import kotlin.Result;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;

/* loaded from: classes2.dex */
public abstract class F {
    static {
        Object m103constructorimpl;
        Object m103constructorimpl2;
        new C0371a().coroutineBoundary();
        try {
            int i2 = Result.f17390b;
            m103constructorimpl = Result.m103constructorimpl(BaseContinuationImpl.class.getCanonicalName());
        } catch (Throwable th) {
            int i7 = Result.f17390b;
            m103constructorimpl = Result.m103constructorimpl(kotlin.b.createFailure(th));
        }
        if (Result.m104exceptionOrNullimpl(m103constructorimpl) != null) {
            m103constructorimpl = "kotlin.coroutines.jvm.internal.BaseContinuationImpl";
        }
        try {
            m103constructorimpl2 = Result.m103constructorimpl(F.class.getCanonicalName());
        } catch (Throwable th2) {
            int i8 = Result.f17390b;
            m103constructorimpl2 = Result.m103constructorimpl(kotlin.b.createFailure(th2));
        }
        if (Result.m104exceptionOrNullimpl(m103constructorimpl2) != null) {
            m103constructorimpl2 = "kotlinx.coroutines.internal.StackTraceRecoveryKt";
        }
    }

    public static final <E extends Throwable> E recoverStackTrace(E e3) {
        return e3;
    }
}
