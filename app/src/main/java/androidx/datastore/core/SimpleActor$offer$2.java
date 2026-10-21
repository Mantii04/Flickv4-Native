package androidx.datastore.core;

import A5.d;
import H5.p;
import R5.I;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import u5.C1711j;
import y5.InterfaceC1944c;

@d(c = "androidx.datastore.core.SimpleActor$offer$2", f = "SimpleActor.kt", l = {122, 122}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class SimpleActor$offer$2 extends SuspendLambda implements p {

    /* renamed from: b, reason: collision with root package name */
    public p f5618b;

    /* renamed from: e, reason: collision with root package name */
    public int f5619e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ SimpleActor f5620f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SimpleActor$offer$2(SimpleActor simpleActor, InterfaceC1944c interfaceC1944c) {
        super(2, interfaceC1944c);
        this.f5620f = simpleActor;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final InterfaceC1944c create(Object obj, InterfaceC1944c interfaceC1944c) {
        return new SimpleActor$offer$2(this.f5620f, interfaceC1944c);
    }

    @Override // H5.p
    public final Object invoke(I i2, InterfaceC1944c interfaceC1944c) {
        return ((SimpleActor$offer$2) create(i2, interfaceC1944c)).invokeSuspend(C1711j.f20329a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0052, code lost:
    
        if (r1.invoke(r7, r6) == r0) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0054, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0046, code lost:
    
        if (r7 != r0) goto L15;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0052 -> B:6:0x0055). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r7) {
        /*
            r6 = this;
            java.lang.Object r0 = z5.AbstractC2008a.getCOROUTINE_SUSPENDED()
            int r1 = r6.f5619e
            androidx.datastore.core.SimpleActor r2 = r6.f5620f
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L22
            if (r1 == r4) goto L1c
            if (r1 != r3) goto L14
            kotlin.b.throwOnFailure(r7)
            goto L55
        L14:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L1c:
            H5.p r1 = r6.f5618b
            kotlin.b.throwOnFailure(r7)
            goto L49
        L22:
            kotlin.b.throwOnFailure(r7)
            java.util.concurrent.atomic.AtomicInteger r7 = androidx.datastore.core.SimpleActor.access$getRemainingMessages$p(r2)
            int r7 = r7.get()
            if (r7 <= 0) goto L62
        L2f:
            R5.I r7 = androidx.datastore.core.SimpleActor.access$getScope$p(r2)
            R5.J.ensureActive(r7)
            H5.p r1 = androidx.datastore.core.SimpleActor.access$getConsumeMessage$p(r2)
            T5.c r7 = androidx.datastore.core.SimpleActor.access$getMessageQueue$p(r2)
            r6.f5618b = r1
            r6.f5619e = r4
            java.lang.Object r7 = r7.receive(r6)
            if (r7 != r0) goto L49
            goto L54
        L49:
            r5 = 0
            r6.f5618b = r5
            r6.f5619e = r3
            java.lang.Object r7 = r1.invoke(r7, r6)
            if (r7 != r0) goto L55
        L54:
            return r0
        L55:
            java.util.concurrent.atomic.AtomicInteger r7 = androidx.datastore.core.SimpleActor.access$getRemainingMessages$p(r2)
            int r7 = r7.decrementAndGet()
            if (r7 != 0) goto L2f
            u5.j r7 = u5.C1711j.f20329a
            return r7
        L62:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "Check failed."
            r7.<init>(r0)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.SimpleActor$offer$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
