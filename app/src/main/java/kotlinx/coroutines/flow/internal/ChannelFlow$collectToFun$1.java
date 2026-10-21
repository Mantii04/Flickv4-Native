package kotlinx.coroutines.flow.internal;

import A5.d;
import H5.p;
import cz.msebera.android.httpclient.impl.client.cache.CacheConfig;
import kotlin.b;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import u5.C1711j;
import y5.InterfaceC1944c;
import z5.AbstractC2008a;

@d(c = "kotlinx.coroutines.flow.internal.ChannelFlow$collectToFun$1", f = "ChannelFlow.kt", l = {CacheConfig.DEFAULT_ASYNCHRONOUS_WORKER_IDLE_LIFETIME_SECS}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class ChannelFlow$collectToFun$1 extends SuspendLambda implements p {

    /* renamed from: b, reason: collision with root package name */
    public int f17592b;

    /* renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f17593e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ ChannelFlow f17594f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChannelFlow$collectToFun$1(ChannelFlow channelFlow, InterfaceC1944c interfaceC1944c) {
        super(2, interfaceC1944c);
        this.f17594f = channelFlow;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final InterfaceC1944c create(Object obj, InterfaceC1944c interfaceC1944c) {
        ChannelFlow$collectToFun$1 channelFlow$collectToFun$1 = new ChannelFlow$collectToFun$1(this.f17594f, interfaceC1944c);
        channelFlow$collectToFun$1.f17593e = obj;
        return channelFlow$collectToFun$1;
    }

    @Override // H5.p
    public final Object invoke(T5.p pVar, InterfaceC1944c interfaceC1944c) {
        return ((ChannelFlow$collectToFun$1) create(pVar, interfaceC1944c)).invokeSuspend(C1711j.f20329a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = AbstractC2008a.getCOROUTINE_SUSPENDED();
        int i2 = this.f17592b;
        if (i2 == 0) {
            b.throwOnFailure(obj);
            T5.p pVar = (T5.p) this.f17593e;
            this.f17592b = 1;
            if (this.f17594f.collectTo(pVar, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            b.throwOnFailure(obj);
        }
        return C1711j.f20329a;
    }
}
