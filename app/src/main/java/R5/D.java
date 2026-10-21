package R5;

import kotlin.Result;
import y5.InterfaceC1944c;

/* loaded from: classes2.dex */
public abstract class D {
    public static final <T> Object recoverResult(Object obj, InterfaceC1944c interfaceC1944c) {
        if (!(obj instanceof A)) {
            return Result.m103constructorimpl(obj);
        }
        int i2 = Result.f17390b;
        return Result.m103constructorimpl(kotlin.b.createFailure(((A) obj).f3131a));
    }

    public static final <T> Object toState(Object obj, H5.l lVar) {
        Throwable m104exceptionOrNullimpl = Result.m104exceptionOrNullimpl(obj);
        return m104exceptionOrNullimpl == null ? lVar != null ? new B(obj, lVar) : obj : new A(m104exceptionOrNullimpl, false, 2, null);
    }

    public static /* synthetic */ Object toState$default(Object obj, H5.l lVar, int i2, Object obj2) {
        if ((i2 & 1) != 0) {
            lVar = null;
        }
        return toState(obj, lVar);
    }

    public static final <T> Object toState(Object obj, InterfaceC0285m interfaceC0285m) {
        Throwable m104exceptionOrNullimpl = Result.m104exceptionOrNullimpl(obj);
        return m104exceptionOrNullimpl == null ? obj : new A(m104exceptionOrNullimpl, false, 2, null);
    }
}
