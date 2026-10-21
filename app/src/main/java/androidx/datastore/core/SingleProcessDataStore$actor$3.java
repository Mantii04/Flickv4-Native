package androidx.datastore.core;

import A5.d;
import H5.p;
import Y.m;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import u5.C1711j;
import y5.InterfaceC1944c;

@d(c = "androidx.datastore.core.SingleProcessDataStore$actor$3", f = "SingleProcessDataStore.kt", l = {239, 242}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class SingleProcessDataStore$actor$3 extends SuspendLambda implements p {

    /* renamed from: b, reason: collision with root package name */
    public int f5639b;

    /* renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f5640e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ SingleProcessDataStore f5641f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SingleProcessDataStore$actor$3(SingleProcessDataStore singleProcessDataStore, InterfaceC1944c interfaceC1944c) {
        super(2, interfaceC1944c);
        this.f5641f = singleProcessDataStore;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final InterfaceC1944c create(Object obj, InterfaceC1944c interfaceC1944c) {
        SingleProcessDataStore$actor$3 singleProcessDataStore$actor$3 = new SingleProcessDataStore$actor$3(this.f5641f, interfaceC1944c);
        singleProcessDataStore$actor$3.f5640e = obj;
        return singleProcessDataStore$actor$3;
    }

    @Override // H5.p
    public final Object invoke(m mVar, InterfaceC1944c interfaceC1944c) {
        return ((SingleProcessDataStore$actor$3) create(mVar, interfaceC1944c)).invokeSuspend(C1711j.f20329a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0030, code lost:
    
        if (androidx.datastore.core.SingleProcessDataStore.access$handleRead(r4, (Y.k) r6, r5) == r0) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0041, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x003f, code lost:
    
        if (androidx.datastore.core.SingleProcessDataStore.access$handleUpdate(r4, (Y.l) r6, r5) == r0) goto L19;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r6) {
        /*
            r5 = this;
            java.lang.Object r0 = z5.AbstractC2008a.getCOROUTINE_SUSPENDED()
            int r1 = r5.f5639b
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L1b
            if (r1 == r3) goto L17
            if (r1 != r2) goto Lf
            goto L17
        Lf:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L17:
            kotlin.b.throwOnFailure(r6)
            goto L42
        L1b:
            kotlin.b.throwOnFailure(r6)
            java.lang.Object r6 = r5.f5640e
            Y.m r6 = (Y.m) r6
            boolean r1 = r6 instanceof Y.k
            androidx.datastore.core.SingleProcessDataStore r4 = r5.f5641f
            if (r1 == 0) goto L33
            Y.k r6 = (Y.k) r6
            r5.f5639b = r3
            java.lang.Object r6 = androidx.datastore.core.SingleProcessDataStore.access$handleRead(r4, r6, r5)
            if (r6 != r0) goto L42
            goto L41
        L33:
            boolean r1 = r6 instanceof Y.l
            if (r1 == 0) goto L42
            Y.l r6 = (Y.l) r6
            r5.f5639b = r2
            java.lang.Object r6 = androidx.datastore.core.SingleProcessDataStore.access$handleUpdate(r4, r6, r5)
            if (r6 != r0) goto L42
        L41:
            return r0
        L42:
            u5.j r6 = u5.C1711j.f20329a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.SingleProcessDataStore$actor$3.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
