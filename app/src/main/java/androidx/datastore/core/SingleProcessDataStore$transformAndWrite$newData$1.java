package androidx.datastore.core;

import A5.d;
import H5.p;
import R5.I;
import cz.msebera.android.httpclient.HttpStatus;
import kotlin.b;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import u5.C1711j;
import y5.InterfaceC1944c;
import z5.AbstractC2008a;

@d(c = "androidx.datastore.core.SingleProcessDataStore$transformAndWrite$newData$1", f = "SingleProcessDataStore.kt", l = {HttpStatus.SC_PAYMENT_REQUIRED}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class SingleProcessDataStore$transformAndWrite$newData$1 extends SuspendLambda implements p {

    /* renamed from: b, reason: collision with root package name */
    public int f5699b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ p f5700e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f5701f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SingleProcessDataStore$transformAndWrite$newData$1(p pVar, Object obj, InterfaceC1944c interfaceC1944c) {
        super(2, interfaceC1944c);
        this.f5700e = pVar;
        this.f5701f = obj;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final InterfaceC1944c create(Object obj, InterfaceC1944c interfaceC1944c) {
        return new SingleProcessDataStore$transformAndWrite$newData$1(this.f5700e, this.f5701f, interfaceC1944c);
    }

    @Override // H5.p
    public final Object invoke(I i2, InterfaceC1944c interfaceC1944c) {
        return ((SingleProcessDataStore$transformAndWrite$newData$1) create(i2, interfaceC1944c)).invokeSuspend(C1711j.f20329a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = AbstractC2008a.getCOROUTINE_SUSPENDED();
        int i2 = this.f5699b;
        if (i2 != 0) {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            b.throwOnFailure(obj);
            return obj;
        }
        b.throwOnFailure(obj);
        this.f5699b = 1;
        Object invoke = this.f5700e.invoke(this.f5701f, this);
        return invoke == coroutine_suspended ? coroutine_suspended : invoke;
    }
}
