package kotlinx.coroutines.flow;

import A5.d;
import H5.q;
import U5.b;
import U5.c;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import y5.InterfaceC1944c;

/* loaded from: classes2.dex */
public final class FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1 implements b {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ b f17546b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ q f17547e;

    @d(c = "kotlinx.coroutines.flow.FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1", f = "Errors.kt", l = {113, 114}, m = "collect")
    /* renamed from: kotlinx.coroutines.flow.FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1$1, reason: invalid class name */
    public static final class AnonymousClass1 extends ContinuationImpl {

        /* renamed from: b, reason: collision with root package name */
        public /* synthetic */ Object f17548b;

        /* renamed from: e, reason: collision with root package name */
        public int f17549e;

        /* renamed from: j, reason: collision with root package name */
        public FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1 f17551j;

        /* renamed from: m, reason: collision with root package name */
        public c f17552m;

        public AnonymousClass1(InterfaceC1944c interfaceC1944c) {
            super(interfaceC1944c);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.f17548b = obj;
            this.f17549e |= Integer.MIN_VALUE;
            return FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1.this.collect(null, this);
        }
    }

    public FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1(b bVar, q qVar) {
        this.f17546b = bVar;
        this.f17547e = qVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0068, code lost:
    
        if (r6 == r1) goto L24;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    @Override // U5.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object collect(U5.c r6, y5.InterfaceC1944c r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof kotlinx.coroutines.flow.FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1.AnonymousClass1
            if (r0 == 0) goto L13
            r0 = r7
            kotlinx.coroutines.flow.FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1$1 r0 = (kotlinx.coroutines.flow.FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1.AnonymousClass1) r0
            int r1 = r0.f17549e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f17549e = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1$1 r0 = new kotlinx.coroutines.flow.FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1$1
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.f17548b
            java.lang.Object r1 = z5.AbstractC2008a.getCOROUTINE_SUSPENDED()
            int r2 = r0.f17549e
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3c
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.b.throwOnFailure(r7)
            goto L6b
        L2c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L34:
            U5.c r6 = r0.f17552m
            kotlinx.coroutines.flow.FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1 r2 = r0.f17551j
            kotlin.b.throwOnFailure(r7)
            goto L4f
        L3c:
            kotlin.b.throwOnFailure(r7)
            r0.f17551j = r5
            r0.f17552m = r6
            r0.f17549e = r4
            U5.b r7 = r5.f17546b
            java.lang.Object r7 = U5.d.catchImpl(r7, r6, r0)
            if (r7 != r1) goto L4e
            goto L6a
        L4e:
            r2 = r5
        L4f:
            java.lang.Throwable r7 = (java.lang.Throwable) r7
            if (r7 == 0) goto L6b
            H5.q r2 = r2.f17547e
            r4 = 0
            r0.f17551j = r4
            r0.f17552m = r4
            r0.f17549e = r3
            r3 = 6
            kotlin.jvm.internal.i.mark(r3)
            java.lang.Object r6 = r2.invoke(r6, r7, r0)
            r7 = 7
            kotlin.jvm.internal.i.mark(r7)
            if (r6 != r1) goto L6b
        L6a:
            return r1
        L6b:
            u5.j r6 = u5.C1711j.f20329a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1.collect(U5.c, y5.c):java.lang.Object");
    }
}
