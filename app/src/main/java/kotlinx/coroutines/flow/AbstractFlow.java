package kotlinx.coroutines.flow;

import U5.b;
import U5.c;
import y5.InterfaceC1944c;

/* loaded from: classes2.dex */
public abstract class AbstractFlow implements b {
    /* JADX WARN: Removed duplicated region for block: B:21:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Override // U5.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object collect(U5.c r6, y5.InterfaceC1944c r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof kotlinx.coroutines.flow.AbstractFlow$collect$1
            if (r0 == 0) goto L13
            r0 = r7
            kotlinx.coroutines.flow.AbstractFlow$collect$1 r0 = (kotlinx.coroutines.flow.AbstractFlow$collect$1) r0
            int r1 = r0.f17535j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f17535j = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.AbstractFlow$collect$1 r0 = new kotlinx.coroutines.flow.AbstractFlow$collect$1
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.f17533e
            java.lang.Object r1 = z5.AbstractC2008a.getCOROUTINE_SUSPENDED()
            int r2 = r0.f17535j
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            kotlinx.coroutines.flow.internal.SafeCollector r6 = r0.f17532b
            kotlin.b.throwOnFailure(r7)     // Catch: java.lang.Throwable -> L2b
            goto L4d
        L2b:
            r7 = move-exception
            goto L57
        L2d:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L35:
            kotlin.b.throwOnFailure(r7)
            kotlinx.coroutines.flow.internal.SafeCollector r7 = new kotlinx.coroutines.flow.internal.SafeCollector
            y5.k r2 = r0.getContext()
            r7.<init>(r6, r2)
            r0.f17532b = r7     // Catch: java.lang.Throwable -> L53
            r0.f17535j = r3     // Catch: java.lang.Throwable -> L53
            java.lang.Object r6 = r5.collectSafely(r7, r0)     // Catch: java.lang.Throwable -> L53
            if (r6 != r1) goto L4c
            return r1
        L4c:
            r6 = r7
        L4d:
            r6.releaseIntercepted()
            u5.j r6 = u5.C1711j.f20329a
            return r6
        L53:
            r6 = move-exception
            r4 = r7
            r7 = r6
            r6 = r4
        L57:
            r6.releaseIntercepted()
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.AbstractFlow.collect(U5.c, y5.c):java.lang.Object");
    }

    public abstract Object collectSafely(c cVar, InterfaceC1944c interfaceC1944c);
}
