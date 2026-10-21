package R5;

import W5.C0362i;
import kotlin.Result;
import y5.InterfaceC1944c;

/* loaded from: classes2.dex */
public abstract class K {
    public static final String getClassSimpleName(Object obj) {
        return obj.getClass().getSimpleName();
    }

    public static final String getHexAddress(Object obj) {
        return Integer.toHexString(System.identityHashCode(obj));
    }

    public static final String toDebugString(InterfaceC1944c interfaceC1944c) {
        Object m103constructorimpl;
        if (interfaceC1944c instanceof C0362i) {
            return interfaceC1944c.toString();
        }
        try {
            int i2 = Result.f17390b;
            m103constructorimpl = Result.m103constructorimpl(interfaceC1944c + '@' + getHexAddress(interfaceC1944c));
        } catch (Throwable th) {
            int i7 = Result.f17390b;
            m103constructorimpl = Result.m103constructorimpl(kotlin.b.createFailure(th));
        }
        if (Result.m104exceptionOrNullimpl(m103constructorimpl) != null) {
            m103constructorimpl = interfaceC1944c.getClass().getName() + '@' + getHexAddress(interfaceC1944c);
        }
        return (String) m103constructorimpl;
    }
}
