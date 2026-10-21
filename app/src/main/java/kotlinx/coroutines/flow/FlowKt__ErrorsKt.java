package kotlinx.coroutines.flow;

import H5.q;
import U5.b;

/* loaded from: classes2.dex */
public abstract /* synthetic */ class FlowKt__ErrorsKt {
    /* renamed from: catch, reason: not valid java name */
    public static final <T> b m109catch(b bVar, q qVar) {
        return new FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1(bVar, qVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x007e, code lost:
    
        if (kotlin.jvm.internal.j.areEqual(r6, r5) == false) goto L41;
     */
    /* JADX WARN: Removed duplicated region for block: B:23:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0084 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T> java.lang.Object catchImpl(U5.b r4, U5.c r5, y5.InterfaceC1944c r6) {
        /*
            boolean r0 = r6 instanceof kotlinx.coroutines.flow.FlowKt__ErrorsKt$catchImpl$1
            if (r0 == 0) goto L13
            r0 = r6
            kotlinx.coroutines.flow.FlowKt__ErrorsKt$catchImpl$1 r0 = (kotlinx.coroutines.flow.FlowKt__ErrorsKt$catchImpl$1) r0
            int r1 = r0.f17555f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f17555f = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.FlowKt__ErrorsKt$catchImpl$1 r0 = new kotlinx.coroutines.flow.FlowKt__ErrorsKt$catchImpl$1
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f17554e
            java.lang.Object r1 = z5.AbstractC2008a.getCOROUTINE_SUSPENDED()
            int r2 = r0.f17555f
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            kotlin.jvm.internal.Ref$ObjectRef r4 = r0.f17553b
            kotlin.b.throwOnFailure(r6)     // Catch: java.lang.Throwable -> L2b
            goto L4d
        L2b:
            r5 = move-exception
            goto L51
        L2d:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L35:
            kotlin.b.throwOnFailure(r6)
            kotlin.jvm.internal.Ref$ObjectRef r6 = new kotlin.jvm.internal.Ref$ObjectRef
            r6.<init>()
            kotlinx.coroutines.flow.FlowKt__ErrorsKt$catchImpl$2 r2 = new kotlinx.coroutines.flow.FlowKt__ErrorsKt$catchImpl$2     // Catch: java.lang.Throwable -> L4f
            r2.<init>(r5, r6)     // Catch: java.lang.Throwable -> L4f
            r0.f17553b = r6     // Catch: java.lang.Throwable -> L4f
            r0.f17555f = r3     // Catch: java.lang.Throwable -> L4f
            java.lang.Object r4 = r4.collect(r2, r0)     // Catch: java.lang.Throwable -> L4f
            if (r4 != r1) goto L4d
            return r1
        L4d:
            r4 = 0
            return r4
        L4f:
            r5 = move-exception
            r4 = r6
        L51:
            java.lang.Object r4 = r4.f17447b
            java.lang.Throwable r4 = (java.lang.Throwable) r4
            if (r4 == 0) goto L5d
            boolean r6 = kotlin.jvm.internal.j.areEqual(r4, r5)
            if (r6 != 0) goto L81
        L5d:
            y5.k r6 = r0.getContext()
            R5.F r0 = R5.F.f3147e
            y5.i r6 = r6.get(r0)
            R5.q0 r6 = (R5.InterfaceC0294q0) r6
            if (r6 == 0) goto L82
            R5.A0 r6 = (R5.A0) r6
            boolean r0 = r6.isCancelled()
            if (r0 != 0) goto L74
            goto L82
        L74:
            java.util.concurrent.CancellationException r6 = r6.getCancellationException()
            if (r6 == 0) goto L82
            boolean r6 = kotlin.jvm.internal.j.areEqual(r6, r5)
            if (r6 != 0) goto L81
            goto L82
        L81:
            throw r5
        L82:
            if (r4 != 0) goto L85
            return r5
        L85:
            boolean r6 = r5 instanceof java.util.concurrent.CancellationException
            if (r6 == 0) goto L8d
            u5.AbstractC1702a.addSuppressed(r4, r5)
            throw r4
        L8d:
            u5.AbstractC1702a.addSuppressed(r5, r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ErrorsKt.catchImpl(U5.b, U5.c, y5.c):java.lang.Object");
    }
}
