package X5;

import H5.l;
import H5.p;
import W5.AbstractC0363j;
import kotlin.Result;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import u5.C1711j;
import y5.InterfaceC1944c;

/* loaded from: classes2.dex */
public abstract class a {
    public static final <R, T> void startCoroutineCancellable(p pVar, R r6, InterfaceC1944c interfaceC1944c, l lVar) {
        try {
            InterfaceC1944c intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted(pVar, r6, interfaceC1944c));
            int i2 = Result.f17390b;
            AbstractC0363j.resumeCancellableWith(intercepted, Result.m103constructorimpl(C1711j.f20329a), lVar);
        } catch (Throwable th) {
            int i7 = Result.f17390b;
            interfaceC1944c.resumeWith(Result.m103constructorimpl(kotlin.b.createFailure(th)));
            throw th;
        }
    }

    public static /* synthetic */ void startCoroutineCancellable$default(p pVar, Object obj, InterfaceC1944c interfaceC1944c, l lVar, int i2, Object obj2) {
        if ((i2 & 4) != 0) {
            lVar = null;
        }
        startCoroutineCancellable(pVar, obj, interfaceC1944c, lVar);
    }

    public static final void startCoroutineCancellable(InterfaceC1944c interfaceC1944c, InterfaceC1944c interfaceC1944c2) {
        try {
            InterfaceC1944c intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(interfaceC1944c);
            int i2 = Result.f17390b;
            AbstractC0363j.resumeCancellableWith$default(intercepted, Result.m103constructorimpl(C1711j.f20329a), null, 2, null);
        } catch (Throwable th) {
            int i7 = Result.f17390b;
            interfaceC1944c2.resumeWith(Result.m103constructorimpl(kotlin.b.createFailure(th)));
            throw th;
        }
    }
}
