package kotlinx.coroutines.flow;

import H5.p;
import U5.c;
import kotlin.jvm.internal.Ref$BooleanRef;

/* loaded from: classes2.dex */
public final class FlowKt__LimitKt$dropWhile$1$1 implements c {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Ref$BooleanRef f17562b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ c f17563e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ p f17564f;

    public FlowKt__LimitKt$dropWhile$1$1(Ref$BooleanRef ref$BooleanRef, c cVar, p pVar) {
        this.f17562b = ref$BooleanRef;
        this.f17563e = cVar;
        this.f17564f = pVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0027  */
    @Override // U5.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object emit(java.lang.Object r8, y5.InterfaceC1944c r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof kotlinx.coroutines.flow.FlowKt__LimitKt$dropWhile$1$1$emit$1
            if (r0 == 0) goto L13
            r0 = r9
            kotlinx.coroutines.flow.FlowKt__LimitKt$dropWhile$1$1$emit$1 r0 = (kotlinx.coroutines.flow.FlowKt__LimitKt$dropWhile$1$1$emit$1) r0
            int r1 = r0.f17569m
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f17569m = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.FlowKt__LimitKt$dropWhile$1$1$emit$1 r0 = new kotlinx.coroutines.flow.FlowKt__LimitKt$dropWhile$1$1$emit$1
            r0.<init>(r7, r9)
        L18:
            java.lang.Object r9 = r0.f17567f
            java.lang.Object r1 = z5.AbstractC2008a.getCOROUTINE_SUSPENDED()
            int r2 = r0.f17569m
            u5.j r3 = u5.C1711j.f20329a
            r4 = 3
            r5 = 2
            r6 = 1
            if (r2 == 0) goto L45
            if (r2 == r6) goto L41
            if (r2 == r5) goto L39
            if (r2 != r4) goto L31
            kotlin.b.throwOnFailure(r9)
            return r3
        L31:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L39:
            java.lang.Object r8 = r0.f17566e
            kotlinx.coroutines.flow.FlowKt__LimitKt$dropWhile$1$1 r2 = r0.f17565b
            kotlin.b.throwOnFailure(r9)
            goto L69
        L41:
            kotlin.b.throwOnFailure(r9)
            return r3
        L45:
            kotlin.b.throwOnFailure(r9)
            kotlin.jvm.internal.Ref$BooleanRef r9 = r7.f17562b
            boolean r9 = r9.f17445b
            if (r9 == 0) goto L59
            r0.f17569m = r6
            U5.c r9 = r7.f17563e
            java.lang.Object r8 = r9.emit(r8, r0)
            if (r8 != r1) goto L85
            goto L84
        L59:
            r0.f17565b = r7
            r0.f17566e = r8
            r0.f17569m = r5
            H5.p r9 = r7.f17564f
            java.lang.Object r9 = r9.invoke(r8, r0)
            if (r9 != r1) goto L68
            goto L84
        L68:
            r2 = r7
        L69:
            java.lang.Boolean r9 = (java.lang.Boolean) r9
            boolean r9 = r9.booleanValue()
            if (r9 != 0) goto L85
            kotlin.jvm.internal.Ref$BooleanRef r9 = r2.f17562b
            r9.f17445b = r6
            r9 = 0
            r0.f17565b = r9
            r0.f17566e = r9
            r0.f17569m = r4
            U5.c r9 = r2.f17563e
            java.lang.Object r8 = r9.emit(r8, r0)
            if (r8 != r1) goto L85
        L84:
            return r1
        L85:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__LimitKt$dropWhile$1$1.emit(java.lang.Object, y5.c):java.lang.Object");
    }
}
