package kotlinx.coroutines.flow;

import T5.q;
import U5.c;
import u5.C1711j;
import y5.InterfaceC1944c;
import z5.AbstractC2008a;

/* loaded from: classes2.dex */
public abstract /* synthetic */ class a {
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0089, code lost:
    
        if (r2.emit(r9, r0) == r1) goto L32;
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0075 A[Catch: all -> 0x0036, TRY_LEAVE, TryCatch #1 {all -> 0x0036, blocks: (B:12:0x0030, B:14:0x0056, B:20:0x006d, B:22:0x0075, B:32:0x0048, B:34:0x0052), top: B:7:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0024  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0089 -> B:13:0x0033). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object a(U5.c r6, T5.q r7, boolean r8, y5.InterfaceC1944c r9) {
        /*
            boolean r0 = r9 instanceof kotlinx.coroutines.flow.FlowKt__ChannelsKt$emitAllImpl$1
            if (r0 == 0) goto L13
            r0 = r9
            kotlinx.coroutines.flow.FlowKt__ChannelsKt$emitAllImpl$1 r0 = (kotlinx.coroutines.flow.FlowKt__ChannelsKt$emitAllImpl$1) r0
            int r1 = r0.f17545n
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f17545n = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.FlowKt__ChannelsKt$emitAllImpl$1 r0 = new kotlinx.coroutines.flow.FlowKt__ChannelsKt$emitAllImpl$1
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.f17544m
            java.lang.Object r1 = z5.AbstractC2008a.getCOROUTINE_SUSPENDED()
            int r2 = r0.f17545n
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L4c
            if (r2 == r4) goto L40
            if (r2 != r3) goto L38
            boolean r8 = r0.f17543j
            T5.e r6 = r0.f17542f
            T5.q r7 = r0.f17541e
            U5.c r2 = r0.f17540b
            kotlin.b.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L36
        L33:
            r9 = r6
            r6 = r2
            goto L56
        L36:
            r6 = move-exception
            goto L95
        L38:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L40:
            boolean r8 = r0.f17543j
            T5.e r6 = r0.f17542f
            T5.q r7 = r0.f17541e
            U5.c r2 = r0.f17540b
            kotlin.b.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L36
            goto L6d
        L4c:
            kotlin.b.throwOnFailure(r9)
            U5.d.ensureActive(r6)
            T5.e r9 = r7.iterator()     // Catch: java.lang.Throwable -> L36
        L56:
            r0.f17540b = r6     // Catch: java.lang.Throwable -> L36
            r0.f17541e = r7     // Catch: java.lang.Throwable -> L36
            r0.f17542f = r9     // Catch: java.lang.Throwable -> L36
            r0.f17543j = r8     // Catch: java.lang.Throwable -> L36
            r0.f17545n = r4     // Catch: java.lang.Throwable -> L36
            T5.a r9 = (T5.a) r9     // Catch: java.lang.Throwable -> L36
            java.lang.Object r2 = r9.hasNext(r0)     // Catch: java.lang.Throwable -> L36
            if (r2 != r1) goto L69
            goto L8b
        L69:
            r5 = r2
            r2 = r6
            r6 = r9
            r9 = r5
        L6d:
            java.lang.Boolean r9 = (java.lang.Boolean) r9     // Catch: java.lang.Throwable -> L36
            boolean r9 = r9.booleanValue()     // Catch: java.lang.Throwable -> L36
            if (r9 == 0) goto L8c
            T5.a r6 = (T5.a) r6     // Catch: java.lang.Throwable -> L36
            java.lang.Object r9 = r6.next()     // Catch: java.lang.Throwable -> L36
            r0.f17540b = r2     // Catch: java.lang.Throwable -> L36
            r0.f17541e = r7     // Catch: java.lang.Throwable -> L36
            r0.f17542f = r6     // Catch: java.lang.Throwable -> L36
            r0.f17543j = r8     // Catch: java.lang.Throwable -> L36
            r0.f17545n = r3     // Catch: java.lang.Throwable -> L36
            java.lang.Object r9 = r2.emit(r9, r0)     // Catch: java.lang.Throwable -> L36
            if (r9 != r1) goto L33
        L8b:
            return r1
        L8c:
            if (r8 == 0) goto L92
            r6 = 0
            T5.l.cancelConsumed(r7, r6)
        L92:
            u5.j r6 = u5.C1711j.f20329a
            return r6
        L95:
            throw r6     // Catch: java.lang.Throwable -> L96
        L96:
            r9 = move-exception
            if (r8 == 0) goto L9c
            T5.l.cancelConsumed(r7, r6)
        L9c:
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.a.a(U5.c, T5.q, boolean, y5.c):java.lang.Object");
    }

    public static final <T> Object emitAll(c cVar, q qVar, InterfaceC1944c interfaceC1944c) {
        Object a7 = a(cVar, qVar, true, interfaceC1944c);
        return a7 == AbstractC2008a.getCOROUTINE_SUSPENDED() ? a7 : C1711j.f20329a;
    }
}
