package kotlinx.coroutines.flow;

import U5.c;
import kotlin.jvm.internal.Ref$ObjectRef;

/* loaded from: classes2.dex */
public final class FlowKt__ErrorsKt$catchImpl$2 implements c {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ c f17556b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Ref$ObjectRef f17557e;

    public FlowKt__ErrorsKt$catchImpl$2(c cVar, Ref$ObjectRef ref$ObjectRef) {
        this.f17556b = cVar;
        this.f17557e = ref$ObjectRef;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Override // U5.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object emit(java.lang.Object r5, y5.InterfaceC1944c r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof kotlinx.coroutines.flow.FlowKt__ErrorsKt$catchImpl$2$emit$1
            if (r0 == 0) goto L13
            r0 = r6
            kotlinx.coroutines.flow.FlowKt__ErrorsKt$catchImpl$2$emit$1 r0 = (kotlinx.coroutines.flow.FlowKt__ErrorsKt$catchImpl$2$emit$1) r0
            int r1 = r0.f17561j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f17561j = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.FlowKt__ErrorsKt$catchImpl$2$emit$1 r0 = new kotlinx.coroutines.flow.FlowKt__ErrorsKt$catchImpl$2$emit$1
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.f17559e
            java.lang.Object r1 = z5.AbstractC2008a.getCOROUTINE_SUSPENDED()
            int r2 = r0.f17561j
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            kotlinx.coroutines.flow.FlowKt__ErrorsKt$catchImpl$2 r5 = r0.f17558b
            kotlin.b.throwOnFailure(r6)     // Catch: java.lang.Throwable -> L2b
            goto L45
        L2b:
            r6 = move-exception
            goto L4a
        L2d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L35:
            kotlin.b.throwOnFailure(r6)
            U5.c r6 = r4.f17556b     // Catch: java.lang.Throwable -> L48
            r0.f17558b = r4     // Catch: java.lang.Throwable -> L48
            r0.f17561j = r3     // Catch: java.lang.Throwable -> L48
            java.lang.Object r5 = r6.emit(r5, r0)     // Catch: java.lang.Throwable -> L48
            if (r5 != r1) goto L45
            return r1
        L45:
            u5.j r5 = u5.C1711j.f20329a
            return r5
        L48:
            r6 = move-exception
            r5 = r4
        L4a:
            kotlin.jvm.internal.Ref$ObjectRef r5 = r5.f17557e
            r5.f17447b = r6
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ErrorsKt$catchImpl$2.emit(java.lang.Object, y5.c):java.lang.Object");
    }
}
