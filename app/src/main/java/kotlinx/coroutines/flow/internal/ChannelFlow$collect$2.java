package kotlinx.coroutines.flow.internal;

import A5.d;
import H5.p;
import R5.I;
import T5.q;
import U5.c;
import kotlin.b;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import u5.C1711j;
import y5.InterfaceC1944c;
import z5.AbstractC2008a;

@d(c = "kotlinx.coroutines.flow.internal.ChannelFlow$collect$2", f = "ChannelFlow.kt", l = {123}, m = "invokeSuspend")
/* loaded from: classes2.dex */
final class ChannelFlow$collect$2 extends SuspendLambda implements p {

    /* renamed from: b, reason: collision with root package name */
    public int f17588b;

    /* renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f17589e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ c f17590f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ ChannelFlow f17591j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChannelFlow$collect$2(c cVar, ChannelFlow channelFlow, InterfaceC1944c interfaceC1944c) {
        super(2, interfaceC1944c);
        this.f17590f = cVar;
        this.f17591j = channelFlow;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final InterfaceC1944c create(Object obj, InterfaceC1944c interfaceC1944c) {
        ChannelFlow$collect$2 channelFlow$collect$2 = new ChannelFlow$collect$2(this.f17590f, this.f17591j, interfaceC1944c);
        channelFlow$collect$2.f17589e = obj;
        return channelFlow$collect$2;
    }

    @Override // H5.p
    public final Object invoke(I i2, InterfaceC1944c interfaceC1944c) {
        return ((ChannelFlow$collect$2) create(i2, interfaceC1944c)).invokeSuspend(C1711j.f20329a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = AbstractC2008a.getCOROUTINE_SUSPENDED();
        int i2 = this.f17588b;
        if (i2 == 0) {
            b.throwOnFailure(obj);
            q produceImpl = this.f17591j.produceImpl((I) this.f17589e);
            this.f17588b = 1;
            if (U5.d.emitAll(this.f17590f, produceImpl, this) == coroutine_suspended) {
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
